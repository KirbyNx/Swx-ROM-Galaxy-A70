.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.burn_in_prevention"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final DISPLAY_COLOR_MANGED:I = 0x0

.field private static final DISPLAY_COLOR_UNMANGED:I = 0x1

.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final POLICY_ITEM:Ljava/lang/String; = "policy_item"

.field private static final POLICY_LIST:Ljava/lang/String; = "policy_list"

.field private static final POLICY_NAME:Ljava/lang/String; = "burn_in_prevention"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

.field private ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

.field private ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

.field private ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

.field private ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field private ACTION_BURN_IN_PREVENTION_MILLIS:I

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field private ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private final ACTION_PANEL_COLLAPSED:Ljava/lang/String;

.field private final ACTION_PANEL_EXPANDED:Ljava/lang/String;

.field private ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private final ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

.field private ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private AUTO_CURRENT_LIMIT_VERSION:I

.field private BRIGHTNESS_DECREASE_STEP:I

.field private BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

.field private BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

.field private BURN_IN_PREVENTION_SUPPORT_VALUE:I

.field private BURN_IN_STEP:I

.field private BurnInPackageName:Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private DOU_BRIGHTNESS_STANDARD_VALUE:I

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

.field private EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

.field private EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

.field private EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private FrontPackageName:Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_PACKAGENAME:Ljava/lang/String;

.field private GET_SYSTEM_SERVICES_MILLIS:I

.field private HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private LUX_VALUE:Ljava/lang/String;

.field private final MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

.field private final MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

.field private final MSG_BURN_IN_PREVENTION_OFF:I

.field private final MSG_BURN_IN_PREVENTION_ON:I

.field private final MSG_CHECK_MULTIWINDOW:I

.field private final MSG_CONTROL_AUTO_CURRENT_LIMIT:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_GET_ON_PIXEL_RATIO_VALUE:I

.field private final MSG_GET_SYSTEM_SERVICES:I

.field private final MSG_PIXEL_SELF_MOVE_OFF:I

.field private final MSG_PIXEL_SELF_MOVE_ON:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field private final MSG_SET_SNS_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_SET_VIDEO_OPTION_MODE:I

.field private final MSG_WRITE_DATABASE_VIDEO_ENHANCER_LIST:I

.field private ON_PIXEL_RATIO_PATH:Ljava/lang/String;

.field private OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

.field private PIXEL_MOVE_PATTERN:I

.field private PIXEL_SELF_MOVE_MILLIS:I

.field private PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

.field private final POLICY_ITEM_URI:Landroid/net/Uri;

.field private final POLICY_LIST_URI:Landroid/net/Uri;

.field private READING_LUX_PATH:Ljava/lang/String;

.field private READING_SCENARIO_PATH:Ljava/lang/String;

.field private ROUTE_TYPE_REMOTE_DISPLAY:I

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private SCENARIO_VALUE:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

.field private final SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

.field private SNS_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private WRITE_HDR_PATH:Ljava/lang/String;

.field private WRITE_HDR_SUB_PATH:Ljava/lang/String;

.field private WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

.field private WRITE_PANEL_DIA:Ljava/lang/String;

.field private eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private isHDMIConnected:Z

.field private isLockScreenOn:Z

.field private mAclCompensationState:Z

.field private mAclDimmingArray:[Ljava/lang/String;

.field private mAclDimmingFunction:Z

.field private mAclOffEnabled:Z

.field private mAclPreviewState:Z

.field private mAclState:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdaptiveScreenModeEnabled:Z

.field private mAppLaunchStateInDatabase:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoBrightnessMode:Z

.field private mAutoCurrentLimitOffState:Z

.field private mBrightnessAllAppServerState:Z

.field private mBrightnessBrowserAppServerState:Z

.field private mBrowserAppLauncher:Z

.field private mBrowserBrightnessArray:[I

.field private mBrowserBrightnessDecreaseEnabled:Z

.field private mBrowserBrightnessDefault:I

.field private mBrowserBrightnessStringArray:[Ljava/lang/String;

.field private mBrowserScenarioEnabled:Z

.field private mBurnInDisableAppEnabled:Z

.field private mBurnInPreventionACL:Z

.field private mBurnInPreventionEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field private mDMBScenarioEnabled:Z

.field private mDayOfUseSupportAppState:Z

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceProvisioned:Z

.field private mDexModeState:Z

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEyeComfortScaleAppEnabled:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryAppState:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameAppLauncher:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdrEffectEnabled:Z

.field private mHighBrightnessModeEnabled:Z

.field private mHighDynamicRangeEnabled:Z

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsFromCamera:Z

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mLastUserInputDuration:J

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mMediaResourceUsed:Z

.field private mMediaRouterManager:Landroid/media/MediaRouter;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private final mNumberBrowserBrightnessFactor:I

.field private mOverheatControlSupportAppState:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPlatformBrightnessValue:I

.field private mPolicyVersion:I

.field private mPowerSavingModeEnabled:Z

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mQuickPanelState:I

.field private mSNSScenarioEnabled:Z

.field private mSVideoAppLauncher:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mSamsungVideoAppState:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenOffTomeoutAbnormal:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSelfMoveDisabled:Z

.field private mSelfMoveOffAppEnabled:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseEyeComfortSolutionServiceConfig:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mUsePixelSelfMoveConfig:Z

.field private mUseScaleFactorState:Z

.field private mUserActivityStatus:I

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoEnhacnerEnabled:Z

.field private mVideoModeCheck:Z

.field private mVideoScenarioEnabled:Z

.field private mWindowDivideOn:Z

.field private mWorkingCondition:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;

    .line 383
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string v1, "content://com.samsung.android.sm.policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTHORITY_URI:Landroid/net/Uri;

    .line 149
    const-string v2, "policy_list"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_LIST_URI:Landroid/net/Uri;

    .line 152
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "policy_item"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "burn_in_prevention"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 154
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    .line 158
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    .line 159
    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 160
    const/4 v3, 0x2

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    .line 161
    const/4 v4, 0x3

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    .line 162
    const/4 v4, 0x4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    .line 163
    const/4 v5, 0x5

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    .line 164
    const/4 v5, 0x6

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    .line 165
    const/4 v5, 0x7

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    .line 166
    const/16 v5, 0x8

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    .line 167
    const/16 v5, 0x9

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    .line 168
    const/16 v5, 0xa

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    .line 169
    const/16 v5, 0xb

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    .line 170
    const/16 v5, 0xc

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SNS_MODE:I

    .line 171
    const/16 v5, 0xd

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    .line 172
    const/16 v5, 0xe

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_OPTION_MODE:I

    .line 173
    const/16 v5, 0xf

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_SYSTEM_SERVICES:I

    .line 174
    const/16 v6, 0x10

    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CHECK_MULTIWINDOW:I

    .line 175
    const/16 v6, 0x11

    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_ON:I

    .line 176
    const/16 v7, 0x12

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_OFF:I

    .line 177
    const/16 v7, 0x13

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_ON:I

    .line 178
    const/16 v7, 0x14

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_OFF:I

    .line 179
    const/16 v7, 0x15

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

    .line 180
    const/16 v7, 0x16

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

    .line 181
    const/16 v7, 0x17

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_ON_PIXEL_RATIO_VALUE:I

    .line 182
    const/16 v7, 0x18

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CONTROL_AUTO_CURRENT_LIMIT:I

    .line 183
    const/16 v7, 0x19

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_WRITE_DATABASE_VIDEO_ENHANCER_LIST:I

    .line 185
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNumberBrowserBrightnessFactor:I

    .line 187
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    .line 188
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    .line 189
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    .line 190
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 191
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 192
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

    .line 193
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 194
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 195
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 196
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 197
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 198
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 199
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 200
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 201
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 202
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 203
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 204
    const v8, 0x116520

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    .line 205
    const v8, 0xea60

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    .line 206
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    .line 207
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    .line 208
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    .line 209
    const v8, 0x124f80

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    .line 210
    const v8, 0x1d4c0

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    .line 212
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 213
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 214
    const/16 v8, 0x1f40

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 215
    const/16 v8, 0xbb8

    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    .line 216
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    .line 217
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    .line 218
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    .line 219
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 220
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 221
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    .line 222
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 223
    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    .line 226
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 228
    const-string v4, "screen_mode_automatic_setting"

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 229
    const-string v8, "self_move_disable_setting"

    iput-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

    .line 230
    const-string v9, "screen_mode_setting"

    iput-object v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 231
    const-string v9, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    .line 232
    const-string v10, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v10, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    .line 233
    const-string v11, "ACTION_GAME_MODE_STATE_IN"

    iput-object v11, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    .line 234
    const-string v12, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v12, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    .line 235
    const-string v13, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    iput-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

    .line 236
    const-string v14, "com.samsung.systemui.statusbar.EXPANDED"

    iput-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PANEL_EXPANDED:Ljava/lang/String;

    .line 237
    const-string v15, "com.samsung.systemui.statusbar.COLLAPSED"

    iput-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PANEL_COLLAPSED:Ljava/lang/String;

    .line 239
    const-string v6, "/sys/class/mdnie/mdnie/scenario"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    .line 240
    const-string v6, "/sys/class/lcd/panel/lux"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    .line 241
    const-string v6, "/sys/class/lcd/panel/dia"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_PANEL_DIA:Ljava/lang/String;

    .line 242
    const-string v6, "/sys/class/lcd/panel/adaptive_control"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    .line 243
    const-string v6, "/sys/class/mdnie/mdnie/hdr"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    .line 244
    const-string v6, "/sys/class/mdnie/mdnie1/hdr"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_SUB_PATH:Ljava/lang/String;

    .line 245
    const-string v6, "/sys/class/lcd/panel/self_move"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    .line 246
    const-string v6, "/sys/class/sensors/light_sensor/copr_roix"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    .line 247
    const-string v6, "/sys/module/hdr_tunables/parameters/tm_override_enable"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    .line 248
    const-string v6, "com.sec.android.gallery3d"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    .line 250
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 251
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 252
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 253
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    .line 255
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 256
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 257
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 258
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 259
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 260
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 261
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 262
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 263
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 264
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 265
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 266
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 267
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 268
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 269
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    .line 271
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 272
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 273
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    .line 275
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 276
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    .line 277
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 278
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 280
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 281
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 283
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 284
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 285
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 286
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 311
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 312
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 314
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 315
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 316
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    .line 317
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 318
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 319
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 320
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 321
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 322
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 323
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWindowDivideOn:Z

    .line 324
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 325
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    .line 326
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    .line 327
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 328
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 329
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 330
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 331
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 332
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    .line 333
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    .line 334
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    .line 335
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 336
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 337
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 338
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 339
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 340
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 341
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 342
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 343
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 344
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 345
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 346
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 347
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 348
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 349
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    .line 350
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 351
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 352
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 353
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 354
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 355
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 356
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 357
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 358
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    .line 359
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 360
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 361
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 362
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 363
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 364
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 365
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 366
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    .line 367
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    .line 368
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    .line 369
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 370
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 371
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    .line 372
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 373
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    .line 374
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    .line 375
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 376
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 377
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 378
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 379
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    .line 380
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    .line 381
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 655
    new-instance v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 965
    new-instance v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 384
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 386
    new-instance v6, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 387
    invoke-virtual {v6}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 389
    new-instance v1, Landroid/os/HandlerThread;

    const-string v6, "MdnieScenarioControlServiceThread"

    invoke-direct {v1, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 390
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 393
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11100a7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 394
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11100bb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    .line 395
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x111008b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 397
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107003b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 398
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107005b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 399
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107003e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 400
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107004e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 401
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107003d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 402
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070060

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 403
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070061

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 404
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070063

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 405
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070048

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 406
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070047

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 407
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070046

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 408
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070059

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    .line 409
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070050

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 410
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070051

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 411
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107005c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    .line 412
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070037

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 413
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070036

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    .line 414
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070042

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 415
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070058

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 416
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107005f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 417
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107003c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 418
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107004c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 419
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070049

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 420
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107004a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 421
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107004b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 423
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e003f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    .line 424
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e004b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 425
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0012

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 426
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0085

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 427
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0014

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 428
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0015

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 429
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0018

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 430
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0019

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 431
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e001b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 432
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e001c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 433
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0016

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 434
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0017

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 435
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e00ea

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 436
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e001a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 437
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0089

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 438
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e0088

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 440
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 441
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 443
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x107007d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    .line 444
    new-array v1, v3, [I

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_52e
    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_548

    .line 446
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_52e

    .line 449
    .end local v1    # "i":I
    :cond_548
    new-instance v1, Ljava/io/File;

    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_596

    .line 450
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1070066

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingArray:[Ljava/lang/String;

    .line 451
    array-length v1, v1

    if-ne v1, v3, :cond_569

    .line 452
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 453
    :cond_569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAclDimmingFunction "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , array lenght : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingArray:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , AclVersion : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_596
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    .line 456
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 458
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 459
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 461
    .local v6, "time":J
    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 462
    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 463
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 464
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 466
    const-string v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 467
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 468
    const-string v2, "high_contrast"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 469
    const-string v2, "lcd_curtain"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 470
    const-string v2, "color_blind"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 471
    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 472
    const-string v2, "high_brightness_mode_pms_enter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 473
    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 475
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v3, "sec.app.policy.UPDATE.burn_in_prevention"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 491
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 492
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v8, v5

    add-long/2addr v8, v6

    invoke-virtual {v3, v4, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 494
    iget-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v3, :cond_6ab

    .line 495
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 496
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    int-to-long v8, v5

    add-long/2addr v8, v6

    invoke-virtual {v3, v4, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 499
    :cond_6ab
    const-string v3, "sys.mdniecontrolservice.mscon"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v4, :cond_6bb

    .line 502
    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_6bb
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 505
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Landroid/app/ActivityManager;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$1602(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updatePolicyScpm()V

    return-void
.end method

.method static synthetic access$2502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSNSMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getCurrentOpr()V

    return-void
.end method

.method static synthetic access$5400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->controlAclValue()V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoEnhancerListInDataBase()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Landroid/app/KeyguardManager;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private browser_brightness_decrease_function(I)V
    .registers 9
    .param p1, "mMaxStep"    # I

    .line 2458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2459
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_63

    .line 2460
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_63

    .line 2461
    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    if-ne v3, v2, :cond_60

    .line 2462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled Browser Brightness Decrease Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , MAX  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MdnieScenarioControlService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "browser_brightness_on_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2464
    if-ge v2, p1, :cond_5c

    .line 2465
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2466
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 2467
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    goto :goto_5f

    .line 2469
    :cond_5c
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 2471
    :goto_5f
    return-void

    .line 2460
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2475
    .end local v2    # "i":I
    :cond_63
    return-void
.end method

.method private controlAclValue()V
    .registers 5

    .line 2517
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 2518
    if-eqz v0, :cond_84

    .line 2519
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LUX_VALUE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mAclCompensationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_5f

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v1, v0, :cond_5f

    .line 2521
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_5c

    .line 2522
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_59

    .line 2523
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_84

    .line 2525
    :cond_59
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_84

    .line 2528
    :cond_5c
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_84

    .line 2530
    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v1, v0, :cond_84

    .line 2531
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_82

    .line 2532
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_7f

    .line 2533
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_84

    .line 2535
    :cond_7f
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_84

    .line 2538
    :cond_82
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    .line 2545
    :cond_84
    :goto_84
    goto :goto_89

    .line 2543
    :catch_85
    move-exception v0

    .line 2544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2546
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    return-void
.end method

.method private getAppListRegistState(Ljava/lang/String;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2670
    const/4 v0, 0x0

    .line 2671
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 2673
    .local v1, "mAppListRegistStateInDatabase":I
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packagename = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "MSCS_APP_LIST"

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 2674
    if-eqz v0, :cond_2d

    .line 2675
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_33

    move v1, v2

    .line 2677
    :cond_2d
    if-eqz v0, :cond_32

    .line 2678
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_32
    return v1

    .line 2677
    :catchall_33
    move-exception v2

    if-eqz v0, :cond_39

    .line 2678
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2679
    :cond_39
    throw v2
.end method

.method private getAppSettingState(Ljava/lang/String;)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2690
    const/4 v0, 0x0

    .line 2692
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packagename = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "MSCS_APP_LIST"

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 2693
    if-eqz v0, :cond_39

    .line 2694
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2695
    const-string v1, "settingstate"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_41

    .line 2698
    :cond_39
    if-eqz v0, :cond_3e

    .line 2699
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2701
    :cond_3e
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    return v1

    .line 2698
    :catchall_41
    move-exception v1

    if-eqz v0, :cond_47

    .line 2699
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2700
    :cond_47
    throw v1
.end method

.method private getCurrentOpr()V
    .registers 10

    .line 2478
    const/4 v0, 0x0

    .line 2479
    .local v0, "currentOpr":I
    const/4 v1, 0x0

    .line 2480
    .local v1, "rgbOpr":I
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, ","

    const-string v4, "MdnieScenarioControlService"

    if-eqz v2, :cond_5b

    .line 2481
    const/4 v2, 0x0

    .line 2483
    .local v2, "raw":Ljava/lang/String;
    :try_start_14
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2484
    if-eqz v2, :cond_55

    .line 2485
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_56

    .line 2487
    .local v5, "rawDatas":[Ljava/lang/String;
    :try_start_25
    array-length v6, v5

    const/16 v7, 0xc

    if-ne v6, v7, :cond_3f

    .line 2488
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_2b
    const/4 v7, 0x6

    if-ge v6, v7, :cond_38

    .line 2489
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 2488
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 2491
    .end local v6    # "i":I
    :cond_38
    if-lez v1, :cond_3e

    .line 2492
    div-int/lit8 v6, v1, 0x3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_3c} :catch_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_56

    move v0, v6

    goto :goto_3f

    .line 2494
    :cond_3e
    const/4 v0, 0x0

    .line 2498
    :cond_3f
    :goto_3f
    goto :goto_55

    .line 2496
    :catch_40
    move-exception v6

    .line 2497
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_55} :catch_56

    .line 2502
    .end local v5    # "rawDatas":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_55
    :goto_55
    goto :goto_5a

    .line 2500
    :catch_56
    move-exception v5

    .line 2501
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2503
    .end local v2    # "raw":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5a
    goto :goto_5c

    .line 2505
    :cond_5b
    const/4 v0, -0x1

    .line 2506
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentOpr : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mQuickPanelState : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_a5

    .line 2508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 2509
    :cond_a5
    return-void
.end method

.method private getPolicyVersionFromScpm()Ljava/lang/String;
    .registers 10

    .line 2549
    const/4 v0, 0x0

    .line 2550
    .local v0, "policyVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2552
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v2, "policyVersion"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 2553
    .local v5, "POLICY_LIST_PROJECTION":[Ljava/lang/String;
    const-string v2, "policyName=?"

    .line 2554
    .local v2, "POLICY_LIST_SELECTION":Ljava/lang/String;
    const-string v3, "burn_in_prevention"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 2555
    .local v7, "POLICY_LIST_SELECTION_ARGS":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_LIST_URI:Landroid/net/Uri;

    const-string v6, "policyName=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 2556
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_34

    .line 2557
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2558
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_41
    .catchall {:try_start_2 .. :try_end_33} :catchall_3a

    move-object v0, v3

    .line 2564
    .end local v2    # "POLICY_LIST_SELECTION":Ljava/lang/String;
    .end local v5    # "POLICY_LIST_PROJECTION":[Ljava/lang/String;
    .end local v7    # "POLICY_LIST_SELECTION_ARGS":[Ljava/lang/String;
    :cond_34
    if-eqz v1, :cond_45

    .line 2565
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_45

    .line 2564
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_40

    .line 2565
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2567
    :cond_40
    throw v2

    .line 2562
    :catch_41
    move-exception v2

    .line 2564
    if-eqz v1, :cond_45

    .line 2565
    goto :goto_36

    .line 2568
    :cond_45
    :goto_45
    return-object v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2134
    const/4 v0, 0x0

    .line 2135
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x80

    .line 2136
    .local v1, "MAX_BUFFER_SIZE":I
    const/16 v2, 0x80

    new-array v3, v2, [B

    .line 2137
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 2138
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v5, "myfile":Ljava/io/File;
    const/4 v6, 0x0

    .line 2141
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f
    const/4 v8, 0x0

    if-ge v7, v2, :cond_17

    .line 2142
    aput-byte v8, v3, v7

    .line 2141
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 2144
    .end local v7    # "i":I
    :cond_17
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2146
    const-string v2, "File Close error"

    const-string v7, "MdnieScenarioControlService"

    if-eqz p1, :cond_2e

    .line 2147
    :try_start_23
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v9

    goto :goto_2e

    .line 2160
    :catchall_2a
    move-exception v8

    goto :goto_7f

    .line 2156
    :catch_2c
    move-exception v8

    goto :goto_45

    .line 2149
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_8a

    .line 2150
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v6, v9

    .line 2151
    if-lez v6, :cond_41

    .line 2152
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v6, -0x1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v8, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v9

    .line 2154
    :cond_41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_2c
    .catchall {:try_start_23 .. :try_end_44} :catchall_2a

    goto :goto_8a

    .line 2157
    .local v8, "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " , in : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " , value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_2a

    .line 2160
    .end local v8    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_90

    .line 2162
    :try_start_76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    .line 2165
    :goto_79
    goto :goto_90

    .line 2163
    :catch_7a
    move-exception v8

    .line 2164
    .local v8, "ee":Ljava/lang/Exception;
    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "ee":Ljava/lang/Exception;
    goto :goto_79

    .line 2160
    :goto_7f
    if-eqz v0, :cond_89

    .line 2162
    :try_start_81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    .line 2165
    goto :goto_89

    .line 2163
    :catch_85
    move-exception v9

    .line 2164
    .local v9, "ee":Ljava/lang/Exception;
    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    .end local v9    # "ee":Ljava/lang/Exception;
    :cond_89
    :goto_89
    throw v8

    .line 2160
    :cond_8a
    :goto_8a
    if-eqz v0, :cond_90

    .line 2162
    :try_start_8c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_7a

    goto :goto_79

    .line 2168
    :cond_90
    :goto_90
    return-object v4

    .line 2170
    :cond_91
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSystemServices()V
    .registers 8

    .line 2305
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "mDNIe"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMdnieManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaRouterManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSemDisplaySolutionManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_c1

    goto :goto_cd

    .line 2334
    :cond_c1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->registerProcessObserver()V

    .line 2335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 2336
    const-string v0, "Success to register all of the services system."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 2329
    :cond_cd
    :goto_cd
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2330
    .local v2, "time":J
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2331
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 2332
    const-string v0, "Failure to register all of the services system."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    .end local v2    # "time":J
    nop

    .line 2339
    :goto_e7
    return-void
.end method

.method private getting_Hdmi_Connected()Z
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_28

    .line 824
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    .line 828
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_3a

    .line 829
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 830
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 835
    .end local v0    # "displays":[Landroid/view/Display;
    .end local v1    # "i":I
    :cond_3a
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    return v0
.end method

.method private getting_autocurrentlimit_state()Z
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_a

    .line 840
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 842
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    return v0
.end method

.method private getting_knox_mode_enabled()Z
    .registers 3

    .line 818
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 819
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method private getting_media_resource_info()Z
    .registers 5

    .line 782
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 783
    invoke-virtual {v2, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 784
    .local v0, "mediainfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_12} :catch_17

    if-lez v2, :cond_16

    .line 785
    const/4 v1, 0x1

    return v1

    .line 787
    :cond_16
    return v1

    .line 788
    .end local v0    # "mediainfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :catch_17
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MdnieScenarioControlService"

    const-string v3, "failed to getMediaResourceInfo"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 791
    return v1
.end method

.method private getting_platform_brightness_value()I
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 798
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    .line 799
    return v1
.end method

.method private getting_setting_value()Z
    .registers 8

    .line 803
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v0

    .line 804
    .local v0, "isKnoxMode":Z
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 806
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "MdnieScenarioControlService"

    const-string v3, "hdr_effect"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_23

    .line 807
    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v4, v5

    :goto_1b
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 808
    const-string v3, "Use Current User"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 811
    :cond_23
    invoke-static {v1, v3, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v4, v5

    :goto_2b
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 812
    const-string v3, "Use Owner User"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_32
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    return v2
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2662
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2663
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settingstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2665
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    .line 2666
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MSCS_APP_LIST"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2667
    :cond_23
    return-void
.end method

.method private mdnie_reset()V
    .registers 2

    .line 2074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 2075
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2076
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 2077
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 2078
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 2079
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 2080
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2081
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2082
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2083
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2084
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2085
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2086
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2087
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 2088
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2089
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .registers 22
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 989
    .local v2, "isUI":Z
    const/4 v3, 0x0

    .line 990
    .local v3, "isDmb":Z
    const/4 v4, 0x0

    .line 991
    .local v4, "isSns":Z
    const/4 v5, 0x0

    .line 992
    .local v5, "isEmail":Z
    const/4 v6, 0x0

    .line 993
    .local v6, "isVideo":Z
    const/4 v7, 0x0

    .line 994
    .local v7, "isEbook":Z
    const/4 v8, 0x0

    .line 995
    .local v8, "isGallery":Z
    const/4 v9, 0x0

    .line 996
    .local v9, "isSVideo":Z
    const/4 v10, 0x0

    .line 997
    .local v10, "isCamera":Z
    const/4 v11, 0x0

    .line 998
    .local v11, "isBrowser":Z
    const/4 v12, 0x0

    .line 1000
    .local v12, "isSVideoOption":Z
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 1001
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    .line 1002
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1004
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v14}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_22

    .line 1005
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    goto :goto_24

    .line 1007
    :cond_22
    iput-boolean v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 1010
    :goto_24
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_25
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_38

    .line 1011
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 1012
    const/4 v2, 0x1

    .line 1013
    goto :goto_38

    .line 1010
    :cond_34
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x1

    goto :goto_25

    .line 1016
    .end local v13    # "i":I
    :cond_38
    :goto_38
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_39
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_4b

    .line 1017
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 1018
    const/4 v11, 0x1

    .line 1019
    goto :goto_4b

    .line 1016
    :cond_48
    add-int/lit8 v13, v13, 0x1

    goto :goto_39

    .line 1022
    .end local v13    # "i":I
    :cond_4b
    :goto_4b
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4c
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_5e

    .line 1023
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 1024
    const/4 v11, 0x1

    .line 1025
    goto :goto_5e

    .line 1022
    :cond_5b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4c

    .line 1028
    .end local v13    # "i":I
    :cond_5e
    :goto_5e
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5f
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_71

    .line 1029
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 1030
    const/4 v8, 0x1

    .line 1031
    goto :goto_71

    .line 1028
    :cond_6e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5f

    .line 1034
    .end local v13    # "j":I
    :cond_71
    :goto_71
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_72
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_84

    .line 1035
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_81

    .line 1036
    const/4 v10, 0x1

    .line 1037
    goto :goto_84

    .line 1034
    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_72

    .line 1040
    .end local v13    # "i":I
    :cond_84
    :goto_84
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_85
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_97

    .line 1041
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_94

    .line 1042
    const/4 v9, 0x1

    .line 1043
    goto :goto_97

    .line 1040
    :cond_94
    add-int/lit8 v13, v13, 0x1

    goto :goto_85

    .line 1046
    .end local v13    # "i":I
    :cond_97
    :goto_97
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_98
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_aa

    .line 1047
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a7

    .line 1048
    const/4 v12, 0x1

    .line 1049
    goto :goto_aa

    .line 1046
    :cond_a7
    add-int/lit8 v13, v13, 0x1

    goto :goto_98

    .line 1052
    .end local v13    # "i":I
    :cond_aa
    :goto_aa
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_ab
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_bd

    .line 1053
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 1054
    const/4 v6, 0x1

    .line 1055
    goto :goto_bd

    .line 1052
    :cond_ba
    add-int/lit8 v13, v13, 0x1

    goto :goto_ab

    .line 1058
    .end local v13    # "i":I
    :cond_bd
    :goto_bd
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_be
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_d0

    .line 1059
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 1060
    const/4 v5, 0x1

    .line 1061
    goto :goto_d0

    .line 1058
    :cond_cd
    add-int/lit8 v13, v13, 0x1

    goto :goto_be

    .line 1064
    .end local v13    # "i":I
    :cond_d0
    :goto_d0
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_d1
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_e3

    .line 1065
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e0

    .line 1066
    const/4 v7, 0x1

    .line 1067
    goto :goto_e3

    .line 1064
    :cond_e0
    add-int/lit8 v13, v13, 0x1

    goto :goto_d1

    .line 1070
    .end local v13    # "i":I
    :cond_e3
    :goto_e3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_e4
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_f6

    .line 1071
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 1072
    const/4 v3, 0x1

    .line 1073
    goto :goto_f6

    .line 1070
    :cond_f3
    add-int/lit8 v13, v13, 0x1

    goto :goto_e4

    .line 1076
    .end local v13    # "i":I
    :cond_f6
    :goto_f6
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f7
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_109

    .line 1077
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_106

    .line 1078
    const/4 v4, 0x1

    .line 1079
    goto :goto_109

    .line 1076
    :cond_106
    add-int/lit8 v13, v13, 0x1

    goto :goto_f7

    .line 1083
    .end local v13    # "i":I
    :cond_109
    :goto_109
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_10a
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_12e

    .line 1084
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_12b

    .line 1085
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v14, :cond_12b

    .line 1086
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 1087
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1088
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 1089
    goto :goto_12e

    .line 1083
    :cond_12b
    add-int/lit8 v13, v13, 0x1

    goto :goto_10a

    .line 1094
    .end local v13    # "i":I
    :cond_12e
    :goto_12e
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_12f
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_143

    .line 1095
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_140

    .line 1096
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    .line 1097
    goto :goto_143

    .line 1094
    :cond_140
    add-int/lit8 v13, v13, 0x1

    goto :goto_12f

    .line 1101
    .end local v13    # "i":I
    :cond_143
    :goto_143
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_144
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_161

    .line 1102
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_15e

    .line 1103
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v14, :cond_161

    .line 1104
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1105
    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct {v0, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_161

    .line 1101
    :cond_15e
    add-int/lit8 v13, v13, 0x1

    goto :goto_144

    .line 1111
    .end local v13    # "i":I
    :cond_161
    :goto_161
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_162
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_180

    .line 1112
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17d

    .line 1113
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v14, :cond_180

    .line 1114
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1115
    const v14, 0x3f866666    # 1.05f

    invoke-direct {v0, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_180

    .line 1111
    :cond_17d
    add-int/lit8 v13, v13, 0x1

    goto :goto_162

    .line 1121
    .end local v13    # "i":I
    :cond_180
    :goto_180
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_181
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_19f

    .line 1122
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_19c

    .line 1123
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v14, :cond_19f

    .line 1124
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1125
    const v14, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_19f

    .line 1121
    :cond_19c
    add-int/lit8 v13, v13, 0x1

    goto :goto_181

    .line 1131
    .end local v13    # "i":I
    :cond_19f
    :goto_19f
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1a0
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_1be

    .line 1132
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1bb

    .line 1133
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v14, :cond_1be

    .line 1134
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 1135
    const v14, 0x3f933333    # 1.15f

    invoke-direct {v0, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_1be

    .line 1131
    :cond_1bb
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a0

    .line 1141
    .end local v13    # "i":I
    :cond_1be
    :goto_1be
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    if-nez v13, :cond_1cb

    .line 1142
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v13, :cond_1cb

    .line 1143
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    .line 1147
    :cond_1cb
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v13, :cond_1f6

    if-eqz v11, :cond_1f6

    .line 1148
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    if-nez v13, :cond_1ee

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1150
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1151
    iget-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1152
    iget-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move/from16 v16, v2

    move/from16 v17, v8

    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1148
    :cond_1ee
    move/from16 v16, v2

    move/from16 v17, v8

    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1154
    :cond_1f6
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v13, :cond_22a

    if-eqz v8, :cond_22a

    .line 1155
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    if-nez v13, :cond_222

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1157
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1159
    .local v13, "time":J
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1160
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    move/from16 v16, v2

    .end local v2    # "isUI":Z
    .local v16, "isUI":Z
    int-to-long v1, v1

    add-long/2addr v1, v13

    move/from16 v17, v8

    const/4 v8, 0x4

    .end local v8    # "isGallery":Z
    .local v17, "isGallery":Z
    invoke-virtual {v15, v8, v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1161
    .end local v13    # "time":J
    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1155
    .end local v16    # "isUI":Z
    .end local v17    # "isGallery":Z
    .restart local v2    # "isUI":Z
    .restart local v8    # "isGallery":Z
    :cond_222
    move/from16 v16, v2

    move/from16 v17, v8

    .end local v2    # "isUI":Z
    .end local v8    # "isGallery":Z
    .restart local v16    # "isUI":Z
    .restart local v17    # "isGallery":Z
    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1154
    .end local v16    # "isUI":Z
    .end local v17    # "isGallery":Z
    .restart local v2    # "isUI":Z
    .restart local v8    # "isGallery":Z
    :cond_22a
    move/from16 v16, v2

    move/from16 v17, v8

    .line 1163
    .end local v2    # "isUI":Z
    .end local v8    # "isGallery":Z
    .restart local v16    # "isUI":Z
    .restart local v17    # "isGallery":Z
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_259

    if-eqz v10, :cond_259

    .line 1164
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    if-nez v1, :cond_255

    .line 1165
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1166
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1168
    .local v1, "time":J
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v13, 0x5

    invoke-virtual {v8, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1169
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    int-to-long v14, v14

    add-long/2addr v14, v1

    invoke-virtual {v8, v13, v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1170
    .end local v1    # "time":J
    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1164
    :cond_255
    move v15, v9

    move v9, v3

    goto/16 :goto_3c2

    .line 1171
    :cond_259
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    const-string v2, "MdnieScenarioControlService"

    if-nez v1, :cond_2b2

    if-eqz v9, :cond_2b2

    .line 1172
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    if-nez v1, :cond_2ae

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1174
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1176
    .restart local v13    # "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in video Real Multi Window State : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v1, :cond_29b

    .line 1178
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1179
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    move v15, v9

    .end local v9    # "isSVideo":Z
    .local v15, "isSVideo":Z
    int-to-long v8, v8

    add-long/2addr v8, v13

    invoke-virtual {v1, v2, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_2ab

    .line 1182
    .end local v15    # "isSVideo":Z
    .restart local v9    # "isSVideo":Z
    :cond_29b
    move v15, v9

    .end local v9    # "isSVideo":Z
    .restart local v15    # "isSVideo":Z
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1183
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v8, v8

    add-long/2addr v8, v13

    invoke-virtual {v1, v2, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1185
    .end local v13    # "time":J
    :goto_2ab
    move v9, v3

    goto/16 :goto_3c2

    .line 1172
    .end local v15    # "isSVideo":Z
    .restart local v9    # "isSVideo":Z
    :cond_2ae
    move v15, v9

    .end local v9    # "isSVideo":Z
    .restart local v15    # "isSVideo":Z
    move v9, v3

    goto/16 :goto_3c2

    .line 1171
    .end local v15    # "isSVideo":Z
    .restart local v9    # "isSVideo":Z
    :cond_2b2
    move v15, v9

    .line 1186
    .end local v9    # "isSVideo":Z
    .restart local v15    # "isSVideo":Z
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_2d5

    if-eqz v12, :cond_2d5

    .line 1187
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    if-nez v1, :cond_2d2

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1189
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1190
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1191
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto/16 :goto_3c2

    .line 1187
    :cond_2d2
    move v9, v3

    goto/16 :goto_3c2

    .line 1193
    :cond_2d5
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_2fe

    if-eqz v6, :cond_2fe

    .line 1194
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    if-nez v1, :cond_2fb

    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1196
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1198
    .restart local v1    # "time":J
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1199
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v13, v13

    add-long/2addr v13, v1

    invoke-virtual {v8, v9, v13, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1200
    .end local v1    # "time":J
    move v9, v3

    goto/16 :goto_3c2

    .line 1194
    :cond_2fb
    move v9, v3

    goto/16 :goto_3c2

    .line 1201
    :cond_2fe
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_320

    if-eqz v5, :cond_320

    .line 1202
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    if-nez v1, :cond_31d

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1204
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1205
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1206
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto/16 :goto_3c2

    .line 1202
    :cond_31d
    move v9, v3

    goto/16 :goto_3c2

    .line 1208
    :cond_320
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_342

    if-eqz v7, :cond_342

    .line 1209
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_33f

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1211
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1212
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1213
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto/16 :goto_3c2

    .line 1209
    :cond_33f
    move v9, v3

    goto/16 :goto_3c2

    .line 1215
    :cond_342
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_363

    if-eqz v3, :cond_363

    .line 1216
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    if-nez v1, :cond_361

    .line 1217
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1218
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1219
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1220
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto/16 :goto_3c2

    .line 1216
    :cond_361
    move v9, v3

    goto :goto_3c2

    .line 1222
    :cond_363
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_383

    if-eqz v4, :cond_383

    .line 1223
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    if-nez v1, :cond_381

    .line 1224
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1225
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 1226
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1227
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto :goto_3c2

    .line 1223
    :cond_381
    move v9, v3

    goto :goto_3c2

    .line 1229
    :cond_383
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    const/4 v8, 0x2

    if-nez v1, :cond_3a7

    if-eqz v16, :cond_3a7

    .line 1230
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    if-nez v1, :cond_3a5

    .line 1231
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1232
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 1233
    const-string v1, "setUIMode from UI function(2)"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1235
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    move v9, v3

    goto :goto_3c2

    .line 1230
    :cond_3a5
    move v9, v3

    goto :goto_3c2

    .line 1238
    :cond_3a7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1239
    .restart local v13    # "time":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 1240
    const-string v1, "setUIMode from UI function(3)"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1242
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move v9, v3

    .end local v3    # "isDmb":Z
    .local v9, "isDmb":Z
    int-to-long v2, v2

    add-long/2addr v2, v13

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1244
    .end local v13    # "time":J
    :goto_3c2
    return-void
.end method

.method private pixel_self_move(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pixel_self_move enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mNegativeColorEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSelfMoveDisabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSelfMoveOffAppEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2344
    .local v0, "time":J
    if-eqz p1, :cond_75

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_75

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-nez v2, :cond_75

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    if-nez v2, :cond_75

    .line 2345
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2346
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 2347
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    .line 2348
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_64

    .line 2349
    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_79

    .line 2350
    :cond_64
    const/4 v5, 0x3

    if-ne v2, v3, :cond_6a

    .line 2351
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_79

    .line 2352
    :cond_6a
    const/4 v3, 0x4

    if-ne v2, v5, :cond_70

    .line 2353
    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_79

    .line 2354
    :cond_70
    if-ne v2, v3, :cond_79

    .line 2355
    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_79

    .line 2358
    :cond_75
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    .line 2360
    :cond_79
    :goto_79
    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 3

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 761
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 762
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v0, :cond_1b

    .line 763
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 764
    :cond_1b
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_33

    .line 765
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 766
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 768
    :cond_33
    if-nez v0, :cond_3a

    .line 769
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 771
    :cond_3a
    :goto_3a
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_52

    .line 772
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 773
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_59

    .line 775
    :cond_52
    if-nez v0, :cond_59

    .line 776
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 778
    :cond_59
    :goto_59
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 4

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 753
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 754
    if-eqz v1, :cond_11

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v2, :cond_11

    move v0, v1

    :cond_11
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 755
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 756
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    .line 757
    :cond_1a
    return-void
.end method

.method private registerProcessObserver()V
    .registers 4

    .line 2623
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2624
    .local v0, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2632
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_12

    .line 2633
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 2634
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 2637
    .end local v0    # "mIActivityManager":Landroid/app/IActivityManager;
    goto :goto_1e

    .line 2635
    :catch_16
    move-exception v0

    .line 2636
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MdnieScenarioControlService"

    const-string v2, "failed to registerProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private scenario_enable_reset()V
    .registers 2

    .line 2092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2093
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 2094
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 2095
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2096
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2097
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2098
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2099
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2100
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2101
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2102
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 2103
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 2104
    return-void
.end method

.method private setAclMode(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 2174
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_22

    .line 2175
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 2176
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    goto :goto_20

    .line 2177
    :cond_d
    if-eqz v1, :cond_20

    .line 2178
    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 2179
    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    goto :goto_1e

    .line 2181
    :cond_18
    const/4 v1, 0x2

    if-ne p2, v1, :cond_20

    .line 2182
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_20

    .line 2180
    :cond_1e
    :goto_1e
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    .line 2185
    :cond_20
    :goto_20
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    .line 2187
    :cond_22
    return-void
.end method

.method private setAclModePreview(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 2190
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    .line 2191
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    if-nez v1, :cond_c

    .line 2192
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    goto :goto_11

    .line 2193
    :cond_c
    if-eqz v1, :cond_11

    .line 2194
    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 2196
    :cond_11
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    .line 2198
    :cond_14
    return-void
.end method

.method private setAppSettingState(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settingState"    # I

    .line 2684
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2685
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settingstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2686
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "MSCS_APP_LIST"

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    return-void
.end method

.method private setAudioHDR(Z)V
    .registers 4
    .param p1, "audioHDR"    # Z

    .line 2289
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 2290
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 2292
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_17

    .line 2293
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semSetAudioHDR(Z)V

    .line 2294
    :cond_17
    return-void
.end method

.method private setBrightnessScaleFactor(I)V
    .registers 9
    .param p1, "scaleValue"    # I

    .line 2226
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_130

    .line 2227
    const-string v1, "brightness_scale_off"

    const-string v2, ")"

    const-string v3, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    const-string v4, "MdnieScenarioControlService"

    if-nez p1, :cond_2b

    .line 2228
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2229
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 2231
    :cond_2b
    const/4 v5, 0x1

    if-ne p1, v5, :cond_50

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_50

    .line 2232
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2233
    const-string v1, "brightness_scale_on_1"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 2235
    :cond_50
    const/4 v0, 0x2

    if-ne p1, v0, :cond_77

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_77

    .line 2236
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2237
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "brightness_scale_on_2"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 2239
    :cond_77
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9e

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_9e

    .line 2240
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2241
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "brightness_scale_on_3"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 2243
    :cond_9e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_c4

    .line 2244
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2245
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "brightness_scale_on_4"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2247
    :cond_c4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_10b

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_10b

    .line 2248
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2249
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-ne v0, v5, :cond_ee

    .line 2250
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2254
    :cond_ee
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "brightness_scale_on_5"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2257
    :cond_10b
    const/4 v0, 0x6

    if-ne p1, v0, :cond_130

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_130

    .line 2258
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2259
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "brightness_scale_on_6"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_130
    :goto_130
    return-void
.end method

.method private setBrowserMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "browserPackageName"    # Ljava/lang/String;

    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1423
    goto :goto_d

    .line 1421
    :catch_9
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1425
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1427
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_14
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2b

    .line 1428
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1429
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1430
    goto :goto_2b

    .line 1432
    :cond_26
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1436
    .end local v0    # "j":I
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1438
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "BROWSER_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_ba

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_88

    .line 1441
    :cond_7c
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_85

    .line 1442
    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_88

    .line 1444
    :cond_85
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1447
    :cond_88
    :goto_88
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1448
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v0, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_a4

    .line 1449
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_a7

    .line 1451
    :cond_a4
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1453
    :goto_a7
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1454
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1455
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1456
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1457
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1458
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1459
    const-string v0, "setBrowserMode from Browser function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_ba
    return-void
.end method

.method private setCameraMode()V
    .registers 5

    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1503
    goto :goto_d

    .line 1501
    :catch_9
    move-exception v0

    .line 1502
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1505
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1507
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1511
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    const/4 v2, 0x0

    if-nez v1, :cond_95

    .line 1512
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_97

    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "CAMERA_APP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v1, :cond_97

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAclOffEnabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclPreviewState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclCompensationState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v1, :cond_78

    .line 1515
    :cond_6c
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v1, :cond_75

    .line 1516
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_78

    .line 1518
    :cond_75
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1521
    :cond_78
    :goto_78
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1522
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1523
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1524
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1525
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1526
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1527
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1528
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1529
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1530
    const-string v0, "setCameraMode from Camera function"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 1534
    :cond_95
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1536
    :cond_97
    :goto_97
    return-void
.end method

.method private setDMBMode(Ljava/lang/String;)V
    .registers 18
    .param p1, "dmbPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1886
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 1890
    goto :goto_f

    .line 1888
    :catch_b
    move-exception v0

    .line 1889
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1892
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v0, 0x0

    .line 1893
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v2, :cond_1a

    .line 1894
    iget v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1896
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v2

    .line 1897
    .local v2, "mHdmiState":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v3

    .line 1898
    .local v3, "hdr_effect_enable":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v4

    .line 1899
    .local v4, "isKnoxMode":Z
    const/4 v5, 0x1

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v7

    if-ne v7, v5, :cond_37

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v7

    if-eqz v7, :cond_37

    move v7, v5

    goto :goto_38

    :cond_37
    const/4 v7, 0x0

    .line 1901
    .local v7, "mMirroringState":Z
    :goto_38
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v8

    iput-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1903
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hdr_effect_enable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , app_setting_value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v5, :cond_5b

    move v9, v5

    goto :goto_5c

    :cond_5b
    const/4 v9, 0x0

    :goto_5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MdnieScenarioControlService"

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const-string v8, "setVideoMode from DMB function"

    const-string v10, " mAclPreviewState : "

    const-string v11, "VIDEO_APP"

    const-string v12, "1"

    const-string v14, " mHighDynamicRangeEnabled : "

    const-string v15, " mAclCompensationState : "

    const-string v13, "mAclOffEnabled : "

    if-eqz v3, :cond_1b5

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_1b5

    .line 1908
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v6, :cond_12d

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v6, :cond_12d

    .line 1909
    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v6, :cond_233

    const-string v8, "15"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v8, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_233

    .line 1910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v6, :cond_d0

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v6, :cond_cd

    goto :goto_d0

    .line 1915
    :cond_cd
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_d8

    .line 1912
    :cond_d0
    :goto_d0
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v6, :cond_d8

    .line 1913
    const/4 v6, 0x0

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    .line 1917
    :cond_d8
    :goto_d8
    const/16 v6, 0xf

    invoke-direct {v1, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHdmiState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , mDexModeState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , mMirroringState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    if-nez v2, :cond_112

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez v6, :cond_112

    if-eqz v7, :cond_10c

    goto :goto_112

    .line 1922
    :cond_10c
    const/4 v6, 0x2

    invoke-direct {v1, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v6, 0x0

    goto :goto_116

    .line 1920
    :cond_112
    :goto_112
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1924
    :goto_116
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1925
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1926
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1927
    iput-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1928
    iput-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1929
    iput-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1930
    iput-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1931
    const-string v5, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_233

    .line 1933
    :cond_12d
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v6, :cond_135

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v6, :cond_233

    .line 1934
    :cond_135
    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v6, :cond_233

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_233

    .line 1935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v6, :cond_182

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v6, :cond_180

    goto :goto_182

    :cond_180
    const/4 v10, 0x0

    goto :goto_19a

    .line 1937
    :cond_182
    :goto_182
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v6, :cond_192

    .line 1938
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v6, :cond_190

    .line 1939
    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-direct {v1, v10, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_19a

    .line 1938
    :cond_190
    const/4 v10, 0x0

    goto :goto_19a

    .line 1941
    :cond_192
    const/4 v10, 0x0

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v6, :cond_19a

    .line 1942
    invoke-direct {v1, v10, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1945
    :cond_19a
    :goto_19a
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1946
    invoke-direct {v1, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1947
    invoke-direct {v1, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1948
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1949
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1950
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1951
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1952
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1953
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1954
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_233

    .line 1958
    :cond_1b5
    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v6, :cond_233

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-object v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_233

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_233

    .line 1959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v6, :cond_202

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v6, :cond_200

    goto :goto_202

    :cond_200
    const/4 v10, 0x0

    goto :goto_21a

    .line 1961
    :cond_202
    :goto_202
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v6, :cond_212

    .line 1962
    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v6, :cond_210

    .line 1963
    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-direct {v1, v10, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_21a

    .line 1962
    :cond_210
    const/4 v10, 0x0

    goto :goto_21a

    .line 1965
    :cond_212
    const/4 v10, 0x0

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v6, :cond_21a

    .line 1966
    invoke-direct {v1, v10, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1969
    :cond_21a
    :goto_21a
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1970
    invoke-direct {v1, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1971
    invoke-direct {v1, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1972
    invoke-direct {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1973
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1974
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1975
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1976
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1977
    iput-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1978
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_233
    :goto_233
    return-void
.end method

.method private setEbookMode()V
    .registers 4

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1822
    goto :goto_d

    .line 1820
    :catch_9
    move-exception v0

    .line 1821
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1824
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1826
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1828
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "eBOOK_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_8f

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_72

    .line 1831
    :cond_65
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_6e

    .line 1832
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_72

    .line 1834
    :cond_6e
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1837
    :cond_72
    :goto_72
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1838
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1839
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1840
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1841
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1842
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1843
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1844
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1845
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1846
    const-string v0, "setEbookMode from Ebook function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_8f
    return-void
.end method

.method private setEmailMode()V
    .registers 4

    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1856
    goto :goto_d

    .line 1854
    :catch_9
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1858
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1860
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1862
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "EMAIL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_8f

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_72

    .line 1865
    :cond_65
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_6e

    .line 1866
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_72

    .line 1868
    :cond_6e
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1871
    :cond_72
    :goto_72
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1872
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1873
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1874
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1875
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1876
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1877
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1878
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1879
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1880
    const-string v0, "setEmailMode from Email function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_8f
    return-void
.end method

.method private setEyeComfortScaleFactor(F)V
    .registers 3
    .param p1, "scaleValue"    # F

    .line 2266
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_7

    .line 2267
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    .line 2269
    :cond_7
    return-void
.end method

.method private setGalleryMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "galleryPackageName"    # Ljava/lang/String;

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1469
    goto :goto_d

    .line 1467
    :catch_9
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    const/4 v0, 0x0

    .line 1473
    .local v0, "acl_off_mode":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 1474
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1475
    const/4 v0, 0x1

    .line 1473
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1479
    .end local v1    # "j":I
    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1481
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_62

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GALLERY_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v1, :cond_62

    .line 1482
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 1483
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    .line 1484
    :cond_44
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1485
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1486
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1487
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1488
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1489
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1490
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1491
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1492
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1493
    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setGalleryMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_62
    return-void
.end method

.method private setGameMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 2030
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 2034
    goto :goto_d

    .line 2032
    :catch_9
    move-exception v0

    .line 2033
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2036
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 2038
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OUT"

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 2039
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_LOW_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    .line 2040
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto/16 :goto_b2

    .line 2041
    :cond_3f
    const-string v0, "MID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2042
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_MID_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    .line 2043
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_b2

    .line 2044
    :cond_67
    const-string v0, "HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2045
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_HIGH_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    .line 2046
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_b2

    .line 2047
    :cond_8f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2048
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "UI_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    .line 2049
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 2051
    :cond_b2
    :goto_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAclOffEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclPreviewState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclCompensationState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_e6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_f3

    .line 2053
    :cond_e6
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_ef

    .line 2054
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_f3

    .line 2056
    :cond_ef
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2059
    :cond_f3
    :goto_f3
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 2060
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 2061
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 2062
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 2063
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 2064
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 2065
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 2066
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 2067
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 2068
    const-string v0, "setUIMode from Game function"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 2070
    :cond_112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from Game function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :goto_12b
    return-void
.end method

.method private setMdnieScenarioMode(I)V
    .registers 9
    .param p1, "scenarioMode"    # I

    .line 2201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2202
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v2, :cond_63

    .line 2203
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 2204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling MdnieManager API(setContentMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/16 v2, 0x8

    const/16 v4, 0x15

    if-ne p1, v2, :cond_43

    .line 2206
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 2207
    const-string v2, "Start Browser Brightness Decrease Timer"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2209
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long v5, v3

    add-long/2addr v5, v0

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_63

    .line 2212
    :cond_43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 2213
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-eqz v2, :cond_5c

    .line 2214
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2215
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2216
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_63

    .line 2218
    :cond_5c
    if-nez v2, :cond_63

    .line 2219
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2223
    :cond_63
    :goto_63
    return-void
.end method

.method private setPixelSelfMovePattern(I)V
    .registers 4
    .param p1, "patternValue"    # I

    .line 2272
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPixelSelfMovePattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    if-nez p1, :cond_2c

    .line 2275
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_4f

    .line 2276
    :cond_2c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 2277
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_4f

    .line 2278
    :cond_35
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3e

    .line 2279
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_4f

    .line 2280
    :cond_3e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_47

    .line 2281
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_4f

    .line 2282
    :cond_47
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4f

    .line 2283
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 2286
    :cond_4f
    :goto_4f
    return-void
.end method

.method private setSNSMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "snsPackageName"    # Ljava/lang/String;

    .line 1985
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1989
    goto :goto_d

    .line 1987
    :catch_9
    move-exception v0

    .line 1988
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1991
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_e
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v2, :cond_25

    .line 1992
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1993
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1994
    goto :goto_25

    .line 1996
    :cond_20
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1991
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1999
    .end local v0    # "j":I
    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 2001
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 2003
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b9

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "CAMERA_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b9

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_88

    .line 2006
    :cond_7c
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_85

    .line 2007
    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_88

    .line 2009
    :cond_85
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2012
    :cond_88
    :goto_88
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 2013
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_a3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v0, :cond_a3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_a3

    .line 2014
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_a6

    .line 2016
    :cond_a3
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 2018
    :goto_a6
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 2019
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 2020
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 2021
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 2022
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 2023
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 2024
    const-string v0, "setSnsMode(Same Camera Mode) from Sns function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_b9
    return-void
.end method

.method private setSVideoMode(ZLjava/lang/String;)V
    .registers 20
    .param p1, "mSVideoAppLauncher"    # Z
    .param p2, "svideoPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1656
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1660
    goto :goto_11

    .line 1658
    :catch_d
    move-exception v0

    .line 1659
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1662
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    const-string v3, " mAclPreviewState : "

    const-string v4, " mHighDynamicRangeEnabled : "

    const-string v5, " mAclCompensationState : "

    const-string v6, "mAclOffEnabled : "

    const-string v7, "MdnieScenarioControlService"

    const/4 v8, 0x1

    if-eqz p1, :cond_24e

    .line 1663
    const/4 v10, 0x0

    .line 1664
    .local v10, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v11, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v11, :cond_29

    .line 1665
    iget v12, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v10

    .line 1667
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v11

    .line 1668
    .local v11, "mHdmiState":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v12

    .line 1669
    .local v12, "hdr_effect_enable":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v13

    .line 1670
    .local v13, "isKnoxMode":Z
    if-eqz v10, :cond_45

    invoke-virtual {v10}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v14

    if-ne v14, v8, :cond_45

    invoke-virtual {v10}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v14

    if-eqz v14, :cond_45

    move v14, v8

    goto :goto_46

    :cond_45
    const/4 v14, 0x0

    .line 1672
    .local v14, "mMirroringState":Z
    :goto_46
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v15

    iput-boolean v15, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1673
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1675
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hdr_effect_enable : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , app_setting_value : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_69

    move v0, v8

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mVideoModeCheck : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const-string v0, "setVideoMode from SVideo function"

    const-string v15, "VIDEO_APP"

    const-string v9, "1"

    if-eqz v12, :cond_1cc

    move-object/from16 v16, v10

    .end local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    .local v16, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-direct {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_1ce

    .line 1678
    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_140

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v10, :cond_140

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-eqz v10, :cond_140

    .line 1679
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_24c

    const-string v3, "14"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24c

    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "VIDEO_ENHANCER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24c

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_24c

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_e4

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_e1

    goto :goto_e4

    .line 1685
    :cond_e1
    iput-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_ec

    .line 1682
    :cond_e4
    :goto_e4
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_ec

    .line 1683
    const/4 v0, 0x0

    invoke-direct {v1, v0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    .line 1687
    :cond_ec
    :goto_ec
    const/16 v0, 0xe

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdmiState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mDexModeState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mMirroringState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    if-nez v11, :cond_125

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez v0, :cond_125

    if-eqz v14, :cond_120

    goto :goto_125

    .line 1692
    :cond_120
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v0, 0x0

    goto :goto_129

    .line 1690
    :cond_125
    :goto_125
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1694
    :goto_129
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1695
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1696
    iput-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1697
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1698
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1699
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1700
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1701
    const-string v0, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24c

    .line 1703
    :cond_140
    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_14c

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v10, :cond_14c

    iget-boolean v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-nez v10, :cond_24c

    .line 1704
    :cond_14c
    iget-object v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_24c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24c

    iget-object v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_24c

    iget-boolean v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v9, :cond_24c

    .line 1705
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v3, :cond_199

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v3, :cond_197

    goto :goto_199

    :cond_197
    const/4 v4, 0x0

    goto :goto_1b1

    .line 1707
    :cond_199
    :goto_199
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v3, :cond_1a9

    .line 1708
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v3, :cond_1a7

    .line 1709
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_1b1

    .line 1708
    :cond_1a7
    const/4 v4, 0x0

    goto :goto_1b1

    .line 1711
    :cond_1a9
    const/4 v4, 0x0

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v3, :cond_1b1

    .line 1712
    invoke-direct {v1, v4, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1715
    :cond_1b1
    :goto_1b1
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1716
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1717
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1718
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1719
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1720
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1721
    iput-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1722
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1723
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1724
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24c

    .line 1677
    .end local v16    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1cc
    move-object/from16 v16, v10

    .line 1728
    .end local v10    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v16    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1ce
    iget-object v10, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_24c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24c

    iget-object v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_24c

    iget-boolean v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v9, :cond_24c

    .line 1729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v3, :cond_21b

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v3, :cond_219

    goto :goto_21b

    :cond_219
    const/4 v4, 0x0

    goto :goto_233

    .line 1731
    :cond_21b
    :goto_21b
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v3, :cond_22b

    .line 1732
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v3, :cond_229

    .line 1733
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_233

    .line 1732
    :cond_229
    const/4 v4, 0x0

    goto :goto_233

    .line 1735
    :cond_22b
    const/4 v4, 0x0

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v3, :cond_233

    .line 1736
    invoke-direct {v1, v4, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1739
    :cond_233
    :goto_233
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1740
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1741
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1742
    invoke-direct {v1, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1743
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1744
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1745
    iput-boolean v8, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1746
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1747
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1748
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    .end local v11    # "mHdmiState":Z
    .end local v12    # "hdr_effect_enable":Z
    .end local v13    # "isKnoxMode":Z
    .end local v14    # "mMirroringState":Z
    .end local v16    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_24c
    :goto_24c
    goto/16 :goto_2df

    .line 1752
    :cond_24e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1753
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2df

    .line 1754
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_2df

    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2df

    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v9, "UI_APP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2df

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_2df

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_2ac

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_2aa

    goto :goto_2ac

    :cond_2aa
    const/4 v3, 0x0

    goto :goto_2c4

    .line 1757
    :cond_2ac
    :goto_2ac
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_2bc

    .line 1758
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_2ba

    .line 1759
    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_2c4

    .line 1758
    :cond_2ba
    const/4 v3, 0x0

    goto :goto_2c4

    .line 1761
    :cond_2bc
    const/4 v3, 0x0

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_2c4

    .line 1762
    invoke-direct {v1, v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1765
    :cond_2c4
    :goto_2c4
    invoke-direct {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1766
    invoke-direct {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1767
    invoke-direct {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1768
    invoke-direct {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1769
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1770
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1771
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1772
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1773
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1774
    const-string v0, "setUIMode from SVideo function"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_2df
    :goto_2df
    return-void
.end method

.method private setSVideoOptionMode()V
    .registers 5

    .line 1782
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1786
    goto :goto_d

    .line 1784
    :catch_9
    move-exception v0

    .line 1785
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1790
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_9f

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "VIDEO_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_9f

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHighDynamicRangeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_70

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_84

    .line 1795
    :cond_70
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_7d

    .line 1796
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_84

    .line 1797
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_84

    .line 1799
    :cond_7d
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_84

    .line 1800
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1803
    :cond_84
    :goto_84
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1804
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1805
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1806
    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1807
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1808
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1809
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1810
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1811
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1812
    const-string v0, "setVideoMode from SVideoOption function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_9f
    return-void
.end method

.method private setUIMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "uiPackageName"    # Ljava/lang/String;

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1372
    goto :goto_d

    .line 1370
    :catch_9
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1374
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1376
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_14
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2b

    .line 1377
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1378
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1379
    goto :goto_2b

    .line 1381
    :cond_26
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1385
    .end local v0    # "j":I
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1386
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez v0, :cond_ba

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_76

    :cond_66
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_76

    .line 1389
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_73

    .line 1390
    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_76

    .line 1392
    :cond_73
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1396
    :cond_76
    :goto_76
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v0, :cond_87

    .line 1397
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_8e

    .line 1399
    :cond_87
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    if-eqz v0, :cond_8e

    .line 1400
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1404
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 1405
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1406
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1407
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1408
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1409
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1410
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1411
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1412
    const-string v0, "setUIMode from UI function"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_ba
    return-void
.end method

.method private setVideoAppLaunch(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2297
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_10

    .line 2298
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2299
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_17

    .line 2300
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoModeEnable(Z)V

    .line 2301
    :cond_17
    return-void
.end method

.method private setVideoMode(Ljava/lang/String;)V
    .registers 19
    .param p1, "videoPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1540
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 1544
    goto :goto_f

    .line 1542
    :catch_b
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1546
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_10
    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v3, :cond_29

    .line 1547
    aget-object v2, v2, v0

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1548
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1549
    goto :goto_2b

    .line 1551
    :cond_24
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    move-object/from16 v3, p1

    .line 1555
    .end local v0    # "j":I
    :goto_2b
    const/4 v0, 0x0

    .line 1556
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v2, :cond_36

    .line 1557
    iget v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1559
    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v2

    .line 1560
    .local v2, "mHdmiState":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v6

    .line 1561
    .local v6, "hdr_effect_enable":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v7

    .line 1562
    .local v7, "isKnoxMode":Z
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v8

    if-ne v8, v4, :cond_52

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v8

    if-eqz v8, :cond_52

    move v8, v4

    goto :goto_53

    :cond_52
    move v8, v5

    .line 1564
    .local v8, "mMirroringState":Z
    :goto_53
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v9

    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1565
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1567
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hdr_effect_enable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " , app_setting_value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v4, :cond_76

    move v10, v4

    goto :goto_77

    :cond_76
    move v10, v5

    :goto_77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MdnieScenarioControlService"

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v9, "setVideoMode from Video function"

    const-string v11, " mAclPreviewState : "

    const-string v12, "VIDEO_APP"

    const-string v13, "1"

    const-string v14, " mHighDynamicRangeEnabled : "

    const-string v15, " mAclCompensationState : "

    const-string v5, "mAclOffEnabled : "

    if-eqz v6, :cond_1fc

    move-object/from16 v16, v0

    .end local v0    # "route":Landroid/media/MediaRouter$RouteInfo;
    .local v16, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1fe

    .line 1570
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v0, :cond_160

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v0, :cond_160

    .line 1571
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_290

    const-string v9, "15"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v9, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_290

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_ed

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_ea

    goto :goto_ed

    .line 1577
    :cond_ea
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_f5

    .line 1574
    :cond_ed
    :goto_ed
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_f5

    .line 1575
    const/4 v0, 0x0

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    .line 1579
    :cond_f5
    :goto_f5
    const/16 v0, 0xf

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHdmiState : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mDexModeState : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mMirroringState : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    if-nez v2, :cond_12f

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez v0, :cond_12f

    if-eqz v8, :cond_129

    goto :goto_12f

    .line 1588
    :cond_129
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v0, 0x0

    goto :goto_14b

    .line 1582
    :cond_12f
    :goto_12f
    iget v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-eq v0, v5, :cond_147

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v0, :cond_147

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_147

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_147

    .line 1583
    const/4 v0, 0x5

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v0, 0x0

    goto :goto_14b

    .line 1585
    :cond_147
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1590
    :goto_14b
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1591
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1592
    iput-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1593
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1594
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1595
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1596
    const-string v0, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 1598
    :cond_160
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v0, :cond_168

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v0, :cond_290

    .line 1599
    :cond_168
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_290

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_290

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_1b2

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_1ca

    .line 1602
    :cond_1b2
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_1c2

    .line 1603
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_1c0

    .line 1604
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_1ca

    .line 1603
    :cond_1c0
    const/4 v5, 0x0

    goto :goto_1ca

    .line 1606
    :cond_1c2
    const/4 v5, 0x0

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_1ca

    .line 1607
    invoke-direct {v1, v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1610
    :cond_1ca
    :goto_1ca
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1611
    iget v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-eq v0, v5, :cond_1e5

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v0, :cond_1e5

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_1e5

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_1e5

    .line 1612
    const/4 v0, 0x5

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v0, 0x0

    goto :goto_1e9

    .line 1614
    :cond_1e5
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1616
    :goto_1e9
    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1617
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1618
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1619
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1620
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1621
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1622
    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_290

    .line 1569
    .end local v16    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v0    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1fc
    move-object/from16 v16, v0

    .line 1626
    .end local v0    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v16    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1fe
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_290

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_290

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_290

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_248

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_260

    .line 1629
    :cond_248
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_258

    .line 1630
    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_256

    .line 1631
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_260

    .line 1630
    :cond_256
    const/4 v5, 0x0

    goto :goto_260

    .line 1633
    :cond_258
    const/4 v5, 0x0

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_260

    .line 1634
    invoke-direct {v1, v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1637
    :cond_260
    :goto_260
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1638
    iget v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-eq v0, v5, :cond_27b

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v0, :cond_27b

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_27b

    iget-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_27b

    .line 1639
    const/4 v0, 0x5

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    const/4 v0, 0x0

    goto :goto_27f

    .line 1641
    :cond_27b
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1643
    :goto_27f
    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1644
    invoke-direct {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1645
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1646
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1647
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1648
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1649
    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_290
    :goto_290
    return-void
.end method

.method private set_wcg_property()V
    .registers 6

    .line 934
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDNIe Screen Mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_DEFAULT_SCREEN_MODE"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MdnieScenarioControlService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_34

    .line 937
    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    goto :goto_43

    .line 938
    :cond_34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    .line 939
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    .line 943
    :cond_43
    :goto_43
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 944
    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    .line 946
    :cond_4c
    return-void
.end method

.method private setting_is_changed()V
    .registers 6

    .line 846
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 848
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    .line 849
    const-string v1, "low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    .line 850
    const-string v1, "screen_mode_automatic_setting"

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_2d

    move v1, v3

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    .line 851
    const-string v1, "self_move_disable_setting"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_3a

    move v1, v3

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    .line 852
    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_47

    move v1, v3

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 853
    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_54

    move v1, v3

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 854
    const-string v1, "color_blind"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_61

    move v1, v3

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 855
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_6e

    move v1, v3

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 856
    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_7b

    move v1, v3

    goto :goto_7c

    :cond_7b
    move v1, v2

    :goto_7c
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 857
    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_88

    move v1, v3

    goto :goto_89

    :cond_88
    move v1, v2

    :goto_89
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 858
    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v4, 0x927c0

    if-le v1, v4, :cond_98

    move v1, v3

    goto :goto_99

    :cond_98
    move v1, v2

    :goto_99
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 860
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_b1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_b1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v1, :cond_b1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v1, :cond_b1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    if-eqz v1, :cond_b1

    move v1, v3

    goto :goto_b2

    :cond_b1
    move v1, v2

    :goto_b2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 861
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v4, :cond_bf

    if-eqz v1, :cond_bf

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v1, :cond_bf

    goto :goto_c0

    :cond_bf
    move v3, v2

    :goto_c0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 863
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->set_wcg_property()V

    .line 866
    :cond_d1
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v1, :cond_e4

    .line 868
    :try_start_d5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    invoke-interface {v1, v3, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_db} :catch_dc

    .line 871
    goto :goto_e4

    .line 869
    :catch_dc
    move-exception v1

    .line 870
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MdnieScenarioControlService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_e4
    :goto_e4
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v1, :cond_ec

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v1, :cond_f8

    .line 884
    :cond_ec
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 885
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 888
    :cond_f8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v1, :cond_110

    .line 889
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_104

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-eqz v1, :cond_110

    .line 890
    :cond_104
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 891
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 931
    :cond_110
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 2107
    const/4 v0, 0x0

    .line 2108
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    .line 2112
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_25

    move-object v0, v2

    .line 2116
    nop

    .line 2117
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2127
    nop

    .line 2128
    const/4 v2, 0x1

    return v2

    .line 2119
    :catch_25
    move-exception v2

    goto :goto_2c

    .line 2113
    :catch_27
    move-exception v2

    .line 2114
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2b} :catch_25

    .line 2115
    return v3

    .line 2120
    .local v2, "e":Ljava/io/IOException;
    :goto_2c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2122
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 2125
    goto :goto_37

    .line 2123
    :catch_33
    move-exception v4

    .line 2124
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2126
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_37
    return v3

    .line 2130
    .end local v2    # "e":Ljava/io/IOException;
    :cond_38
    return v3
.end method

.method private updatePolicyScpm()V
    .registers 11

    .line 2572
    const-string v0, "MdnieScenarioControlService"

    const/4 v1, 0x0

    .line 2574
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2576
    .local v2, "policyVersion":I
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getPolicyVersionFromScpm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_11
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    move v2, v3

    .line 2579
    goto :goto_26

    .line 2615
    .end local v2    # "policyVersion":I
    :catchall_e
    move-exception v0

    goto/16 :goto_e0

    .line 2577
    .restart local v2    # "policyVersion":I
    :catch_11
    move-exception v3

    .line 2578
    .local v3, "e":Ljava/lang/Exception;
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePolicyScpm fail(1) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePolicyScpm : PolicyVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , LastPolicyVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    if-ge v3, v2, :cond_c0

    .line 2583
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 2585
    if-eqz v1, :cond_c0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c0

    .line 2586
    :goto_61
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2587
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2588
    .local v4, "burninpreventionCategory":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2589
    .local v5, "burninpreventionState":Ljava/lang/String;
    const-string v6, "brightness_all_app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_77} :catch_c6
    .catchall {:try_start_12 .. :try_end_77} :catchall_e

    const/4 v7, 0x0

    const-string v8, "off"

    const-string v9, "on"

    if-eqz v6, :cond_9a

    .line 2590
    :try_start_7e
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 2591
    const-string v6, "updatePolicyScpm brightness_all_app - on"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    goto :goto_bd

    .line 2594
    :cond_8c
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 2595
    const-string v3, "updatePolicyScpm brightness_all_app - off"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    goto :goto_bd

    .line 2598
    :cond_9a
    const-string v6, "brightness_browser_app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 2599
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 2600
    const-string v6, "updatePolicyScpm brightness_browser_app - on"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    goto :goto_bd

    .line 2603
    :cond_b0
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 2604
    const-string v3, "updatePolicyScpm brightness_browser_app - off"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    .line 2608
    .end local v4    # "burninpreventionCategory":Ljava/lang/String;
    .end local v5    # "burninpreventionState":Ljava/lang/String;
    :cond_bd
    :goto_bd
    goto :goto_61

    .line 2609
    :cond_be
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_c0} :catch_c6
    .catchall {:try_start_7e .. :try_end_c0} :catchall_e

    .line 2615
    .end local v2    # "policyVersion":I
    :cond_c0
    if-eqz v1, :cond_df

    .line 2616
    :goto_c2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_df

    .line 2612
    :catch_c6
    move-exception v2

    .line 2613
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePolicyScpm fail(2) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c7 .. :try_end_db} :catchall_e

    .line 2615
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_df

    .line 2616
    goto :goto_c2

    .line 2619
    :cond_df
    :goto_df
    return-void

    .line 2615
    :goto_e0
    if-eqz v1, :cond_e5

    .line 2616
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2618
    :cond_e5
    throw v0
.end method

.method private wcg_property_changed(I)V
    .registers 7
    .param p1, "color"    # I

    .line 949
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 951
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_39

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 953
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_21
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2b
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 960
    nop

    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    goto :goto_39

    .line 960
    :catchall_29
    move-exception v2

    goto :goto_35

    .line 957
    :catch_2b
    move-exception v2

    .line 958
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "MdnieScenarioControlService"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 960
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_25

    :goto_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    throw v2

    .line 963
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_39
    :goto_39
    return-void
.end method

.method private writeVideoEnhancerListInDataBase()V
    .registers 4

    .line 2650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 2651
    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 2650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2653
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 2654
    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 2653
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2656
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 2657
    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 2656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2659
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public browser_brightness_decrease_mode(Z)V
    .registers 11
    .param p1, "enabled"    # Z

    .line 2426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2427
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-nez v2, :cond_1e

    .line 2428
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_media_resource_info()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 2429
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 2430
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v2, :cond_1e

    .line 2431
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semGetMotionIdleTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 2433
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser_brightness_decrease_mode() mBrightnessBrowserAppServerState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBrowserBrightnessDecreaseEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mScreenStateOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mScreenOffTomeoutAbnormal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mUserActivityStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mMediaResourceUsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLastUserInputDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessArray : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    const/16 v5, 0x15

    const/4 v6, 0x1

    if-eqz v2, :cond_eb

    if-eqz p1, :cond_eb

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_eb

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    if-eqz v2, :cond_eb

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    if-nez v2, :cond_b5

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_eb

    .line 2435
    :cond_b5
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    const-wide/32 v7, 0x927c0

    if-nez v2, :cond_d2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_d2

    .line 2436
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v4, v3, v4

    if-lt v2, v4, :cond_102

    .line 2437
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 2438
    aget v2, v3, v6

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_function(I)V

    goto :goto_102

    .line 2441
    :cond_d2
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    if-nez v2, :cond_dc

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_102

    .line 2442
    :cond_dc
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2443
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v5, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_102

    .line 2447
    :cond_eb
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 2448
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 2449
    const-string v2, "Disabled Browser Brightness Decrease Mode"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2451
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_102

    .line 2452
    const-string v3, "browser_brightness_off"

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2455
    :cond_102
    :goto_102
    return-void
.end method

.method public burn_in_prevention_mode(Z)V
    .registers 11
    .param p1, "enabled"    # Z

    .line 2384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2385
    .local v0, "time":J
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v2

    .line 2386
    .local v2, "platform_brightness_value":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "burn_in_prevention_mode() mBrightnessAllAppServerState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBurnInDisableAppEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mAutoBrightnessMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHighBrightnessModeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mBurnInPreventionACL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , platform_brightness_value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , BURN_IN_PREVENTION_SUPPORT_VALUE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mBurnInPreventionEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mGameAppLauncher : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MdnieScenarioControlService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-eqz v3, :cond_fe

    if-eqz p1, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-eqz v3, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v3, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    if-nez v3, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    if-nez v3, :cond_fe

    .line 2389
    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    if-lt v2, v3, :cond_116

    .line 2390
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 2391
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    .line 2392
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v3, :cond_116

    .line 2393
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_9e
    const/16 v7, 0xb

    if-ge v3, v7, :cond_fd

    .line 2394
    iget v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    if-ne v7, v3, :cond_fa

    .line 2395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabled Burn-In Prevention Mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "burnin_prevention_on_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2397
    const/16 v4, 0xa

    if-ge v3, v4, :cond_f7

    .line 2398
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2399
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    if-eqz v4, :cond_e7

    .line 2400
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_f2

    .line 2401
    :cond_e7
    if-nez v4, :cond_f2

    .line 2402
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 2404
    :cond_f2
    :goto_f2
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    goto :goto_f9

    .line 2406
    :cond_f7
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    .line 2408
    :goto_f9
    return-void

    .line 2393
    :cond_fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .end local v3    # "i":I
    :cond_fd
    goto :goto_116

    .line 2415
    :cond_fe
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 2416
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    .line 2417
    const-string v3, "Disabled Burn-In Prevention Mode"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2419
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v3, :cond_116

    .line 2420
    const-string v4, "burnin_prevention_off"

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2423
    :cond_116
    :goto_116
    return-void
.end method

.method public findVideoEnhancerSettingState(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2641
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isHighDynamicRangeModeState(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 2512
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 2513
    return-void
.end method

.method public setAutoCurrentLimitOffMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 2363
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoCurrentLimitOffState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    if-eqz v0, :cond_41

    .line 2366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    .line 2367
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_39

    .line 2368
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2369
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 2370
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_44

    .line 2371
    :cond_39
    if-nez v0, :cond_44

    .line 2372
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    goto :goto_44

    .line 2376
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    .line 2378
    :cond_44
    :goto_44
    return-void
.end method

.method public setAutoCurrentLimitOffModeSNS(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2381
    return-void
.end method

.method public updateVideoEnhancerSettingState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Video Enhancer SubKey state. package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAppSettingState(Ljava/lang/String;I)V

    .line 2647
    return-void
.end method
