.class public Lcom/android/server/policy/PhoneWindowManagerExt;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicyExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;,
        Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;,
        Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;,
        Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;
    }
.end annotation


# static fields
.field private static final ACTION_WINNER_LOGGING:Ljava/lang/String; = "com.samsung.android.intent.action.WINNER_LOGGING"

.field static final ADD_PASS:I = 0x4

.field static final ADD_WAKEUP:I = 0x10

.field static final AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field private static final ANY_KEY_MODE:Ljava/lang/String; = "anykey_mode"

.field private static final AOD_ACTION:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

.field private static final AOD_EXTRA_INFO:Ljava/lang/String; = "info"

.field private static final AOD_EXTRA_LOCATION:Ljava/lang/String; = "location"

.field private static final AOD_PERMISSION:Ljava/lang/String; = "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

.field private static final BACK_FULL_PACKAGE_NAME:Ljava/lang/String; = "back/back"

.field private static final BIXBY_EXTRA_INTERACTIVE:Ljava/lang/String; = "INTERACTIVE"

.field private static final BIXBY_EXTRA_KEY_EVENT:Ljava/lang/String; = "KEYEVENT"

.field private static final BIXBY_EXTRA_KEY_FW_VERSION:Ljava/lang/String; = "BIXBY_KEY_FW_VERSION"

.field private static final BIXBY_EXTRA_RESULT_BY_POWER:Ljava/lang/String; = "RESULT_BY_POWER"

.field private static final BIXBY_EXTRA_RESULT_DEFAULT:I = -0x1

.field private static final BIXBY_EXTRA_RESULT_DOUBLE_TAP:I = 0x2

.field private static final BIXBY_EXTRA_RESULT_LONG_PRESS:I = 0x1

.field private static final BIXBY_SERVICE_DVFS_BOOSTER_TIMEOUT:I = 0x3e8

.field private static final BIXBY_UNLOCK_FP:Ljava/lang/String; = "UNLOCKFP"

.field private static final CAMERA_FULL_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

.field private static final CHILE_CMAS_POPUP_ON_TOP:Ljava/lang/String; = "chile_cmas_popup_on_top"

.field private static final CLASS_NAME_BIXBY_APP:Ljava/lang/String; = "com.samsung.android.bixby.WinkService"

.field private static final CLASS_NAME_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CLASS_NAME_GO_POLICE_REPORT:Ljava/lang/String; = "go.police.report.Report"

.field private static final CLASS_NAME_MY_FILES:Ljava/lang/String; = "com.sec.android.app.myfiles.external.ui.MainActivity"

.field private static final CLASS_NAME_NAME_PREMIUM_WATCH:Ljava/lang/String; = "com.sec.android.app.premiumwatch.activity.PremiumWatch"

.field private static final CLASS_NAME_SCREEN_OFF_MEMO:Ljava/lang/String; = "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

.field private static final CLASS_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings.Settings"

.field private static final CLASS_NAME_SMART_MIRRORING:Ljava/lang/String; = "com.samsung.android.smartmirroring.CastingActivity"

.field private static final CLASS_NAME_SPTT:Ljava/lang/String; = "com.samsung.android.sptt.keyevent.KeyEventService"

.field static final CLASS_NAME_SPTT_ATT:Ljava/lang/String; = "com.samsung.android.sptt.keyevent.KeyEventService"

.field private static final CLASS_NAME_TIPS:Ljava/lang/String; = "com.samsung.android.app.tips.TipsMainActivity"

.field private static final COMPONENT_BIXBY_APP:Landroid/content/ComponentName;

.field private static final COMPONENT_CAMERA_APP:Landroid/content/ComponentName;

.field static final CONSUME:I = 0x2

.field private static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5

.field public static final DEBUG_RECONFIGURE:Ljava/lang/String; = "com.samsung.action.DEBUG_RECONFIGURE"

.field private static final DEDICATED_APP_TOP:Ljava/lang/String; = "dedicated_app_top"

.field private static final DEDICATED_APP_TOP_SWITCH:Ljava/lang/String; = "dedicated_app_top_switch"

.field private static final DEDICATED_APP_XCOVER:Ljava/lang/String; = "dedicated_app_xcover"

.field private static final DEDICATED_APP_XCOVER_SWITCH:Ljava/lang/String; = "dedicated_app_xcover_switch"

.field private static final DEVICE_ACTION_PRESS:Ljava/lang/String; = "PRESS"

.field static final DISMISS_IF_INSECURE:Ljava/lang/String; = "dismissIfInsecure"

.field private static final DISPATCHING:I = 0x0

.field private static final DISPATCHING_UNKNOWN:I = -0x2

.field static final DOUBLE_TAP_HOME_KEY_DISABLED:I = 0x0

.field static final DOUBLE_TAP_HOME_KEY_ENABLED:I = 0x1

.field static final DOUBLE_TAP_LAUNCH_CAMERA:Ljava/lang/String; = "double_tab_launch"

.field private static final DOUBLE_TAP_LAUNCH_COMPONENT:Ljava/lang/String; = "double_tab_launch_component"

.field static final DOUBLE_TAP_POWER_KEY_DISABLED:I = 0x2

.field static final DOUBLE_TAP_POWER_KEY_ENABLED:I = 0x3

.field private static final ENABLE_RESERVE_MAX_MODE:Ljava/lang/String; = "enable_reserve_max_mode"

.field private static final EXTRA_GAME_CONTROLLER_DEVICE_ACTION:Ljava/lang/String; = "DEVICE_ACTION"

.field private static final EXTRA_GAME_CONTROLLER_DEVICE_PID:Ljava/lang/String; = "DEVICE_PID"

.field private static final EXTRA_GAME_CONTROLLER_DEVICE_VID:Ljava/lang/String; = "DEVICE_VID"

.field private static final EXTRA_IS_BOOT:Ljava/lang/String; = "isBoot"

.field private static final EXTRA_IS_KEYGUARD_LOCKED:Ljava/lang/String; = "isKeyguardLocked"

.field private static final EXTRA_IS_SCREEN_ON:Ljava/lang/String; = "isScreenOn"

.field private static final EXTRA_KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final EXTRA_PEN_INSERT:Ljava/lang/String; = "penInsert"

.field private static final EXTRA_PEN_INTENT_COM:Ljava/lang/String; = "pen_intent_com"

.field private static final EXTRA_VALUE_PACKAGE:Ljava/lang/String; = "window-g"

.field private static final FACTORY_UI_HARD_KEY:Ljava/lang/String; = "com.sec.factory.app.ui.UIHardKey"

.field private static final FINGER_ON_DISPLAY_ACTION:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

.field private static final FINGER_ON_DISPLAY_EXTRA_INFO:Ljava/lang/String; = "info"

.field private static final FINGER_ON_DISPLAY_EXTRA_LOCATION:Ljava/lang/String; = "location"

.field private static final FINGER_ON_DISPLAY_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_QUICKACCESS"

.field private static final FLASHLIGHT_STRENGTH:[I

.field private static final FLASHLIGHT_VALUE:[I

.field private static final FOLDABLE_FOLDING_TIME_LOG_MARGIN_MILLIS:J = 0x2710L

.field static final FORWARD:I = 0x1

.field private static final FULL_PACKAGE_NAME_TORCH:Ljava/lang/String; = "torch/torch"

.field private static final GAME_TOOLS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field private static final HOME_FULL_PACKAGE_NAME:Ljava/lang/String; = "home/home"

.field private static final HOT_KEYS_LAUNCH_TIMEOUT:I = 0xbb8

.field private static final HOT_KEY_TOAST:I = 0x1

.field static final IGNORE_KEYGUARD_STATE:Ljava/lang/String; = "ignoreKeyguardState"

.field private static final INDEX_FLASHLIGHT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "Flashlight_brightness_level"

.field private static final INDEX_FORCE_FADE_OUT_ICON:I = 0x2

.field private static final INTENT_ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

.field private static final INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

.field private static final INTENT_ACTION_CRITICAL_COMMUNICATION_CONTROL_BUTTON:Ljava/lang/String; = "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

.field private static final INTENT_ACTION_CRITICAL_COMMUNICATION_SOS_BUTTON:Ljava/lang/String; = "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

.field private static final INTENT_ACTION_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.DOUBLE_CLICK"

.field private static final INTENT_ACTION_GAMEPAD_INTENTSERVICE:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

.field private static final INTENT_ACTION_GAME_BOOSTER_TOGGLE_MENU:Ljava/lang/String; = "com.samsung.android.game.gametools.action.togglemenu"

.field private static final INTENT_ACTION_LONG_RRESS_GUIDE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

.field private static final INTENT_ACTION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.action.PANIC_CALL"

.field private static final INTENT_ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final INTENT_ACTION_PEN_INSERT_USER_SWITCH:Ljava/lang/String; = "com.samsung.pen.INSERT.USER_SWITCH"

.field private static final INTENT_ACTION_RECOGNIZE_SPEECH:Ljava/lang/String; = "samsung.svoiceime.action.RECOGNIZE_SPEECH"

.field private static final INTENT_ACTION_SAFETY_ASSURANCE:Ljava/lang/String; = "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER"

.field private static final INTENT_ACTION_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final INTENT_ACTION_SETUP_WIZARD_GLOBAL_ACTION:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

.field private static final INTENT_ACTION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field private static final INTENT_EXTRA_PANIC_CALL:Ljava/lang/String; = "panic_call"

.field private static final INTENT_EXTRA_START_FLAG:Ljava/lang/String; = "startFlag"

.field private static final INTENT_EXTREA_PWM_DEBUG:Ljava/lang/String; = "PWM_DEBUG"

.field private static final INTENT_PERMISSION_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.DOUBLE_CLICK"

.field private static final INTENT_PERMISSION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.permisson.START_DOCK_OR_HOME"

.field private static final IS_BIKE_MODE:Ljava/lang/String; = "isBikeMode"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final LTW_SMARTVIEW_CONNECTED:Ljava/lang/String; = "ltw_smartview_connected"

.field private static final METADATA_KEY_TOGGLE_MENU:Ljava/lang/String; = "Feature.External.Action"

.field private static final METADATA_VALUE_TOGGLE_MENU:Ljava/lang/String; = "togglemenu"

.field private static final MISSING_PHONE_LOCK:Ljava/lang/String; = "missing_phone_lock"

.field static final MSG_INSERT_NO_ACTION_LOG_FOR_FOLDABLE:I = 0x3

.field private static final MSG_RECONFIGURE_DISPLAY:I = 0x1

.field static final MSG_REMOVE_NO_ACTION_LOG_FOR_FOLDABLE:I = 0x4

.field private static final MSG_SET_SHOULD_BE_LOGGING_FOR_HALF_OPEN_DEVICE:I = 0x2

.field private static final MULTI_PRESS_POWER_KEY_CUSTOMIZE_ACTION:I = 0x6a

.field private static final MULTI_PRESS_POWER_LAUNCH_CAMERA:I = 0x65

.field private static final MULTI_PRESS_POWER_LAUNCH_TV_MODE:I = 0x69

.field private static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field private static final MULTI_PRESS_POWER_ONE_TOUCH_REPORT_MODE:I = 0x67

.field private static final MULTI_PRESS_POWER_SAFETY_ACTION:I = 0x66

.field private static final MULTI_PRESS_POWER_SIDE_KEY_ACTION:I = 0x68

.field private static final NEED_DARK_NAVIGATIONBAR:Ljava/lang/String; = "need_dark_navigationbar"

.field private static final NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field private static final NO_DISPATCHING:I = -0x1

.field private static final OMC_PEN_ATTACH_VIBRATION_INDEX:I = 0x3f

.field private static final OMC_PEN_DETACH_VIBRATION_INDEX:I = 0x3e

.field private static final ONE_TOUCH_REPORT_INSTALLER:Ljava/lang/String; = "com.android.vending"

.field private static final PACKAGE_NAME_BIXBY_APP:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final PACKAGE_NAME_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera"

.field static final PACKAGE_NAME_EPTT_ATT:Ljava/lang/String; = "com.att.eptt"

.field private static final PACKAGE_NAME_FULL_PUSH_TO_TALK_BELL_OPERATOR:Ljava/lang/String; = "com.bell.ptt/com.bell.ptt.StartupActivity"

.field private static final PACKAGE_NAME_GAME_BOOSTER:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field private static final PACKAGE_NAME_GO_POLICE_REPORT:Ljava/lang/String; = "go.police.report"

.field private static final PACKAGE_NAME_MY_FILES:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final PACKAGE_NAME_PREMIUM_WATCH:Ljava/lang/String; = "com.sec.android.app.premiumwatch"

.field private static final PACKAGE_NAME_PUSH_TO_TALK_BELL_OPERATOR:Ljava/lang/String; = "com.bell.ptt"

.field static final PACKAGE_NAME_PUSH_TO_TALK_PLUS_VZW:Ljava/lang/String; = "com.verizon.pushtotalkplus"

.field private static final PACKAGE_NAME_SAFETY_ASSURANCE:Ljava/lang/String; = "com.sec.android.app.safetyassurance"

.field private static final PACKAGE_NAME_SCREEN_OFF_MEMO:Ljava/lang/String; = "com.samsung.android.app.notes"

.field private static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGE_NAME_SMART_MIRRORING:Ljava/lang/String; = "com.samsung.android.smartmirroring"

.field private static final PACKAGE_NAME_SPTT:Ljava/lang/String; = "com.samsung.android.sptt"

.field static final PACKAGE_NAME_SPTT_ATT:Ljava/lang/String; = "com.att.firstnet.grey"

.field private static final PACKAGE_NAME_TIPS:Ljava/lang/String; = "com.samsung.android.app.tips"

.field private static final PEN_ATTACH_DETACH_VIBRATION:Ljava/lang/String; = "pen_attach_detach_vibration"

.field private static final PEN_TYPE_ATTACH:I = 0x2

.field private static final PEN_TYPE_INBOX:I = 0x5

.field private static final PEN_TYPE_INSERT:I = 0x0

.field private static final PEN_TYPE_NOT_SUPPORTED:I = -0x1

.field private static final PWM_DEBUG_CONFIG_SIZE:I = 0x6

.field private static final QUICK_ACCESS_AOD_DOUBLE_TAP:I = 0xb

.field private static final QUICK_ACCESS_AOD_LONG_PRESS:I = 0xa

.field private static final QUICK_ACCESS_AOD_PRESS:I = 0x9

.field private static final QUICK_ACCESS_FINGER_ICON_SHOW:I = 0x8

.field private static final QUICK_ACCESS_FINGER_ON_DISPLAY_OUT:I = 0x11

.field private static final QUICK_ACCESS_FINGER_ON_DISPLAY_PRESS:I = 0xf

.field private static final QUICK_ACCESS_FINGER_ON_DISPLAY_RELEASE:I = 0x10

.field private static final QUICK_ACCESS_SAMSUNG_PAY:I = 0x4

.field private static final QUICK_ACCESS_TSP_SCAN_BLOCK:I = 0xe2

.field private static final QUICK_ACCESS_TSP_SCAN_UNBLOCK:I = 0xe1

.field private static final QUICK_MESSAGE_FULL_PACKAGE_NAME:Ljava/lang/String; = "quickMessageSender/quickMessageSender"

.field private static final RECEIVER_PERMISSION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.permission.PANIC_CALL"

.field static final REMOVE_PASS:I = 0x8

.field static final REMOVE_WAKEUP:I = 0x20

.field private static final RESERVE_BATTERY_ON:Ljava/lang/String; = "reserve_battery_on"

.field private static final SAFEMODE_REASON_KEYCODE_DPAD_CENTER:Ljava/lang/String; = "KEYCODE_DPAD_CENTER"

.field private static final SAFEMODE_REASON_KEYCODE_MENU:Ljava/lang/String; = "KEYCODE_MENU"

.field private static final SAFEMODE_REASON_KEYCODE_S:Ljava/lang/String; = "KEYCODE_S"

.field private static final SAFEMODE_REASON_KEYCODE_VOLUME_DOWN:Ljava/lang/String; = "KEYCODE_VOLUME_DOWN"

.field private static final SAFEMODE_REASON_TRACKBALL_BTN_MOUSE:Ljava/lang/String; = "TRACKBALL_BTN_MOUSE"

.field private static final SAMSUNG_PAY_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field private static final SAMSUNG_PAY_PERMISSION:Ljava/lang/String; = "com.samsung.android.spay.permission.SIMPLE_PAY"

.field static final SEC_POWER_MULTI_TAP_MAX_TIMEOUT:I = 0xaa

.field static final SEC_POWER_MULTI_TAP_MIN_TIMEOUT:I = 0x32

.field private static final SEND_EMERGENCY_MESSAGE:Ljava/lang/String; = "send_emergency_message"

.field private static final SEND_EMERGENCY_MESSAGE_POWER_NUMBER:Ljava/lang/String; = "send_emergency_message_power_number"

.field static final SETTING_TSP_DEBUG:Ljava/lang/String; = "setting_tsp_debug"

.field static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SETUP_WIZARD_BIXBY_MODE:Ljava/lang/String; = "setupwizard_bixby_mode"

.field private static final SHOW_COVER_TOAST:Ljava/lang/String; = "showCoverToast"

.field static final SIDE_KEY_COMBINATION_GLOBAL_ACTION_SA_LOGGING_TYPE:I = 0x1

.field private static final SIDE_KEY_CONFIG_DOUBLE_PRESS:Ljava/lang/String; = "function_key_config_doublepress"

.field private static final SIDE_KEY_CONFIG_DOUBLE_PRESS_TYPE:Ljava/lang/String; = "function_key_config_doublepress_type"

.field private static final SIDE_KEY_CONFIG_DOUBLE_PRESS_VALUE:Ljava/lang/String; = "function_key_config_doublepress_value"

.field private static final SIDE_KEY_CONFIG_LONG_PRESS_TYPE:Ljava/lang/String; = "function_key_config_longpress_type"

.field static final SIDE_KEY_DEFAULT_SA_LOGGING_TYPE:I = -0x1

.field private static final SIDE_KEY_DOUBLE_TAP_TYPE_DEFAULT:I = -0x1

.field private static final SIDE_KEY_DOUBLE_TAP_TYPE_OPEN_APPS:I = 0x2

.field private static final SIDE_KEY_DOUBLE_TAP_TYPE_OPEN_BIXBY:I = 0x1

.field private static final SIDE_KEY_DOUBLE_TAP_TYPE_QUICK_LAUNCH_CAMERA:I = 0x0

.field private static final SIDE_KEY_DOUBLE_TAP_TYPE_QUICK_SWITCH:I = 0x3

.field static final SIDE_KEY_LONG_PRESS_GLOBAL_ACTION_SA_LOGGING_TYPE:I = 0x0

.field static final SIDE_KEY_LONG_PRESS_TYPE_BIXBY:I = 0x0

.field static final SIDE_KEY_LONG_PRESS_TYPE_DEFAULT:I = -0x1

.field static final SIDE_KEY_LONG_PRESS_TYPE_GLOBAL_ACTION:I = 0x1

.field private static final SIDE_KEY_TOAST:I = 0x0

.field private static final SKT_PHONE_RELAX_MODE:Ljava/lang/String; = "skt_phone20_relax_mode"

.field private static final SPC_REMOTE_CONTROLLER:Ljava/lang/String; = "SPC_Remote_Controller"

.field private static final TABLE_MODE_DURATION_FOR_SA_LOGGING:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PhoneWindowManagerExt"

.field private static final TOP_KEY_LONG_PRESS_APP:Ljava/lang/String; = "xcover_top_long_press_app"

.field private static final TOP_KEY_ON_LOCKSCREEN:Ljava/lang/String; = "xcover_top_key_on_lockscreen"

.field private static final TOP_KEY_SHORT_PRESS_APP:Ljava/lang/String; = "xcover_top_short_press_app"

.field private static final TORCH_FULL_PACKAGE_NAME:Ljava/lang/String; = "torch/torch"

.field private static final TRIGGER_RESTART_MIN_FRAMEWORK:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TV_MODE_STATE:Ljava/lang/String; = "tvmode_state"

.field private static final TV_MODE_STATE_DOUBLETAP:Ljava/lang/String; = "pwrkey_owner_status"

.field private static final TYPE_OPEN_QUICK_SETTINGS:I = 0x6

.field private static final TYPE_SHOW_THE_APPS_SCREEN:I = 0x1

.field private static final TYPE_VIEW_NOTIFICATION:I = 0x5

.field private static final VALUE_PEN_DETACH:Ljava/lang/String; = "pen_detach"

.field private static final VALUE_PEN_DOUBLETAB:Ljava/lang/String; = "pen_doubletab"

.field private static final VOLD_DECRYPT:Ljava/lang/String;

.field private static final VOLUME_KEY_MODE:Ljava/lang/String; = "volumekey_mode"

.field private static final WAKE_AND_UNLOCK_DELAY_TIME:I = 0x3e8

.field private static final WAKE_UP_REASON_FINGERPRINT_TIMEOUT:I = 0x2bc

.field private static final XCOVER_KEY_LONG_PRESS_APP:Ljava/lang/String; = "long_press_app"

.field private static final XCOVER_KEY_ON_LOCKSCREEN:Ljava/lang/String; = "active_key_on_lockscreen"

.field private static final XCOVER_KEY_SHORT_PRESS_APP:Ljava/lang/String; = "short_press_app"

.field private static sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static final sLock:Ljava/lang/Object;

.field private static sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sSupportedCpuFreqTable:[I

.field private static sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;


# instance fields
.field private accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field private mAcceptCallHomeConsumed:Z

.field private mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

.field private mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mAlreadySendedSALogging:Z

.field mAppSwitchKeyConsumed:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBixbyComponentName:Landroid/content/ComponentName;

.field private mBixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBoldFontEnabled:I

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field private mButtonShapeEnabled:I

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field final mContext:Landroid/content/Context;

.field private mDeXScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field final mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/MultiTapKeyEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDexKeyguardOccluded:Z

.field private mDexKeyguardOccludedChanged:Z

.field mDisplayEnabled:Z

.field mDoubleTapLaunchBehavior:I

.field private mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

.field private mEmergencyModeEnabled:Z

.field private mEnableReserveBatteryMode:Z

.field private final mExternalDisplayMultiTapHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/MultiTapKeyEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashlightLevel:I

.field mFoldableLoggingReceiver:Landroid/content/BroadcastReceiver;

.field mFoldedTime:J

.field mForcedDisplaySizeRequested:Z

.field mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field mHandler:Landroid/os/Handler;

.field private mHasNavigationBarGesture:Z

.field private mIsAnyKeyMode:Z

.field mIsAssistHapticEnabled:Z

.field private mIsAvailableOneTouchReport:Z

.field private mIsBixbySetupWizardMode:Z

.field private mIsChileCmasDialogShowing:Z

.field mIsDirectAccessEnabled:Z

.field private mIsDoubleTapToWakeUp:Z

.field private mIsDoubleTapToWakeUpSupported:Z

.field private mIsHapticsEnabled:Z

.field private mIsHapticsSupported:Z

.field mIsInteractionControlEnabled:Z

.field mIsLTWSmartViewConnected:Z

.field private mIsLowBattery:Z

.field private mIsPalmTouchDownToSleep:Z

.field mIsPogoKeyboardConnected:Z

.field private mIsPowerKeyBlocked:Z

.field private mIsPremiumWatchOn:Z

.field private mIsSBikeModeOn:Z

.field private mIsSafetyAssuranceEnabled:Z

.field mIsSideKeyDoubleTapEnabled:Z

.field private mIsSktPhoneRelaxMode:Z

.field private mIsTopKeyLongPressed:Z

.field private mIsTopKeyOnLockScreen:Z

.field private mIsTvModeDoubleTapEnabled:Z

.field private mIsTvModeEnabled:Z

.field private mIsVolumeKeyBlocked:Z

.field private mIsVolumeUpKeyMode:Z

.field private mIsXCoverKeyLongPressed:Z

.field private mIsXCoverKeyOnLockScreen:Z

.field mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

.field mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field private mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mLastDexMode:I

.field private mLaunchAppByHotKeyTriggered:Z

.field private final mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private mMissingPhoneLock:Ljava/lang/String;

.field mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

.field private mNavBarImeBtnEnabled:Z

.field private mNavigationBarGestureDetailType:Z

.field private mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

.field private mPenInsertIntent:Landroid/content/Intent;

.field private mPenInsertIntentUserSwitch:Landroid/content/Intent;

.field private mPenSoundEnabled:Z

.field private mPenSoundFilePath:Ljava/lang/String;

.field private mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

.field private mPenState:I

.field private final mPenType:I

.field private mPenVibrationEnabled:Z

.field private mPendingDexKeyguardOccluded:Z

.field mPendingPermissionController:Z

.field private mPermissionControllerIntent:Landroid/content/Intent;

.field private mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field final mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field volatile mPowerKeyReleaseTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPressedHotKey:I

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

.field mQuadruplePressOnPowerBehavior:I

.field mQuintuplePressOnPowerBehavior:I

.field private mQuintupleTapLaunchIntent:Landroid/content/Intent;

.field mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mReducedAnimEnabled:Z

.field private mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

.field private mReserveBatteryMode:Z

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

.field private mSafeModeReason:Ljava/lang/String;

.field private mSafetyAssurancePowerNumber:I

.field private mScreenOffMemoEnabled:Z

.field private mScreenOffMemoIntent:Landroid/content/Intent;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field mSettingsNavigationBarColor:I

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field private mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

.field mShouldBeLogging:Z

.field private mSideKeyDoubleTapAppInfo:Ljava/lang/String;

.field private mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

.field private mSideKeyDoubleTapPackageName:Ljava/lang/String;

.field private mSideKeyDoubleTapType:I

.field mSideKeyLongPressType:I

.field private mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mTopKeyLongPressLaunchApp:Ljava/lang/String;

.field private mTopKeyShortPressLaunchApp:Ljava/lang/String;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mTorchMode:Z

.field mTspStateManager:Lcom/android/server/policy/TspStateManager;

.field private mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoIPInterfaceService:Landroid/os/IVoIPInterface;

.field private mVrImmersiveMode:Z

.field private mWakeAndUnlockRunning:Ljava/lang/Runnable;

.field private mWakeAndUnlockTriggered:Z

.field private mWakeUpByHomeKey:Z

.field private mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

.field private mWakeUpReasonFingerprintTriggered:Z

.field private mWakingUpReason:I

.field final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

.field private mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

.field private mXCoverKeyShortPressLaunchApp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3617
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3618
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3619
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3620
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3624
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    .line 3937
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->COMPONENT_CAMERA_APP:Landroid/content/ComponentName;

    .line 3938
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.bixby.agent"

    const-string v2, "com.samsung.android.bixby.WinkService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->COMPONENT_BIXBY_APP:Landroid/content/ComponentName;

    .line 3946
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_40

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->FLASHLIGHT_VALUE:[I

    .line 3953
    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->FLASHLIGHT_STRENGTH:[I

    .line 4884
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->VOLD_DECRYPT:Ljava/lang/String;

    return-void

    nop

    :array_40
    .array-data 4
        0x3e9
        0x3ea
        0x3ec
        0x3ee
        0x3f1
    .end array-data

    :array_4e
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDisplayEnabled:Z

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 342
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 344
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 376
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSBikeModeOn:Z

    .line 380
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z

    .line 391
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 403
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mForcedDisplaySizeRequested:Z

    .line 2479
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 2612
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpByHomeKey:Z

    .line 2818
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    .line 2822
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExternalDisplayMultiTapHandlers:Landroid/util/SparseArray;

    .line 2841
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    .line 2954
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 2955
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z

    .line 2956
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I

    .line 2986
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 2988
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z

    .line 3074
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3134
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReducedAnimEnabled:Z

    .line 3279
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$4;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3300
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 3456
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 3457
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 3511
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 3537
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 3538
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 3539
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 3561
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDirectAccessEnabled:Z

    .line 3562
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 3798
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    .line 3799
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    .line 3800
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    .line 3890
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    .line 3903
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$6;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$6;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    .line 3917
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    .line 3918
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    .line 3919
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    .line 3920
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    .line 3921
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    .line 3945
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashlightLevel:I

    .line 4190
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4191
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    .line 4192
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z

    .line 4231
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$7;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$7;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 4252
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLowBattery:Z

    .line 4254
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$8;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4323
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyOnLockScreen:Z

    .line 4324
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyLongPressed:Z

    .line 4325
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyOnLockScreen:Z

    .line 4326
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyLongPressed:Z

    .line 4328
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyShortPressLaunchApp:Ljava/lang/String;

    .line 4329
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    .line 4330
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyShortPressLaunchApp:Ljava/lang/String;

    .line 4331
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    .line 4365
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 4395
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyComponentName:Landroid/content/ComponentName;

    .line 4540
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsBixbySetupWizardMode:Z

    .line 4556
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$9;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$9;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 4629
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 4680
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 4681
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 4719
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    .line 4724
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 4725
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 4726
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 4903
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 4916
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    .line 4941
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 4942
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 4952
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSFinderLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

    .line 5229
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPermissionControllerIntent:Landroid/content/Intent;

    .line 5230
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    .line 5253
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 5277
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    .line 5278
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPressedHotKey:I

    .line 5279
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

    .line 5395
    const-string/jumbo v3, "null"

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    .line 5482
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v3, :cond_f5

    .line 5483
    sget v3, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_USP_LEVEL:I

    rem-int/lit8 v3, v3, 0xa

    goto :goto_f6

    :cond_f5
    move v3, v2

    :goto_f6
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 5484
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 6090
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerKeyReleaseTime:J

    .line 6094
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 6114
    new-instance v3, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$zvyoHMuUjlR6GlzQRS2JqHTLVoE;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$zvyoHMuUjlR6GlzQRS2JqHTLVoE;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    .line 6127
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    .line 6136
    new-instance v3, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$7R7XOVBEOg0jkuGUapCj3Y4lhrc;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$7R7XOVBEOg0jkuGUapCj3Y4lhrc;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    .line 6163
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$12;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$12;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 6224
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 6466
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    .line 6556
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShouldBeLogging:Z

    .line 6585
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlreadySendedSALogging:Z

    .line 6588
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmIntent:Landroid/content/Intent;

    .line 6589
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 6590
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmManager:Landroid/app/AlarmManager;

    .line 6629
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$13;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$13;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldableLoggingReceiver:Landroid/content/BroadcastReceiver;

    .line 6647
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    .line 6649
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$14;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$14;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 6669
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    .line 6670
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    .line 6736
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 6818
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$16;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 6921
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 6925
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 411
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 412
    move-object v0, p2

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 413
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    .line 415
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->setSamsungPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 419
    new-instance v0, Lcom/android/server/policy/OneHandOpPolicyManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/OneHandOpPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    .line 422
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v0, :cond_168

    .line 423
    new-instance v0, Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/TspStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    .line 426
    :cond_168
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->setNeedDarkSystemBar(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyShortPressLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyOnLockScreen:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyShortPressLaunchApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyOnLockScreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoubleLaunchInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsBixbySetupWizardMode:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashlightLevel:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->convertToFlashlightLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSideKeyDoubleTapAppInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavigationBarGestureDetailType:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHasNavigationBarGesture:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReducedAnimEnabled:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDeviceDefaultNavigationBarColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Landroid/widget/Toast;

    .line 226
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintupleTapLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMatchWithLauncherApps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPressedHotKey:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/policy/PhoneWindowManagerExt;IJI)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleStartTransitionForKeyguardLw(IJI)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleThreeFingerTap(II)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVrImmersiveMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/PhoneWindowManagerExt;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # I

    .line 226
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSBikeModeOn:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p1, "x1"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    return p1
.end method

.method private answerCallByHomeKey(Z)Z
    .registers 7
    .param p1, "down"    # Z

    .line 4684
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4685
    return v1

    .line 4688
    :cond_6
    const/4 v0, 0x1

    const-string v2, "PhoneWindowManagerExt"

    if-eqz p1, :cond_3f

    .line 4689
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 4690
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 4691
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_3e

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SKT_PHONE_RELAX_MODE:Z

    if-eqz v4, :cond_23

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    if-nez v4, :cond_3e

    .line 4693
    :cond_23
    const-string/jumbo v1, "ringing: Accept the call!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4695
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 4696
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v1, :cond_38

    .line 4697
    const/4 v1, 0x0

    const-string v4, "VCHA"

    invoke-static {v4, v1}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    :cond_38
    const-string v1, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    return v0

    .line 4702
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3e
    goto :goto_5b

    .line 4703
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->answerVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 4704
    const-string v1, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    return v0

    .line 4708
    :cond_51
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    if-eqz v3, :cond_5b

    .line 4709
    const-string v1, "Ignoring HOME; consumed by accept call."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    return v0

    .line 4714
    :cond_5b
    :goto_5b
    return v1
.end method

.method private answerVoIPCall()Z
    .registers 4

    .line 4665
    const-string v0, "PhoneWindowManagerExt"

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 4666
    .local v1, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_12

    .line 4667
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 4668
    const-string v2, "VU; while ringing: Answer VoIPcall!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_13

    .line 4669
    const/4 v0, 0x1

    return v0

    .line 4673
    .end local v1    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_12
    goto :goto_19

    .line 4671
    :catch_13
    move-exception v1

    .line 4672
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4675
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method private boostHome(Z)V
    .registers 7
    .param p1, "isBixbyService"    # Z

    .line 3702
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3703
    const/16 v1, 0x64

    .line 3704
    .local v1, "timeout":I
    if-eqz p1, :cond_9

    .line 3705
    const/16 v1, 0x3e8

    .line 3707
    :cond_9
    :try_start_9
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->sSupportedCpuFreqTable:[I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_21

    if-eqz v2, :cond_1f

    .line 3709
    :try_start_d
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_21

    .line 3713
    goto :goto_1f

    .line 3710
    :catch_13
    move-exception v2

    .line 3711
    .local v2, "e":Ljava/lang/Exception;
    :try_start_14
    const-string v3, "PhoneWindowManagerExt"

    const-string/jumbo v4, "sHomeBooster is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3715
    .end local v1    # "timeout":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 3716
    return-void

    .line 3715
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private callOneTouchReport()V
    .registers 7

    .line 2996
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isOneTouchReportEnabled()Z

    move-result v0

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_4d

    .line 2998
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v2, 0x0

    const-string/jumbo v3, "tel"

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    if-eqz v0, :cond_1e

    .line 2999
    new-instance v0, Landroid/content/Intent;

    .line 3000
    const-string v5, "114"

    invoke-static {v3, v5, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_29

    .line 3002
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    .line 3003
    const-string v5, "112"

    invoke-static {v3, v5, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3005
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_29
    const-string/jumbo v2, "startFlag"

    const-string v3, "002"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3006
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3007
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3008
    const-string/jumbo v2, "start OneTouchReport"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZ)Z

    .line 3013
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_52

    .line 3014
    :cond_4d
    const-string v0, "OneTouchReport was disable"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :goto_52
    return-void
.end method

.method private canLaunchAppByKeyboard()Z
    .registers 4

    .line 5068
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-nez v0, :cond_d

    .line 5069
    const-string v0, "canLaunchAppByKeyboard : Boot is not completed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    return v1

    .line 5073
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5074
    const-string v0, "canLaunchAppByKeyboard : User setup is not completed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    return v1

    .line 5078
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5079
    const-string v0, "canLaunchAppByKeyboard : Keyguard is shown"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    return v1

    .line 5083
    :cond_29
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_33

    .line 5084
    const-string v0, "canLaunchAppByKeyboard : Factory binary"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    return v1

    .line 5088
    :cond_33
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5089
    const-string v0, "canLaunchAppByKeyboard : Automatic test mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    return v1

    .line 5093
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method private cancelLaunchAppByHotKeyPendingAction()V
    .registers 3

    .line 5362
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5363
    return-void
.end method

.method private cancelWakeAndUnlockPendingAction()V
    .registers 3

    .line 6123
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6124
    return-void
.end method

.method private cancelWakeUpReasonFingerprintPendingAction()V
    .registers 3

    .line 6145
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6146
    return-void
.end method

.method private checkPolicyAfterKeyCombination(I)I
    .registers 4
    .param p1, "keyCode"    # I

    .line 2595
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    .line 2597
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2598
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "interceptKeyTq : Key was blocked by interaction control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v0, 0x2

    return v0

    .line 2602
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method private checkPolicyBeforeDispatching(Landroid/view/KeyEvent;I)J
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "displayId"    # I

    .line 2568
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2571
    .local v0, "keyCode":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_THREE_FINGER_GESTURE:Z

    if-eqz v1, :cond_1e

    .line 2572
    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_22

    goto :goto_1e

    .line 2581
    :pswitch_e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;

    invoke-direct {v4, p0, p2}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2582
    return-wide v1

    .line 2577
    :pswitch_19
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2578
    return-wide v1

    .line 2590
    :cond_1e
    :goto_1e
    const-wide/16 v1, 0x0

    return-wide v1

    nop

    :pswitch_data_22
    .packed-switch 0x43d
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method

.method private checkPolicyBeforeQueueing(Landroid/view/KeyEvent;)I
    .registers 15
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2497
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 2498
    .local v1, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 2499
    .local v2, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_16

    move v3, v4

    goto :goto_17

    :cond_16
    move v3, v5

    .line 2500
    .local v3, "down":Z
    :goto_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_29

    move v6, v4

    goto :goto_2a

    :cond_29
    move v6, v5

    .line 2504
    .local v6, "external":Z
    :goto_2a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 2505
    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v7

    .line 2506
    .local v7, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    const-string v9, "PhoneWindowManagerExt"

    const/4 v10, 0x2

    if-eqz v7, :cond_82

    .line 2507
    iget v11, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    if-ne v11, v10, :cond_48

    .line 2508
    const/16 v11, 0x1a

    if-ne v0, v11, :cond_82

    if-eqz v1, :cond_42

    if-nez v3, :cond_82

    .line 2509
    :cond_42
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v11, p1, v5}, Lcom/android/server/policy/KeyCustomizeManager;->sendBroadcast(Landroid/view/KeyEvent;Z)I

    goto :goto_82

    .line 2511
    :cond_48
    iget v11, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_82

    .line 2512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key was blocked by KeyCustomizePolicy. keyCoe="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    if-eqz v3, :cond_81

    if-nez v1, :cond_81

    iget v4, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v8, 0x32

    if-ne v4, v8, :cond_81

    .line 2515
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10405c2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2518
    :cond_81
    return v10

    .line 2535
    .end local v7    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_82
    :goto_82
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-ne v5, v4, :cond_ac

    .line 2537
    const/16 v4, 0xbb

    if-ne v0, v4, :cond_9a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->isRecentsAllowed(I)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 2538
    const-string v4, "Recent Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    return v10

    .line 2542
    :cond_9a
    if-ne v0, v8, :cond_ac

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->isHomeAllowed(I)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 2543
    const-string v4, "Home Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    return v10

    .line 2551
    :cond_ac
    const/16 v4, 0x19

    if-eq v0, v4, :cond_b4

    const/16 v4, 0x18

    if-ne v0, v4, :cond_d5

    :cond_b4
    if-nez v1, :cond_b8

    if-nez v3, :cond_d5

    .line 2554
    :cond_b8
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v4, :cond_d5

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 2555
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 2557
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_d4

    const-string/jumbo v4, "knox: volume key is blocked"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_d4
    return v10

    .line 2564
    :cond_d5
    const/4 v4, -0x1

    return v4
.end method

.method private checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 3758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemkey requested code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3761
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v0

    .line 3762
    .local v0, "info":Lcom/android/internal/policy/KeyInterceptionInfo;
    if-eqz v0, :cond_39

    iget v2, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v3, 0x7f8

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 3763
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3764
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3765
    const/4 v1, -0x1

    return v1

    .line 3768
    :cond_39
    const-string/jumbo v2, "sec check systemkey before dispatching"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    const/4 v1, 0x0

    return v1
.end method

.method private convertToFlashlightLevel(I)I
    .registers 5
    .param p1, "settingValue"    # I

    .line 4182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->FLASHLIGHT_VALUE:[I

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 4183
    aget v1, v1, v0

    if-ne p1, v1, :cond_b

    .line 4184
    return v0

    .line 4182
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4187
    .end local v0    # "i":I
    :cond_e
    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private doubleTapCameraLaunchPolicy(I)Z
    .registers 7
    .param p1, "keyCode"    # I

    .line 2859
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapLaunchPolicy(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2860
    return v1

    .line 2863
    :cond_8
    const/16 v0, 0x1a

    const-string v2, "double tap was blocked because doubleTapBehavior is false, keyCode="

    const-string v3, "PhoneWindowManagerExt"

    const/4 v4, 0x3

    if-ne p1, v0, :cond_28

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    if-eq v0, v4, :cond_28

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    return v1

    .line 2870
    :cond_28
    const/4 v0, 0x1

    if-ne p1, v4, :cond_42

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    if-eq v4, v0, :cond_42

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    return v1

    .line 2878
    :cond_42
    return v0
.end method

.method private doubleTapLaunchPolicy(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 2883
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_f

    .line 2884
    const-string v0, "double tap was blocked by OTA status"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    return v1

    .line 2887
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2888
    const-string v0, "double tap was blocked by SimLock"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    return v1

    .line 2891
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2892
    const-string v0, "double tap was blocked by CarrierLock"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    return v1

    .line 2896
    :cond_29
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_39

    .line 2897
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2898
    const-string v0, "double tap was blocked by LUC policy"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    return v1

    .line 2902
    :cond_39
    const/4 v0, 0x3

    .line 2903
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2904
    const-string v0, "double tap was blocked by interaction control"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    return v1

    .line 2908
    :cond_46
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_54

    .line 2909
    const-string v0, "double tap was blocked because UserSetup isn\'t completed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    return v1

    .line 2914
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2915
    const-string v0, "double tap was blocked because cover was closed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    return v1

    .line 2921
    :cond_60
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2922
    const-string v0, "double tap was blocked by SystemKeyRequested"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    return v1

    .line 2927
    :cond_6e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SBIKE_MODE:Z

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSBikeModeOn:Z

    if-eqz v0, :cond_7c

    .line 2928
    const-string v0, "double tap was blocked by Sbike Mode."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    return v1

    .line 2932
    :cond_7c
    const/4 v0, 0x1

    return v0
.end method

.method private doubleTapSideKeyLaunchPolicy(ZI)Z
    .registers 6
    .param p1, "interactive"    # Z
    .param p2, "type"    # I

    .line 4080
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapLaunchPolicy(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4081
    return v1

    .line 4089
    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CHILE_CMAS_DIALOG:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z

    if-eqz v0, :cond_1a

    .line 4090
    const-string v0, "PhoneWindowManagerExt"

    const-string v2, "Side Key double tap was blocked by chile CMAS dialog."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    return v1

    .line 4093
    :cond_1a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2a

    .line 4094
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    .line 4095
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 4096
    :cond_29
    return v1

    .line 4098
    :cond_2a
    return v0
.end method

.method private enableOrDisableDexMode()V
    .registers 5

    .line 5779
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5781
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v1

    if-nez v1, :cond_f

    .line 5783
    const/4 v1, 0x1

    .local v1, "value":I
    goto :goto_10

    .line 5786
    .end local v1    # "value":I
    :cond_f
    const/4 v1, 0x2

    .line 5788
    .restart local v1    # "value":I
    :goto_10
    const-string v2, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5789
    const/4 v2, 0x6

    const-string v3, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5791
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5792
    return-void
.end method

.method private getAccessibilityManagerService()Landroid/view/accessibility/IAccessibilityManager;
    .registers 3

    .line 4589
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_11

    .line 4590
    nop

    .line 4591
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4590
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    .line 4594
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_1c

    .line 4595
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "Unable to find accessibilityManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private getBixbyToast()Ljava/lang/String;
    .registers 3

    .line 4533
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-eqz v0, :cond_1d

    .line 4534
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4537
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCameraId()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 4215
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 4216
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 4217
    .local v3, "id":Ljava/lang/String;
    nop

    .line 4218
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 4219
    .local v4, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4220
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 4221
    .local v5, "flashAvailable":Ljava/lang/Boolean;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4222
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4223
    .local v6, "lensFacing":Ljava/lang/Integer;
    if-eqz v5, :cond_39

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_39

    if-eqz v6, :cond_39

    .line 4224
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    .line 4225
    return-object v3

    .line 4216
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v5    # "flashAvailable":Ljava/lang/Boolean;
    .end local v6    # "lensFacing":Ljava/lang/Integer;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4228
    :cond_3c
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCameraManager()Landroid/hardware/camera2/CameraManager;
    .registers 3

    .line 4208
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_10

    .line 4209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4211
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method private getDeviceDefaultNavigationBarColor()I
    .registers 4

    .line 3126
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 3127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 3129
    .local v0, "deviceDefaultColor":I
    return v0
.end method

.method private getEmergencyModeToast(Landroid/content/Intent;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 4104
    const/4 v0, -0x1

    .line 4105
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4106
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 4108
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_13

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_4c

    .line 4109
    :cond_13
    const-string v5, "PhoneWindowManagerExt"

    const-string v6, "Do not launch app because app is not added in emergency or mpsm mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    const/4 v5, 0x0

    .line 4112
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1b
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_21

    move-object v5, v6

    .line 4115
    goto :goto_25

    .line 4113
    :catch_21
    move-exception v6

    .line 4114
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4116
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_25
    if-eqz v5, :cond_4c

    .line 4117
    const/4 v6, 0x1

    if-eqz p3, :cond_31

    if-eq p3, v6, :cond_2d

    .line 4127
    return-object v4

    .line 4123
    :cond_2d
    const v0, 0x10403fd

    .line 4125
    goto :goto_35

    .line 4119
    :cond_31
    const v0, 0x10403fc

    .line 4120
    nop

    .line 4130
    :goto_35
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    .line 4131
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 4130
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4135
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4c
    return-object v4
.end method

.method private getIntentBixbyService(Landroid/view/KeyEvent;ZZZZ)Landroid/content/Intent;
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "longPress"    # Z
    .param p4, "doubleTap"    # Z
    .param p5, "isUnlockFP"    # Z

    .line 4459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4460
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4461
    if-eqz p1, :cond_15

    .line 4462
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    const-string v2, "KEYEVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4464
    :cond_15
    const/4 v1, 0x2

    const-string v2, "BIXBY_KEY_FW_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4465
    const-string v1, "INTERACTIVE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4467
    const/4 v1, -0x1

    .line 4468
    .local v1, "keyPressType":I
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_KEY:Z

    if-nez v2, :cond_29

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v2, :cond_35

    .line 4470
    :cond_29
    if-eqz p3, :cond_2d

    .line 4471
    const/4 v1, 0x1

    goto :goto_30

    .line 4472
    :cond_2d
    if-eqz p4, :cond_30

    .line 4473
    const/4 v1, 0x2

    .line 4475
    :cond_30
    :goto_30
    const-string v2, "RESULT_BY_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4478
    :cond_35
    if-eqz p5, :cond_3b

    .line 4483
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->boostHome(Z)V

    .line 4487
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBixbyService keyPressType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " interactive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isUnlockFP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " longPress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " doubleTap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindowManagerExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 3481
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getReserveBatteryModeToast(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6684
    const/4 v0, 0x0

    .line 6685
    .local v0, "toastString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6686
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 6688
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_12

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_40

    .line 6689
    :cond_12
    const-string v4, "PhoneWindowManagerExt"

    const-string v5, "Do not launch app because reserve battery mode running."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    const/4 v4, 0x0

    .line 6692
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1a
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_20

    move-object v4, v5

    .line 6695
    goto :goto_24

    .line 6693
    :catch_20
    move-exception v5

    .line 6694
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 6696
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_24
    if-eqz v4, :cond_40

    .line 6697
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const v6, 0x1040a38

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 6699
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 6697
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6702
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_40
    return-object v0
.end method

.method private getSalesCode()Ljava/lang/String;
    .registers 5

    .line 6323
    sget-object v0, Lcom/samsung/android/rune/CoreRune;->FW_SETTINGS_MENU_TREE_CDOE:Ljava/lang/String;

    .line 6324
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 6326
    :try_start_8
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 6327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 6328
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1f

    move-object v0, v1

    .line 6332
    :cond_1e
    goto :goto_27

    .line 6330
    :catch_1f
    move-exception v1

    .line 6331
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "getSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6334
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-object v0
.end method

.method private getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .line 4639
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVoIPInterfaceService:Landroid/os/IVoIPInterface;

    if-nez v0, :cond_12

    .line 4640
    nop

    .line 4641
    const-string/jumbo v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4640
    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVoIPInterfaceService:Landroid/os/IVoIPInterface;

    .line 4644
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVoIPInterfaceService:Landroid/os/IVoIPInterface;

    if-nez v0, :cond_1d

    .line 4645
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "Unable to find IVoIPInterface interface."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVoIPInterfaceService:Landroid/os/IVoIPInterface;

    return-object v0
.end method

.method private handleDoubleTapLaunchTvMode()V
    .registers 2

    .line 3803
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapLaunchPolicy(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3804
    return-void

    .line 3806
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchDoubleTapTvMode()V

    .line 3807
    return-void
.end method

.method private handleDoubleTapSideKeyAction(Landroid/view/KeyEvent;Z)V
    .registers 16
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 3962
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    .line 3963
    .local v7, "type":I
    invoke-direct {p0, p2, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapSideKeyLaunchPolicy(ZI)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3964
    return-void

    .line 3967
    :cond_9
    const/4 v0, 0x0

    .line 3968
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 3970
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "PhoneWindowManagerExt"

    const/4 v3, 0x1

    if-nez v7, :cond_17

    .line 3971
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->COMPONENT_CAMERA_APP:Landroid/content/ComponentName;

    .line 3972
    const-string v1, "com.sec.android.app.camera"

    move-object v8, v0

    move-object v9, v1

    goto :goto_4f

    .line 3973
    :cond_17
    if-ne v7, v3, :cond_20

    .line 3974
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->COMPONENT_BIXBY_APP:Landroid/content/ComponentName;

    .line 3975
    const-string v1, "com.samsung.android.bixby.agent"

    move-object v8, v0

    move-object v9, v1

    goto :goto_4f

    .line 3976
    :cond_20
    const/4 v4, 0x2

    if-ne v7, v4, :cond_45

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    .line 3978
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 3979
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3980
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchForSideKey()V

    .line 3981
    return-void

    .line 3983
    :cond_3e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    .line 3984
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v1

    goto :goto_4f

    .line 3987
    :cond_45
    const/4 v4, 0x3

    if-ne v7, v4, :cond_ca

    .line 3988
    const-string v4, "Quick Switch Triggered."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    move-object v9, v1

    .line 3995
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "packageName":Ljava/lang/String;
    .local v8, "component":Landroid/content/ComponentName;
    .local v9, "packageName":Ljava/lang/String;
    :goto_4f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 3996
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3997
    const/high16 v0, 0x10200000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3999
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4001
    const/4 v0, 0x0

    invoke-direct {p0, v10, v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToastMessageIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 4002
    return-void

    .line 4005
    :cond_6c
    const/4 v0, 0x0

    .line 4006
    .local v0, "neededPendingIntent":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v11, v1

    .line 4007
    .local v11, "filterIntent":Landroid/content/Intent;
    const-string v1, "afterKeyguardGone"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4008
    const-string/jumbo v1, "ignoreKeyguardState"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4009
    const-string v1, "dismissIfInsecure"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4011
    const/4 v1, 0x0

    .line 4012
    .local v1, "isClearTypeCoverClosed":Z
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCoverController()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v4

    .line 4013
    .local v4, "coverPolicyController":Lcom/android/server/wm/CoverPolicyController;
    if-eqz v4, :cond_a1

    .line 4014
    invoke-virtual {v4}, Lcom/android/server/wm/CoverPolicyController;->isClearTypeCoverClosed()Z

    move-result v1

    .line 4015
    if-eqz v1, :cond_9f

    .line 4016
    const-string/jumbo v5, "showCoverToast"

    invoke-virtual {v11, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4017
    const/4 v0, 0x1

    .line 4018
    const-string/jumbo v3, "handleDoubleTapSideKeyAction SHOW_COVER_TOAST is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    goto :goto_a2

    .line 4015
    :cond_9f
    move v12, v0

    goto :goto_a2

    .line 4013
    :cond_a1
    move v12, v0

    .line 4021
    .end local v0    # "neededPendingIntent":Z
    .local v12, "neededPendingIntent":Z
    :goto_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDoubleTapSideKeyAction isCoverClosed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " neededPendingIntent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    .end local v1    # "isClearTypeCoverClosed":Z
    .end local v4    # "coverPolicyController":Lcom/android/server/wm/CoverPolicyController;
    move-object v0, p0

    move v1, v7

    move-object v2, v10

    move v3, v12

    move-object v4, v11

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppBySideKeyDoubleType(ILandroid/content/Intent;ZLandroid/content/Intent;Landroid/view/KeyEvent;Z)V

    .line 4026
    return-void

    .line 3991
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "filterIntent":Landroid/content/Intent;
    .end local v12    # "neededPendingIntent":Z
    .local v0, "component":Landroid/content/ComponentName;
    .local v1, "packageName":Ljava/lang/String;
    :cond_ca
    const-string v3, "component and packageName are not set properly."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    return-void
.end method

.method private handleLongPressOnRecent(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 4368
    const-string v0, "PhoneWindowManagerExt"

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 4370
    :try_start_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "Recent long press used in Lock task mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    :cond_17
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1f

    .line 4374
    goto :goto_25

    .line 4372
    :catch_1f
    move-exception v1

    .line 4373
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to reach activity manager"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4375
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void

    .line 4381
    :cond_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 4383
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJI)I
    .registers 6
    .param p1, "transit"    # I
    .param p2, "duration"    # J
    .param p4, "displayId"    # I

    .line 5975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method private handleThreeFingerTap(II)V
    .registers 5
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 6178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleThreeFingerTap behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    const/4 v0, 0x1

    if-eq p1, v0, :cond_43

    const/4 v0, 0x5

    if-eq p1, v0, :cond_35

    const/4 v0, 0x6

    if-eq p1, v0, :cond_26

    .line 6204
    const-string v0, "The 3FingerTap type was wrong."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 6194
    :cond_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 6195
    .local v0, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_47

    .line 6197
    const/4 v1, 0x0

    :try_start_2f
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 6200
    :goto_32
    goto :goto_47

    .line 6198
    :catch_33
    move-exception v1

    goto :goto_32

    .line 6184
    .end local v0    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_35
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 6185
    .local v0, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_47

    .line 6187
    :try_start_3d
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_41

    .line 6190
    :goto_40
    goto :goto_47

    .line 6188
    :catch_41
    move-exception v1

    goto :goto_40

    .line 6181
    .end local v0    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_43
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startActivityAppsScreen()V

    .line 6182
    nop

    .line 6207
    :cond_47
    :goto_47
    return-void
.end method

.method private handleTorchForSideKey()V
    .registers 2

    .line 4274
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4275
    return-void

    .line 4278
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchKey()V

    .line 4279
    return-void
.end method

.method private handleTorchForXCoverKey(Z)Z
    .registers 4
    .param p1, "enableKeyOnLockScreen"    # Z

    .line 4305
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4306
    return v1

    .line 4309
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_13

    goto :goto_14

    .line 4314
    :cond_13
    return v1

    .line 4310
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchKey()V

    .line 4311
    const/4 v0, 0x1

    return v0
.end method

.method private handleTorchKey()V
    .registers 6

    .line 4282
    const-string v0, "Couldn\'t initialize: "

    const-string v1, "PhoneWindowManagerExt"

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLowBattery:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z

    if-nez v2, :cond_d

    .line 4283
    return-void

    .line 4286
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 4287
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initCameraManager()V

    .line 4291
    :cond_14
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light torchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_70

    .line 4293
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z

    if-nez v4, :cond_44

    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_48
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_14 .. :try_end_48} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_48} :catch_49

    goto :goto_70

    .line 4297
    :catch_49
    move-exception v2

    .line 4298
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 4295
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5d
    move-exception v2

    .line 4296
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_70
    :goto_70
    nop

    .line 4300
    :goto_71
    return-void
.end method

.method private handleXCoverKey(ZZI)Z
    .registers 9
    .param p1, "isTopKey"    # Z
    .param p2, "longPress"    # Z
    .param p3, "displayId"    # I

    .line 4334
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 4335
    const-string v0, "PhoneWindowManagerExt"

    const-string v2, "Block handling XCoverKey because of Automatic Test Mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    return v1

    .line 4339
    :cond_11
    const/4 v0, 0x0

    .line 4341
    .local v0, "launchApp":Ljava/lang/String;
    if-eqz p2, :cond_1d

    .line 4342
    if-eqz p1, :cond_19

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    goto :goto_1b

    :cond_19
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    :goto_1b
    move-object v0, v2

    goto :goto_25

    .line 4344
    :cond_1d
    if-eqz p1, :cond_22

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyShortPressLaunchApp:Ljava/lang/String;

    goto :goto_24

    :cond_22
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyShortPressLaunchApp:Ljava/lang/String;

    :goto_24
    move-object v0, v2

    .line 4347
    :goto_25
    if-eqz p1, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyOnLockScreen:Z

    goto :goto_2c

    :cond_2a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyOnLockScreen:Z

    .line 4349
    .local v2, "enableKeyOnLockScreen":Z
    :goto_2c
    const-string/jumbo v3, "torch/torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4350
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchForXCoverKey(Z)Z

    move-result v1

    return v1

    .line 4351
    :cond_3a
    const-string v3, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 4352
    return v1

    .line 4353
    :cond_43
    const-string/jumbo v3, "home/home"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_58

    .line 4354
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$n6s19dvnp0xC1-HlFWzeeewh3Vk;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$n6s19dvnp0xC1-HlFWzeeewh3Vk;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4355
    return v4

    .line 4356
    :cond_58
    const-string v3, "back/back"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 4357
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 4358
    return v4

    .line 4360
    :cond_65
    return v1
.end method

.method private hideCurrentInputMethodIfPossible()V
    .registers 3

    .line 3591
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_12

    .line 3592
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 3593
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 3595
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_20

    .line 3596
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 3599
    :cond_20
    return-void
.end method

.method private initB2BDedicatedEPTT()V
    .registers 14

    .line 6289
    const-string v0, "com.att.eptt"

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6290
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .line 6292
    .local v2, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_f

    .line 6297
    goto :goto_18

    .line 6294
    :catch_f
    move-exception v3

    .line 6295
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 6296
    const-string v4, "PhoneWindowManagerExt"

    const-string v5, "eptt package is not found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_18
    const/4 v3, 0x3

    .line 6300
    .local v3, "pressType":I
    const/16 v4, 0x44e

    .line 6301
    .local v4, "priority":I
    const/16 v5, 0x3f7

    .line 6302
    .local v5, "keyCode":I
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 6303
    const/4 v7, 0x3

    const/16 v8, 0x3f7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v6

    .line 6305
    .local v6, "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    const/4 v9, 0x0

    const/16 v10, 0x44e

    if-eqz v2, :cond_60

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getSalesCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ATT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getSalesCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AIO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 6306
    :cond_43
    if-nez v6, :cond_7b

    .line 6307
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6308
    .local v11, "intent":Landroid/content/Intent;
    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6309
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6310
    new-instance v0, Landroid/view/WindowManager$KeyCustomizeInfo;

    const/4 v12, 0x2

    invoke-direct {v0, v10, v8, v12, v11}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6312
    .local v0, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v8, v7, v0, v9}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6313
    .end local v0    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    goto :goto_7b

    .line 6315
    :cond_60
    if-eqz v6, :cond_7b

    iget v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-ne v11, v10, :cond_7b

    iget-object v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7b

    iget-object v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    .line 6316
    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 6317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/server/policy/KeyCustomizeManager;->removeKeyCustomizeEvent(IIIZ)V

    .line 6320
    :cond_7b
    :goto_7b
    return-void
.end method

.method private initCameraManager()V
    .registers 4

    .line 4196
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_6} :catch_7

    .line 4200
    goto :goto_12

    .line 4197
    :catch_7
    move-exception v0

    .line 4198
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    .line 4199
    const-string v1, "PhoneWindowManagerExt"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4202
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 4203
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 4205
    :cond_21
    return-void
.end method

.method private initHomeBooster()V
    .registers 6

    .line 3687
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3688
    :try_start_3
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_13

    .line 3689
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "HOME_BOOSTER"

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3692
    :cond_13
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_31

    .line 3693
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sSupportedCpuFreqTable:[I

    .line 3694
    if-eqz v1, :cond_31

    .line 3695
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 3698
    :cond_31
    monitor-exit v0

    .line 3699
    return-void

    .line 3698
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private initIntent()V
    .registers 5

    .line 617
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_34

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintupleTapLaunchIntent:Landroid/content/Intent;

    .line 619
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintupleTapLaunchIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "go.police.report"

    const-string/jumbo v3, "go.police.report.Report"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 623
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintupleTapLaunchIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z

    .line 624
    if-eqz v0, :cond_31

    .line 625
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    goto :goto_34

    .line 627
    :cond_31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 630
    :cond_34
    :goto_34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_66

    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 632
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    .line 634
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_66

    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 636
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.notes"

    const-string v3, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 641
    :cond_66
    return-void
.end method

.method private initVZWDedicatedPTT()V
    .registers 14

    .line 6255
    const-string v0, "com.verizon.pushtotalkplus"

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6256
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .line 6258
    .local v2, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_f

    .line 6263
    goto :goto_19

    .line 6260
    :catch_f
    move-exception v3

    .line 6261
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 6262
    const-string v4, "PhoneWindowManagerExt"

    const-string/jumbo v5, "pushtotalkplus package is not found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_19
    const/4 v3, 0x3

    .line 6266
    .local v3, "pressType":I
    const/16 v4, 0x44e

    .line 6267
    .local v4, "priority":I
    const/16 v5, 0x3f7

    .line 6268
    .local v5, "keyCode":I
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 6269
    const/4 v7, 0x3

    const/16 v8, 0x3f7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v6

    .line 6271
    .local v6, "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    const/4 v9, 0x0

    const/16 v10, 0x44e

    if-eqz v2, :cond_61

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getSalesCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "VZW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getSalesCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "VPP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_61

    .line 6272
    :cond_44
    if-nez v6, :cond_7c

    .line 6273
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6274
    .local v11, "intent":Landroid/content/Intent;
    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6275
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6276
    new-instance v0, Landroid/view/WindowManager$KeyCustomizeInfo;

    const/4 v12, 0x2

    invoke-direct {v0, v10, v8, v12, v11}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6278
    .local v0, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v8, v7, v0, v9}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6279
    .end local v0    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    goto :goto_7c

    .line 6281
    :cond_61
    if-eqz v6, :cond_7c

    iget v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-ne v11, v10, :cond_7c

    iget-object v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7c

    iget-object v11, v6, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    .line 6282
    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 6283
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/server/policy/KeyCustomizeManager;->removeKeyCustomizeEvent(IIIZ)V

    .line 6286
    :cond_7c
    :goto_7c
    return-void
.end method

.method private interceptKeySendToDexBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .registers 10
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "displayId"    # I

    .line 5800
    const/4 v0, 0x0

    .line 5801
    .local v0, "ret":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 5802
    .local v1, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_f

    move v2, v4

    goto :goto_10

    :cond_f
    move v2, v3

    .line 5804
    .local v2, "down":Z
    :goto_10
    const/16 v5, 0x43c

    if-ne v1, v5, :cond_1a

    if-nez v2, :cond_1a

    .line 5805
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->enableOrDisableDexMode()V

    .line 5806
    return v4

    .line 5809
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayDexEnabled(I)Z

    move-result v5

    if-nez v5, :cond_21

    .line 5810
    return v3

    .line 5813
    :cond_21
    const/16 v3, 0x30

    if-eq v1, v3, :cond_64

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_4d

    packed-switch v1, :pswitch_data_82

    packed-switch v1, :pswitch_data_98

    packed-switch v1, :pswitch_data_a4

    goto :goto_80

    .line 5865
    :pswitch_33
    invoke-direct {p0, p2, p3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 5866
    const/4 v0, 0x1

    goto :goto_80

    .line 5853
    :pswitch_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v3

    if-nez v3, :cond_80

    if-eqz v2, :cond_80

    .line 5854
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v3, p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->handleDexDpadShortcut(Landroid/os/IBinder;Landroid/view/KeyEvent;)V

    .line 5855
    const/4 v0, 0x1

    goto :goto_80

    .line 5815
    :cond_4d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v3

    if-nez v3, :cond_80

    .line 5816
    if-eqz v2, :cond_62

    .line 5817
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    .line 5819
    :cond_62
    const/4 v0, 0x1

    goto :goto_80

    .line 5834
    :cond_64
    :pswitch_64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 5835
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5836
    .local v3, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v3, :cond_79

    .line 5837
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5838
    invoke-static {v4, p3}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result v4

    .line 5837
    invoke-interface {v3, p2, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    .line 5841
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v4

    if-nez v4, :cond_80

    .line 5842
    const/4 v0, 0x1

    .line 5870
    .end local v3    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_80
    :goto_80
    return v0

    nop

    :pswitch_data_82
    .packed-switch 0x8
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x13
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x43d
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private isActivitiesAvailable(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3059
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3060
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2f

    .line 3062
    const/high16 v1, 0x50000

    :try_start_a
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3064
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_12} :catch_17

    if-lez v2, :cond_16

    .line 3065
    const/4 v2, 0x1

    return v2

    .line 3069
    .end local v1    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_16
    goto :goto_2f

    .line 3067
    :catch_17
    move-exception v1

    .line 3068
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isActivitiesAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindowManagerExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    return v1
.end method

.method private isBellPTTPackageAvailable()Z
    .registers 3

    .line 6726
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyShortPressLaunchApp:Ljava/lang/String;

    const-string v1, "com.bell.ptt/com.bell.ptt.StartupActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    .line 6727
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6726
    :goto_15
    return v0
.end method

.method private isBixbyServiceAvailable()Z
    .registers 10

    .line 4497
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 4498
    .local v0, "isInstalledBixby":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    .line 4499
    .local v3, "userSetupComplete":Z
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result v4

    .line 4500
    .local v4, "carrierLocked":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4501
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v5

    .line 4502
    .local v5, "simLocked":Z
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v6, :cond_25

    .line 4503
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v1

    goto :goto_26

    :cond_25
    move v6, v2

    .line 4504
    .local v6, "lucPolicy":Z
    :goto_26
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result v7

    .line 4505
    .local v7, "isDomesticOtaStart":Z
    if-eqz v0, :cond_36

    if-eqz v3, :cond_36

    if-nez v4, :cond_36

    if-nez v5, :cond_36

    if-nez v6, :cond_36

    if-eqz v7, :cond_79

    :cond_36
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v8, :cond_79

    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do nothing regarding key event of bixby service, installedBixby="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", setupComplete="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", carrierLocked="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", simLocked="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", lucPolicy="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDomesticOtaStart="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "PhoneWindowManagerExt"

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    return v2

    .line 4521
    :cond_79
    return v1
.end method

.method private isBlockedByXRDevices(IZI)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "external"    # Z
    .param p3, "deviceId"    # I

    .line 6863
    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_4c

    goto :goto_49

    .line 6868
    :cond_7
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isDock()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 6869
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->getHmtDevice()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v1

    .line 6870
    .local v1, "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    if-eqz v1, :cond_49

    if-nez p2, :cond_49

    const/4 v2, -0x1

    if-eq p3, v2, :cond_49

    .line 6872
    const/4 v2, 0x1

    if-ne p1, v0, :cond_28

    .line 6873
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isDeviceHomeKeysDisabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6874
    return v2

    .line 6875
    :cond_28
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_33

    .line 6876
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isDevicePowerKeysDisabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6877
    return v2

    .line 6878
    :cond_33
    const/16 v0, 0x19

    if-ne p1, v0, :cond_3e

    .line 6879
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isDeviceVolumeKeysDisabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 6880
    return v2

    .line 6881
    :cond_3e
    const/16 v0, 0x18

    if-ne p1, v0, :cond_49

    .line 6882
    invoke-virtual {v1}, Lcom/samsung/android/vr/HmtDevice;->isDeviceVolumeKeysDisabled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 6883
    return v2

    .line 6890
    .end local v1    # "hmtDevice":Lcom/samsung/android/vr/HmtDevice;
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private isCarrierLocked()Z
    .registers 3

    .line 4933
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4934
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4935
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4936
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 4934
    :goto_20
    return v1
.end method

.method private isDomesticOtaStart()Z
    .registers 3

    .line 4928
    const-string/jumbo v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDoubleTapLaunchCameraEnabled()Z
    .registers 3

    .line 2844
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method private isGameBoosterToggleMenuSupported()Z
    .registers 6

    .line 5138
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_11

    .line 5139
    const-string v0, "GameBooster is not launched on keyguard"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    return v1

    .line 5144
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.android.game.gametools"

    const/16 v4, 0x80

    .line 5145
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Feature.External.Action"

    const-string v4, ""

    .line 5146
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "togglemenu"

    .line 5147
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_30} :catch_31

    .line 5144
    return v0

    .line 5148
    :catch_31
    move-exception v0

    .line 5149
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GameBooster not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isHomeAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3501
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isInteractionControlEnabled(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 3548
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1e

    .line 3555
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return v0

    .line 3550
    :pswitch_8
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0

    .line 3553
    :pswitch_13
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x18
        :pswitch_13
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method private isMatchWithLauncherApps(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5284
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5285
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5286
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_36

    .line 5287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5288
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 5289
    const/4 v2, 0x1

    return v2

    .line 5291
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_35
    goto :goto_1d

    .line 5293
    :cond_36
    return v2
.end method

.method private isMissingPhoneLockEnabled()Z
    .registers 3

    .line 4918
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    const-string/jumbo v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4919
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 4922
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 4920
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method private isOneTouchReportEnabled()Z
    .registers 12

    .line 3019
    const/4 v0, 0x0

    .line 3022
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3023
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "PhoneWindowManagerExt"

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 3024
    const-string/jumbo v4, "go.police.report"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3025
    .local v4, "installerPackage":Ljava/lang/String;
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3026
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_25

    const-string/jumbo v5, "isOneTouchReportEnabled package is not installed.."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    :cond_25
    return v3

    .line 3032
    .end local v4    # "installerPackage":Ljava/lang/String;
    :cond_26
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3033
    .local v4, "resolver":Landroid/content/ContentResolver;
    if-eqz v4, :cond_7f

    .line 3034
    const-string v5, "content://go.police.provider.report"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3037
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_7c

    :try_start_3f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 3038
    const-string v6, "customer_agreement"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3039
    .local v6, "customerAgreementColumn":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7c

    .line 3040
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3041
    .local v7, "customerAgreementValue":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_56

    move v3, v8

    :cond_56
    move v0, v3

    .line 3042
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_7c

    .line 3043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isOneTouchReportEnabled customerAgreementValue="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_70} :catch_73
    .catchall {:try_start_3f .. :try_end_70} :catchall_71

    goto :goto_7c

    .line 3051
    .end local v6    # "customerAgreementColumn":I
    .end local v7    # "customerAgreementValue":I
    :catchall_71
    move-exception v2

    goto :goto_78

    .line 3048
    :catch_73
    move-exception v2

    .line 3049
    .local v2, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_7c

    .line 3051
    :goto_78
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3052
    throw v2

    .line 3051
    :cond_7c
    :goto_7c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3055
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_7f
    return v0
.end method

.method private isRecentsAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3491
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isReserveBatteryMode()Z
    .registers 3

    .line 6672
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6673
    return v1

    .line 6676
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    if-eqz v0, :cond_10

    .line 6677
    const/4 v0, 0x1

    return v0

    .line 6680
    :cond_10
    return v1
.end method

.method private isTalkbackEnabled()Z
    .registers 3

    .line 4610
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4611
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4612
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4613
    const/4 v1, 0x1

    return v1

    .line 4615
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private isVoIPRinging()Z
    .registers 5

    .line 4651
    const/4 v0, 0x0

    .line 4653
    .local v0, "isVoIPRinging":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 4654
    .local v1, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_c

    .line 4655
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 4659
    .end local v1    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    goto :goto_15

    .line 4657
    :catch_d
    move-exception v1

    .line 4658
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4660
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method private knoxCustomVolumeKeyAppSwitching(Z)I
    .registers 16
    .param p1, "isVolumeUpKey"    # Z

    .line 6956
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1bf

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 6957
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 6959
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGlobalActionsDialogShowing()Z

    move-result v0

    const/4 v2, 0x2

    const-string v3, "PhoneWindowManagerExt"

    if-eqz v0, :cond_30

    .line 6960
    const-string v0, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6961
    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGlobalActionsDialogPowerOptionHidden()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6962
    const-string v0, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6963
    return v1

    .line 6965
    :cond_2f
    return v2

    .line 6967
    :cond_30
    const-string v0, "Knox Custom: Volume Key app switching starting"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6968
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0

    .line 6969
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1b4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_1b4

    .line 6972
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox Custom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " apps in list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6973
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 6974
    .local v4, "activityManager":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 6976
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6977
    .local v7, "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6978
    .local v9, "appListItem":Ljava/lang/String;
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 6979
    .local v10, "appStartIntent":Landroid/content/Intent;
    if-eqz v10, :cond_a8

    .line 6980
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " available"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6981
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 6983
    :cond_a8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not available"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6985
    .end local v9    # "appListItem":Ljava/lang/String;
    .end local v10    # "appStartIntent":Landroid/content/Intent;
    :goto_bf
    goto :goto_7b

    .line 6986
    :cond_c0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_cd

    .line 6987
    const-string v1, "Knox Custom: no available apps"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b9

    .line 6991
    :cond_cd
    const v8, 0x7fffffff

    invoke-virtual {v4, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 6992
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6993
    .local v9, "foregroundApp":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in foreground"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    const/4 v10, -0x1

    .line 6996
    .local v10, "foregroundAppIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_fe
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_12e

    .line 6997
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12b

    .line 6998
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " found at index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6999
    move v10, v11

    .line 6996
    :cond_12b
    add-int/lit8 v11, v11, 0x1

    goto :goto_fe

    .line 7002
    .end local v11    # "i":I
    :cond_12e
    const/4 v11, -0x1

    if-ne v10, v11, :cond_148

    .line 7003
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not found in list; use first"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7006
    :cond_148
    move-object v11, v9

    .line 7007
    .local v11, "newApp":Ljava/lang/String;
    const/4 v12, 0x0

    .line 7008
    .local v12, "index":I
    if-eqz p1, :cond_156

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v1

    if-ge v10, v13, :cond_156

    .line 7009
    add-int/lit8 v1, v10, 0x1

    .end local v12    # "index":I
    .local v1, "index":I
    goto :goto_161

    .line 7011
    .end local v1    # "index":I
    .restart local v12    # "index":I
    :cond_156
    if-lez v10, :cond_15b

    .line 7012
    add-int/lit8 v1, v10, -0x1

    .end local v12    # "index":I
    .restart local v1    # "index":I
    goto :goto_161

    .line 7014
    .end local v1    # "index":I
    .restart local v12    # "index":I
    :cond_15b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    .line 7017
    .end local v12    # "index":I
    .restart local v1    # "index":I
    :goto_161
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    .line 7019
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_186

    .line 7020
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already in foreground"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b9

    .line 7022
    :cond_186
    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 7023
    .local v5, "appStartIntent":Landroid/content/Intent;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Knox Custom: switching to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7024
    if-eqz v5, :cond_1b9

    .line 7025
    const/high16 v12, 0x10400000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7028
    :try_start_1a5
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1ac
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a5 .. :try_end_1ac} :catch_1ad

    .line 7031
    goto :goto_1b9

    .line 7029
    :catch_1ad
    move-exception v12

    .line 7030
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string v13, "No activity to launch Knox Custom switching."

    invoke-static {v3, v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b9

    .line 6970
    .end local v1    # "index":I
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "appStartIntent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v9    # "foregroundApp":Ljava/lang/String;
    .end local v10    # "foregroundAppIndex":I
    .end local v11    # "newApp":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1b4
    :goto_1b4
    const-string v1, "Knox Custom: no apps in list"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    :cond_1b9
    :goto_1b9
    const-string v1, "Knox Custom: Volume Key app switching done"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7039
    return v2

    .line 7042
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1bf
    return v1
.end method

.method static synthetic lambda$injectionKeyEvent$8(III)V
    .registers 33
    .param p0, "key"    # I
    .param p1, "flags"    # I
    .param p2, "displayId"    # I

    .line 5261
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 5262
    .local v0, "instrumentation":Landroid/app/Instrumentation;
    new-instance v15, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, v15

    move/from16 v7, p0

    move/from16 v12, p1

    move/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 5265
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v16, v1

    move/from16 v22, p0

    move/from16 v27, p1

    move/from16 v29, p2

    invoke-direct/range {v16 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 5270
    .end local v0    # "instrumentation":Landroid/app/Instrumentation;
    goto :goto_43

    .line 5268
    :catch_3f
    move-exception v0

    .line 5269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method private static synthetic lambda$interceptKeyBeforeDispatching$2(I)V
    .registers 2
    .param p0, "adjustedDisplayId"    # I

    .line 963
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    return-void
.end method

.method private synthetic lambda$keyguardGoingAwayWithFingerprintUnlock$9()V
    .registers 2

    .line 6105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Z)V

    return-void
.end method

.method private launchAccessibilitySettingsIfPossible(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 5215
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canLaunchAppByKeyboard()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5216
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch AccessibilitySettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5218
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5219
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5220
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 5221
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5222
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5223
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5224
    const/4 v2, 0x1

    return v2

    .line 5226
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method private launchAppBySideKeyDoubleType(ILandroid/content/Intent;ZLandroid/content/Intent;Landroid/view/KeyEvent;Z)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "neededPendingIntent"    # Z
    .param p4, "filterIntent"    # Landroid/content/Intent;
    .param p5, "event"    # Landroid/view/KeyEvent;
    .param p6, "interactive"    # Z

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launchAppBySideKeyDoubleType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mKeyguardDelegate.isShowing()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4031
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " neededPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4030
    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    if-eqz p1, :cond_88

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_47

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3f

    .line 4073
    const-string/jumbo v0, "side key type was wrong."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 4065
    :cond_3f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_QUICK_SWITCH_PRIVATE_MODE:Z

    if-eqz v0, :cond_8e

    .line 4066
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchSecureFolder()V

    goto :goto_8e

    .line 4052
    :cond_47
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5a

    if-eqz p3, :cond_52

    goto :goto_5a

    .line 4058
    :cond_52
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4060
    goto :goto_8e

    .line 4053
    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4056
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 4057
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_8e

    .line 4040
    :cond_6b
    if-eqz p3, :cond_84

    .line 4041
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4042
    move-object v2, p0

    move-object v3, p5

    move v4, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->getIntentBixbyService(Landroid/view/KeyEvent;ZZZZ)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 4041
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4044
    .restart local v0    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 4045
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_8e

    .line 4046
    :cond_84
    invoke-virtual {p0, p5, p6}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyServiceDoubleTap(Landroid/view/KeyEvent;Z)V

    .line 4048
    goto :goto_8e

    .line 4035
    :cond_88
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoubleTapLaunchCamera(I)V

    .line 4036
    nop

    .line 4077
    :cond_8e
    :goto_8e
    return-void
.end method

.method private launchAppHotKey(II)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "displayId"    # I

    .line 5366
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    if-eqz v0, :cond_47

    .line 5367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    .line 5368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->getHotKeyComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 5369
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_40

    .line 5370
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5371
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5372
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 5373
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_34

    .line 5374
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 5375
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5376
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5378
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5381
    :cond_34
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToastMessageIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 5382
    return-void

    .line 5385
    :cond_3c
    invoke-direct {p0, p2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppIfPossible(ILandroid/content/ComponentName;)Z

    .line 5386
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_47

    .line 5387
    :cond_40
    const-string v1, "PhoneWindowManagerExt"

    const-string v2, "Can not launch hotkey app. The package info is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_47
    :goto_47
    return-void
.end method

.method private launchAppIfPossible(ILandroid/content/ComponentName;)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 5113
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canLaunchAppByKeyboard()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launch keyboard shortcut app, displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5115
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5114
    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5117
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5118
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5119
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 5120
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5121
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5122
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5123
    const/4 v2, 0x1

    return v2

    .line 5125
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method private launchCalendarIfPossible(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 5196
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canLaunchAppByKeyboard()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5197
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch Calendar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5200
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5201
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 5202
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5203
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5204
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5205
    const/4 v2, 0x1

    return v2

    .line 5207
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method private launchDoubleTapCamera()V
    .registers 4

    .line 2936
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    .line 2937
    .local v0, "gestureService":Lcom/android/server/GestureLauncherService;
    if-eqz v0, :cond_16

    .line 2938
    const-string v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "launch double tap camera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(I)Z

    .line 2941
    :cond_16
    return-void
.end method

.method private launchDoubleTapTvMode()V
    .registers 9

    .line 3810
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch double tap tv mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3814
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3815
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3816
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3817
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3818
    .local v1, "filterIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "afterKeyguardGone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3820
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3823
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 3824
    .end local v1    # "filterIntent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_4c

    .line 3825
    :cond_45
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3828
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4c
    :goto_4c
    return-void
.end method

.method private launchPermissionControllerIfPossible()Z
    .registers 6

    .line 5234
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canLaunchAppByKeyboard()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5235
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch PermissionController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPermissionControllerIntent:Landroid/content/Intent;

    if-nez v0, :cond_31

    .line 5237
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5238
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5240
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPermissionControllerIntent:Landroid/content/Intent;

    .line 5241
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5242
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPermissionControllerIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.ROLE_NAME"

    const-string v4, "android.app.role.ASSISTANT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5245
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_31
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPermissionControllerIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5246
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5248
    const/4 v0, 0x1

    return v0

    .line 5250
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method private launchSFinderIfPossible()V
    .registers 2

    .line 5060
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSFinderLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

    if-eqz v0, :cond_11

    .line 5061
    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->launch()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->access$6200(Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;)V

    .line 5062
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5063
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5065
    :cond_11
    return-void
.end method

.method private launchSVoiceImeIfPossible(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 5177
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canLaunchAppByKeyboard()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5178
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch SVoiceIme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "samsung.svoiceime.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5181
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5182
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 5183
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5184
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 5185
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5186
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5187
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5188
    const/4 v2, 0x1

    return v2

    .line 5191
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method private launchSecureFolder()V
    .registers 4

    .line 6908
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 6909
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_16

    .line 6910
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->launchSeamLessSf()V

    goto :goto_29

    .line 6912
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6913
    .local v0, "sfIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6914
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6917
    .end local v0    # "sfIntent":Landroid/content/Intent;
    :cond_29
    :goto_29
    return-void
.end method

.method private migrateFromOld(ZZ)V
    .registers 5
    .param p1, "dedicatedAppXCoverEnabled"    # Z
    .param p2, "dedicatedAppTopEnabled"    # Z

    .line 6340
    if-eqz p1, :cond_f

    .line 6341
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->B2B_DELTA_XCOVER:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    iput-object v1, v0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 6343
    const/16 v0, 0x3f7

    const-string v1, "dedicated_app_xcover"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->setHardKeyPressInfo(ILjava/lang/String;)V

    .line 6347
    :cond_f
    if-eqz p2, :cond_1e

    .line 6348
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;->B2B_DELTA_TOP:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    iput-object v1, v0, Lcom/android/server/policy/KeyCustomizeManager;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizeManager$MigrationCode;

    .line 6350
    const/16 v0, 0x437

    const-string v1, "dedicated_app_top"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->setHardKeyPressInfo(ILjava/lang/String;)V

    .line 6352
    :cond_1e
    return-void
.end method

.method private performHapticFeedbackLw(IZ)Z
    .registers 4
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 4730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private performHomeBroadcast()V
    .registers 3

    .line 3608
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$B0Ag2nRVnMBdOfka8vjyCztlvlo;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$B0Ag2nRVnMBdOfka8vjyCztlvlo;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3613
    return-void
.end method

.method private playSoundEffect()V
    .registers 5

    .line 4888
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 4889
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_2c

    .line 4890
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->VOLD_DECRYPT:Ljava/lang/String;

    .line 4891
    const-string/jumbo v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 4892
    const/16 v1, 0x66

    .line 4893
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 4892
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    goto :goto_31

    .line 4895
    :cond_25
    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4898
    :cond_2c
    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    :goto_31
    return-void
.end method

.method private registerAppHotKey()V
    .registers 5

    .line 5297
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 5298
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$registerAppHotKeyRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

    .line 5301
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    .line 5302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAppHotKey isTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLaunchAppByHotKeyTriggered:Z

    .line 5305
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelLaunchAppByHotKeyPendingAction()V

    .line 5306
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mRegisterAppHotKeyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5307
    return-void
.end method

.method private registerDisplayListener()V
    .registers 5

    .line 5878
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 5891
    .local v0, "appTransitionListenerForDex":Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 5913
    return-void
.end method

.method private registerReceiver()V
    .registers 9

    .line 552
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 554
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 557
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    .line 559
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 560
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 568
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 569
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 574
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_72

    .line 575
    new-instance v5, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .local v5, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object v0, v5

    .line 579
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_72
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v1, :cond_8d

    .line 580
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 581
    const-string v1, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 585
    :cond_8d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 586
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 587
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 588
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 592
    :cond_b4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v1, :cond_ca

    .line 593
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 594
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 602
    :cond_ca
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v1, :cond_dd

    .line 603
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 604
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldableLoggingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    :cond_dd
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_e4

    .line 610
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerSystemUIReceiver()V

    .line 613
    :cond_e4
    return-void
.end method

.method private registerSystemUIReceiver()V
    .registers 4

    .line 6775
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6776
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 6777
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$15;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$15;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6798
    return-void
.end method

.method private sendBroadcastBellPTT(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6718
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6719
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6720
    const-string v1, "com.bell.ptt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastBellPTT intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6722
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6723
    return-void
.end method

.method private sendBroadcastForPanicCall()V
    .registers 5

    .line 2978
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "broadcast Panic Call intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.PANIC_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2980
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "panic_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2981
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.PANIC_CALL"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2982
    return-void
.end method

.method private sendBroadcastForSafetyAssurance()V
    .registers 4

    .line 2964
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "broadcast Safety Assurance intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2966
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.safetyassurance"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2967
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2968
    return-void
.end method

.method private sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "displayId"    # I
    .param p3, "dexMode"    # Z

    .line 6151
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 6152
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_32

    .line 6153
    if-eqz p3, :cond_14

    .line 6154
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 6155
    invoke-static {v1, p2}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result v1

    .line 6154
    invoke-interface {v0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    goto :goto_17

    .line 6157
    :cond_14
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    .line 6159
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendThreeFingerGestureKeyEvent keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6161
    :cond_32
    return-void
.end method

.method private setHardKeyPressInfo(ILjava/lang/String;)V
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "pkgSettingName"    # Ljava/lang/String;

    .line 6360
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 6361
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6360
    const/4 v1, -0x2

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6362
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.verizon.pushtotalkplus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/16 v5, 0x3f7

    const-string v6, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    const/4 v7, 0x0

    const/16 v8, 0x44e

    const/4 v9, 0x3

    if-eqz v2, :cond_35

    .line 6363
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6364
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6365
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6366
    new-instance v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    invoke-direct {v1, v8, v5, v4, v2}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6371
    .local v1, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v3, v9, v1, v7}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6373
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_bb

    :cond_35
    const-string v1, "com.att.firstnet.grey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v10, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    const/16 v11, 0x437

    if-eqz v2, :cond_6a

    .line 6374
    const/4 v2, 0x0

    .line 6375
    .restart local v2    # "intent":Landroid/content/Intent;
    if-ne p1, v5, :cond_4b

    .line 6376
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_53

    .line 6377
    :cond_4b
    if-ne p1, v11, :cond_53

    .line 6378
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 6380
    :cond_53
    :goto_53
    if-eqz v2, :cond_69

    .line 6381
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.sptt.keyevent.KeyEventService"

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6382
    new-instance v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    invoke-direct {v1, v8, p1, v9, v2}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6387
    .restart local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v3, v9, v1, v7}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6390
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_69
    goto :goto_bb

    :cond_6a
    const-string v1, "com.att.eptt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 6391
    const/4 v2, 0x0

    .line 6392
    .restart local v2    # "intent":Landroid/content/Intent;
    if-ne p1, v5, :cond_7c

    .line 6393
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_84

    .line 6394
    :cond_7c
    if-ne p1, v11, :cond_84

    .line 6395
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 6397
    :cond_84
    :goto_84
    if-eqz v2, :cond_96

    .line 6398
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6399
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6401
    new-instance v1, Landroid/view/WindowManager$KeyCustomizeInfo;

    invoke-direct {v1, v8, p1, v4, v2}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6406
    .restart local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v3, v9, v1, v7}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6409
    .end local v1    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_96
    goto :goto_bb

    .line 6410
    :cond_97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6411
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6412
    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 6414
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6417
    :cond_b1
    new-instance v2, Landroid/view/WindowManager$KeyCustomizeInfo;

    invoke-direct {v2, v8, p1, v4, v1}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;)V

    .line 6420
    .local v2, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v3, v9, v2, v7}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 6423
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :goto_bb
    return-void
.end method

.method private setKeyguardOccludedLw(ZZI)Z
    .registers 13
    .param p1, "isOccluded"    # Z
    .param p2, "force"    # Z
    .param p3, "displayId"    # I

    .line 5979
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "PhoneWindowManagerExt"

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 5980
    const-string/jumbo v0, "setKeyguardOccludedLw mKeyguardDelegate is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    return v2

    .line 5983
    :cond_e
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2f

    .line 5984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyguardOccludedLw occluded="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", displayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    :cond_2f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5988
    .local v0, "keyguardOccluded":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5991
    .local v1, "wasOccluded":Z
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    .line 5992
    .local v3, "showing":Z
    const/4 v4, 0x1

    if-ne v1, p1, :cond_45

    if-eqz p2, :cond_43

    goto :goto_45

    :cond_43
    move v5, v2

    goto :goto_46

    :cond_45
    :goto_45
    move v5, v4

    .line 5993
    .local v5, "changed":Z
    :goto_46
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5994
    .local v6, "keyguardCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez p1, :cond_6f

    if-eqz v5, :cond_6f

    if-eqz v3, :cond_6f

    .line 5998
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6000
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7, v2, v4, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZI)V

    .line 6001
    if-eqz v6, :cond_6e

    .line 6002
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 6003
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6006
    :cond_6e
    return v4

    .line 6007
    :cond_6f
    if-eqz p1, :cond_8d

    if-eqz v5, :cond_8d

    if-eqz v3, :cond_8d

    .line 6011
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6013
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7, v4, v2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZI)V

    .line 6014
    if-eqz v6, :cond_8c

    .line 6015
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6017
    :cond_8c
    return v4

    .line 6018
    :cond_8d
    if-eqz v5, :cond_99

    .line 6022
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p1, v4, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6024
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZI)V

    .line 6025
    return v2

    .line 6027
    :cond_99
    return v2
.end method

.method private setNeedDarkSystemBar(Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 6640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 6641
    const-string/jumbo v1, "need_dark_statusbar"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6642
    const-string/jumbo v3, "need_dark_navigationbar"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 6640
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicyExt;->setNeedDarkSystemBar(II)V

    .line 6643
    return-void
.end method

.method private setWakeUpReasonFingerprint()V
    .registers 5

    .line 6130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWakeUpReasonFingerprint isTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    .line 6132
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeUpReasonFingerprintPendingAction()V

    .line 6133
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6134
    return-void
.end method

.method private showBixbyToast(ZZ)Ljava/lang/String;
    .registers 5
    .param p1, "interactive"    # Z
    .param p2, "down"    # Z

    .line 4525
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getBixbyToast()Ljava/lang/String;

    move-result-object v0

    .line 4526
    .local v0, "bixbyMsg":Ljava/lang/String;
    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 4527
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 4529
    :cond_f
    return-object v0
.end method

.method private showToastMessageIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 1651
    const/4 v0, 0x0

    .line 1652
    .local v0, "toastString":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isReserveBatteryMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1653
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getReserveBatteryModeToast(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 1654
    :cond_10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_1c

    .line 1655
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->getEmergencyModeToast(Landroid/content/Intent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1657
    :cond_1c
    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1658
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1659
    const/4 v1, 0x1

    return v1

    .line 1662
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method private startActivityAppsScreen()V
    .registers 5

    .line 6213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6215
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6216
    const-string/jumbo v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v2, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6218
    :try_start_19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 6221
    goto :goto_27

    .line 6219
    :catch_1f
    move-exception v1

    .line 6220
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "No activity to launch launcher app list."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6222
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_27
    return-void
.end method

.method private startActivityPremiumWatch()V
    .registers 5

    .line 6469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6470
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6471
    const-string v1, "com.sec.android.app.premiumwatch"

    const-string v2, "com.sec.android.app.premiumwatch.activity.PremiumWatch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch Premium watch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6474
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_31} :catch_32

    .line 6477
    goto :goto_38

    .line 6475
    :catch_32
    move-exception v1

    .line 6476
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "No activity to launch Premium watch."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6478
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_38
    return-void
.end method

.method private startBixbyService(Landroid/view/KeyEvent;Z)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 4428
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;ZZZZ)V

    .line 4429
    return-void
.end method

.method private startBixbyService(Landroid/view/KeyEvent;ZZZZ)V
    .registers 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "isUnlockFP"    # Z
    .param p4, "longPress"    # Z
    .param p5, "doubleTap"    # Z

    .line 4441
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_5

    .line 4442
    return-void

    .line 4445
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4447
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p3

    :try_start_10
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->getIntentBixbyService(Landroid/view/KeyEvent;ZZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 4449
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_24
    .catchall {:try_start_10 .. :try_end_1b} :catchall_22

    .line 4453
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4454
    goto :goto_3d

    .line 4453
    :catchall_22
    move-exception v0

    goto :goto_3e

    .line 4450
    :catch_24
    move-exception v0

    .line 4451
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v1, "PhoneWindowManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start BixbyService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 4453
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 4455
    :goto_3d
    return-void

    .line 4453
    :goto_3e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4454
    throw v0
.end method

.method private startBixbyService(Z)V
    .registers 8
    .param p1, "isUnlockFP"    # Z

    .line 4423
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;ZZZZ)V

    .line 4424
    return-void
.end method

.method private startGameControllerService(II)V
    .registers 6
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I

    .line 6437
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "startGameControllerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6439
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6440
    const-string v1, "DEVICE_VID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6441
    const-string v1, "DEVICE_PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6442
    const-string v1, "DEVICE_ACTION"

    const-string v2, "PRESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6443
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 6444
    return-void
.end method

.method private startServiceForSPTT(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 5757
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5758
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.sptt"

    const-string v3, "com.samsung.android.sptt.keyevent.KeyEventService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5759
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5760
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 5761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService sptt. intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5762
    return-void
.end method

.method private toggleGameBoosterMenuIfPossible()Z
    .registers 4

    .line 5155
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGameBoosterToggleMenuSupported()Z

    move-result v0

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_41

    .line 5156
    const-string/jumbo v0, "send broadcast game booster toggle menu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.action.togglemenu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5159
    const-string/jumbo v1, "package"

    const-string/jumbo v2, "window-g"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5160
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5161
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5162
    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 5163
    .local v1, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_3a

    .line 5164
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 5166
    :cond_3a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 5167
    const/4 v2, 0x1

    return v2

    .line 5169
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "statusBar":Landroid/app/StatusBarManager;
    :cond_41
    const-string v0, "GameBoosterToggleMenu is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    const/4 v0, 0x0

    return v0
.end method

.method private updateDoubleLaunchInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "component"    # Ljava/lang/String;

    .line 3831
    if-eqz p1, :cond_23

    .line 3832
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3833
    .local v0, "titles":[Ljava/lang/String;
    if-eqz v0, :cond_23

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_23

    .line 3834
    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 3836
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    .line 3840
    .end local v0    # "titles":[Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_23
    return-void
.end method

.method private updateSideKeyDoubleTapAppInfo(Ljava/lang/String;)V
    .registers 7
    .param p1, "appInfo"    # Ljava/lang/String;

    .line 4155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    .line 4157
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    .line 4158
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    .line 4159
    return-void

    .line 4162
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 4163
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    .line 4165
    const/4 v0, 0x0

    .line 4166
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4167
    .local v1, "className":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4168
    .local v2, "titles":[Ljava/lang/String;
    if-eqz v2, :cond_2c

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2c

    .line 4169
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 4170
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 4172
    :cond_2c
    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    .line 4173
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    .line 4174
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    goto :goto_58

    .line 4176
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneWindowManagerExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "titles":[Ljava/lang/String;
    :cond_58
    :goto_58
    return-void
.end method

.method private vibrationEffect(Z)Landroid/os/VibrationEffect;
    .registers 5
    .param p1, "penInsert"    # Z

    .line 5697
    const/4 v0, -0x1

    .line 5698
    .local v0, "type":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_OMC_SPEN_VIBRATION:Z

    if-eqz v1, :cond_15

    .line 5700
    if-eqz p1, :cond_e

    .line 5701
    const/16 v1, 0x3f

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_22

    .line 5703
    :cond_e
    const/16 v1, 0x3e

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_22

    .line 5707
    :cond_15
    if-eqz p1, :cond_1d

    .line 5708
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_22

    .line 5710
    :cond_1d
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .line 5713
    :goto_22
    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6930
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    iget v1, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v0, v1, :cond_a

    .line 6931
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    iput v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 6933
    :cond_a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    iget v1, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq v0, v1, :cond_14

    .line 6934
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    iput v0, p1, Landroid/content/res/Configuration;->boldFont:I

    .line 6936
    :cond_14
    return-void
.end method

.method adjustKeyEventDisplayIdForDex(Landroid/view/KeyEvent;)I
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 5771
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    .line 5772
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 5773
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getDisplayIdForPointerIcon()I

    move-result v0

    .line 5775
    :cond_13
    return v0
.end method

.method applyFoldingPolicy()V
    .registers 7

    .line 6518
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mForcedDisplaySizeRequested:Z

    if-nez v0, :cond_42

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_9

    goto :goto_42

    .line 6525
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 6526
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getFoldingActionFlags()I

    move-result v0

    .line 6527
    .local v0, "foldingActionFlags":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_37

    .line 6528
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6529
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 6531
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v1, :cond_37

    .line 6532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    .line 6533
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    .line 6537
    :cond_37
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_68

    .line 6538
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->goHome(Z)Z

    goto :goto_68

    .line 6519
    .end local v0    # "foldingActionFlags":I
    :cond_42
    :goto_42
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_68

    .line 6520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyFoldingPolicy: Skip folding policy, mForcedDisplaySizeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mForcedDisplaySizeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFactoryBinary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6541
    :cond_68
    :goto_68
    return-void
.end method

.method applyPostUnfoldingPolicy()V
    .registers 4

    .line 6544
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 6545
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->needToSendSALoggingForFoldable(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6546
    const/4 v0, 0x4

    const-string v1, "W003"

    const-string v2, "Unfolding"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    .line 6550
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->applyPostUnfoldingPolicy()V

    .line 6551
    return-void
.end method

.method public boostFolding(Z)V
    .registers 7
    .param p1, "fold"    # Z

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostFolding: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "folding"

    goto :goto_12

    :cond_f
    const-string/jumbo v1, "unfolding"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3652
    :try_start_21
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_32

    .line 3653
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "PWM_ROTATION"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3656
    :cond_32
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_51

    if-eqz v1, :cond_4f

    .line 3658
    :try_start_36
    const-string v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "sFoldingBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_43} :catch_44
    .catchall {:try_start_36 .. :try_end_43} :catchall_51

    .line 3663
    goto :goto_4f

    .line 3660
    :catch_44
    move-exception v1

    .line 3661
    .local v1, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "HINT_PWM_ROTATION.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3665
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4f
    :goto_4f
    monitor-exit v0

    .line 3666
    return-void

    .line 3665
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public boostWakeUp()V
    .registers 6

    .line 3669
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3670
    :try_start_3
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_14

    .line 3671
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "DEVICE_WAKEUP"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3674
    :cond_14
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_33

    if-eqz v1, :cond_31

    .line 3676
    :try_start_18
    const-string v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "sWakeUpBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_33

    .line 3681
    goto :goto_31

    .line 3678
    :catch_26
    move-exception v1

    .line 3679
    .local v1, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3683
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 3684
    return-void

    .line 3683
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method callAccessibilityTalkbackMode()V
    .registers 3

    .line 4576
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "callAccessibilityTalkbackMode() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAccessibilityManagerService()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 4580
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    if-eqz v0, :cond_16

    .line 4581
    :try_start_d
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_16

    .line 4583
    :catch_11
    move-exception v1

    .line 4584
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    .line 4585
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    nop

    .line 4586
    :goto_17
    return-void
.end method

.method public canBeForceHiddenByAodLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3143
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3144
    return v1

    .line 3146
    :cond_8
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x7f8

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x833

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x96f

    if-eq v0, v2, :cond_2a

    packed-switch v0, :pswitch_data_3c

    goto :goto_2f

    .line 3167
    :cond_2a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_AOD_FACE_WIDGET:Z

    if-eqz v0, :cond_2f

    return v1

    .line 3170
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1

    .line 3164
    :cond_3b
    :pswitch_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0xa3d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method checkAddPermission(I)I
    .registers 3
    .param p1, "type"    # I

    .line 6803
    const/16 v0, 0x7ee

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7f5

    if-eq p1, v0, :cond_b

    .line 6808
    const/16 v0, 0x64

    return v0

    .line 6806
    :cond_b
    nop

    .line 6810
    const/4 v0, -0x1

    return v0
.end method

.method checkKeyguardOccluded(IZ)Z
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "fromHome"    # Z

    .line 5916
    if-eqz p2, :cond_a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 5917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0

    .line 5924
    :cond_a
    if-nez p1, :cond_11

    .line 5925
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0

    .line 5928
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public clearAppLockedUnLockedApp()V
    .registers 4

    .line 2829
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2832
    goto :goto_10

    .line 2830
    :catch_8
    move-exception v0

    .line 2831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneWindowManagerExt"

    const-string v2, " ClearAppLockedUnLockedApp failed , Remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2833
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public clearKeyCustomizeEvent(IIZZ)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "press"    # I
    .param p3, "isClearAll"    # Z
    .param p4, "restore"    # Z

    .line 5735
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/KeyCustomizeManager;->clearKeyCustomizeEvent(IIZZ)V

    .line 5736
    return-void
.end method

.method public clearKeyCustomizeEventByKeyCode(IIZ)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I
    .param p3, "restore"    # Z

    .line 5739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizeManager;->clearKeyCustomizeEventByKeyCode(IIZ)V

    .line 5740
    return-void
.end method

.method public clearOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1676
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    if-eqz v0, :cond_7

    .line 1677
    invoke-virtual {v0, p1}, Lcom/android/server/policy/OneHandOpPolicyManager;->clearOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1679
    :cond_7
    return-void
.end method

.method dispatchUnhandledKey(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6447
    nop

    .line 6448
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2a

    .line 6449
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_28

    .line 6450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    .line 6451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    .line 6450
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startGameControllerService(II)V

    .line 6456
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 6458
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3332
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3334
    const-string v0, "--- PhoneWindowManagerExt ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3340
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3343
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3346
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakingUpReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3347
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    invoke-static {v0}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapLaunchBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mQuadruplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3355
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_6a

    .line 3356
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mQuintuplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3357
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsAvailableOneTouchReport="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3359
    :cond_6a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v0, :cond_7c

    .line 3360
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideKeyLongPressType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3362
    :cond_7c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v0, :cond_b5

    .line 3363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SideKeyDoubleTap Enabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3364
    const-string v0, " Type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3365
    const-string v0, " AppInfo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapAppInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3366
    const-string v0, " Component="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3367
    const-string v0, " PackageName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    :cond_b5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsDirectAccessEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDirectAccessEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3373
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsInteractionControlEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3374
    const-string v0, " mIsPowerKeyBlocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3375
    const-string v0, " mIsVolumeKeyBlocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3378
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OneHandOpPolicyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3381
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeModeReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBixbyComponentName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3386
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v0, :cond_118

    .line 3387
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEmergencyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3390
    :cond_118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsHapticsEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3391
    const-string v0, " mIsAssistHapticEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3392
    const-string v0, " mIsHapticsSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3393
    const-string v0, " mNavBarVirtualKeyHapticFeedbackEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3394
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3397
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsDoubleTapToWakeUpSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3398
    const-string v0, " mIsDoubleTapToWakeUp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3400
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_1d5

    .line 3401
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SPen state="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3402
    const-string v0, " type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3403
    const-string v0, " vibrationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3404
    const-string v0, " soundEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3405
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v0, :cond_19a

    .line 3406
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SoundInfo is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d5

    .line 3408
    :cond_19a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PenSoundInfo attachSoundPath="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->access$5400(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3409
    const-string v0, " detachSoundPath="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->access$5500(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    const-string v0, " attachSoundId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->access$5600(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3411
    const-string v0, " detachSoundId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->access$5700(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3414
    :cond_1d5
    :goto_1d5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_1e3

    .line 3415
    const-string v0, " mScreenOffMemoEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3422
    :cond_1e3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_POWER_TV_MODE:Z

    if-eqz v0, :cond_210

    .line 3423
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIsTvModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3424
    const-string v0, " mIsTvModeDoubleTapEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3425
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_210

    .line 3426
    const-string v0, " mDoubleTapLaunchComponentName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    :cond_210
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v0, :cond_22c

    .line 3431
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeUpReasonFingerprintTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3432
    const-string v0, " mWakeAndUnlockTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3434
    :cond_22c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_THREE_FINGER_GESTURE:Z

    if-eqz v0, :cond_23e

    .line 3435
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsPogoKeyboardConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3448
    :cond_23e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_25e

    .line 3449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReserveBatteryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3450
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3451
    const-string/jumbo v0, "mEnableReserveBatteryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3453
    :cond_25e
    return-void
.end method

.method finishScreenTurningOn()V
    .registers 3

    .line 2459
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2460
    .local v0, "focusedWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 2461
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2462
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz v1, :cond_1c

    .line 2463
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v1}, Lcom/android/server/policy/TspStateManager;->finishScreenTurningOn()V

    .line 2477
    :cond_1c
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 6
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3721
    if-eqz p1, :cond_1e

    .line 3722
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3723
    .local v0, "focusedWindow":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 3724
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v3

    .line 3723
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;II)V

    .line 3725
    .end local v0    # "focusedWindow":Ljava/lang/String;
    goto :goto_26

    .line 3726
    :cond_1e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;II)V

    .line 3728
    :goto_26
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v0, :cond_2f

    .line 3729
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3731
    :cond_2f
    return-void
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .line 4906
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4907
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_13

    .line 4908
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 4910
    :cond_13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v0

    return-object v1

    .line 4911
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getCoverController()Lcom/android/server/wm/CoverPolicyController;
    .registers 2

    .line 3793
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getCoverController()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v0

    return-object v0
.end method

.method public getDexMode()I
    .registers 2

    .line 6067
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    return v0
.end method

.method public getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;
    .registers 4
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 5723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCustomizeEventAll(I)Ljava/util/List;
    .registers 3
    .param p1, "press"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation

    .line 5727
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEventAll(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .line 6897
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_14

    .line 6898
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6899
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 6900
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 6902
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public getWakingUpReason()I
    .registers 2

    .line 3327
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    return v0
.end method

.method handleDoubleTapLaunchCamera(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 2852
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapCameraLaunchPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2853
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchDoubleTapCamera()V

    .line 2855
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 2856
    return-void
.end method

.method handleLongPressOnHome()Z
    .registers 5

    .line 2419
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 2420
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x1

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2421
    const-string v3, "Home long press is blocked in Ringing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return v1

    .line 2425
    :cond_17
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2426
    const-string v3, "Home long press is blocked in VoIPRinging"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return v1

    .line 2430
    :cond_23
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v3, :cond_31

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-eqz v3, :cond_31

    .line 2431
    const-string v3, "Home long press is blocked by emergency mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return v1

    .line 2435
    :cond_31
    const/4 v3, 0x3

    .line 2436
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2437
    const-string v3, "Home long press is blocked by Interaction control"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    return v1

    .line 2441
    :cond_3e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 2442
    const-string v3, "Home long press is blocked because UserSetup isn\'t completed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return v1

    .line 2446
    :cond_4c
    const/4 v1, 0x0

    return v1
.end method

.method public handleNotifyPogoKeyboardStatus(Z)V
    .registers 5
    .param p1, "status"    # Z

    .line 6228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleNotifyPogoKeyboardStatus status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-ne v0, p1, :cond_1c

    .line 6230
    return-void

    .line 6232
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 6234
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6235
    return-void

    .line 6238
    :cond_25
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 6239
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_3b

    .line 6240
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-eqz v1, :cond_36

    .line 6241
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    goto :goto_3b

    .line 6243
    :cond_36
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    .line 6246
    :cond_3b
    :goto_3b
    return-void
.end method

.method public init()V
    .registers 9

    .line 430
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$1;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    .line 434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 435
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 438
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v2, v3}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    .line 441
    new-instance v0, Lcom/android/server/policy/SystemKeyManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v2}, Lcom/android/server/policy/SystemKeyManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 444
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initHomeBooster()V

    .line 447
    new-instance v0, Lcom/android/server/policy/KeyCustomizeManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/android/server/policy/KeyCustomizeManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 448
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 450
    .local v2, "creationStartTime":J
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v4}, Lcom/android/server/policy/KeyCustomizeManager;->loadSettingsLocked()V

    .line 451
    const-string v4, "PhoneWindowManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadSettings duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    nop

    .end local v2    # "creationStartTime":J
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_101

    .line 456
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCustomizeManager;->getMultiTapKeyEventHandler(I)Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 458
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_TAP_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v0, :cond_7c

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x66

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 462
    :cond_7c
    const-string v0, "com.samsung.android.bixby.agent/com.samsung.android.bixby.WinkService"

    .line 463
    .local v0, "bixbyComponent":Ljava/lang/String;
    const-string v2, "com.samsung.android.bixby.agent/com.samsung.android.bixby.WinkService"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 464
    const-string v2, "com.samsung.android.bixby.agent/com.samsung.android.bixby.WinkService"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_8e

    :cond_8d
    move-object v2, v1

    :goto_8e
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyComponentName:Landroid/content/ComponentName;

    .line 465
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "PhoneWindowManager.mBixbyServiceWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 469
    .end local v0    # "bixbyComponent":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 470
    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v3, :cond_b1

    move v0, v3

    goto :goto_b2

    :cond_b1
    move v0, v2

    :goto_b2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 474
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 475
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_c5

    .line 476
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v4

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_c2

    goto :goto_c3

    :cond_c2
    move v3, v2

    :goto_c3
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 481
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_c5
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$1;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSFinderLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

    .line 484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$l8PhSTM8nYU6bv3KcMTEesCCfNE;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$l8PhSTM8nYU6bv3KcMTEesCCfNE;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerReceiver()V

    .line 515
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initIntent()V

    .line 517
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 518
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->observe()V

    .line 521
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 525
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerDisplayListener()V

    .line 526
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 531
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 534
    return-void

    .line 453
    :catchall_101
    move-exception v1

    :try_start_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v1
.end method

.method injectionKeyEvent(III)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "flags"    # I
    .param p3, "displayId"    # I

    .line 5256
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5257
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5259
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$sbBP8fXv9H1gD13tyhjGVyywTBs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$sbBP8fXv9H1gD13tyhjGVyywTBs;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 5272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5273
    return-void
.end method

.method protected insertNoActionLogForFoldable()V
    .registers 7

    .line 6612
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_2a

    .line 6613
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmIntent:Landroid/content/Intent;

    .line 6614
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 6615
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmManager:Landroid/app/AlarmManager;

    .line 6618
    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmManager:Landroid/app/AlarmManager;

    .line 6619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 6618
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 6621
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 31
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 875
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 876
    .local v4, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 877
    .local v5, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    .line 878
    .local v6, "displayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 879
    .local v7, "flags":I
    const/high16 v0, 0x20000000

    and-int v0, p3, v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    move v10, v0

    .line 880
    .local v10, "interactive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    move v11, v0

    .line 881
    .local v11, "down":Z
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v12

    .line 882
    .local v12, "isKeyguardOn":Z
    if-eqz v11, :cond_42

    if-nez v5, :cond_42

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    move v13, v0

    .line 884
    .local v13, "isMetaPressed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v14

    .line 885
    .local v14, "isLongPress":Z
    if-eqz v11, :cond_4c

    if-eqz v5, :cond_4e

    :cond_4c
    if-nez v11, :cond_50

    :cond_4e
    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    move v15, v0

    .line 891
    .local v15, "keyJustDownOrUp":Z
    move/from16 v16, v6

    .line 894
    .local v16, "adjustedDisplayId":I
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v8, "PhoneWindowManagerExt"

    if-eqz v0, :cond_8a

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interceptKeyTi code="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " down="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " repeatCount="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " displayId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v16

    .end local v16    # "adjustedDisplayId":I
    .local v9, "adjustedDisplayId":I
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 894
    .end local v9    # "adjustedDisplayId":I
    .restart local v16    # "adjustedDisplayId":I
    :cond_8a
    move/from16 v9, v16

    .line 904
    .end local v16    # "adjustedDisplayId":I
    .restart local v9    # "adjustedDisplayId":I
    :goto_8c
    invoke-direct {v1, v3, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkPolicyBeforeDispatching(Landroid/view/KeyEvent;I)J

    move-result-wide v18

    .line 905
    .local v18, "policy":J
    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_97

    .line 906
    return-wide v18

    .line 910
    :cond_97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 911
    .local v20, "now":J
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, v7}, Lcom/android/server/policy/KeyCombinationManager;->getKeyCombinationTime(I)J

    move-result-wide v22

    .line 912
    .local v22, "combinationTime":J
    cmp-long v0, v20, v22

    if-gez v0, :cond_a8

    .line 913
    sub-long v16, v22, v20

    .line 914
    .local v16, "result":J
    return-wide v16

    .line 916
    .end local v16    # "result":J
    :cond_a8
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v0

    const-wide/16 v24, -0x1

    if-eqz v0, :cond_b3

    .line 917
    return-wide v24

    .line 921
    .end local v20    # "now":J
    .end local v22    # "combinationTime":J
    :cond_b3
    const/4 v0, 0x3

    move/from16 v16, v6

    .end local v6    # "displayId":I
    .local v16, "displayId":I
    const/4 v6, 0x4

    if-eq v4, v0, :cond_63e

    if-eq v4, v6, :cond_621

    const/16 v6, 0x18

    if-eq v4, v6, :cond_504

    const/16 v6, 0x19

    if-eq v4, v6, :cond_504

    const/16 v0, 0x2d

    if-eq v4, v0, :cond_5d9

    const/16 v0, 0x2e

    if-eq v4, v0, :cond_5c5

    const/16 v0, 0x75

    if-eq v4, v0, :cond_592

    const/16 v0, 0x76

    if-eq v4, v0, :cond_592

    const/16 v0, 0x3eb

    if-eq v4, v0, :cond_575

    const/16 v0, 0x3ec

    if-eq v4, v0, :cond_559

    const-string v0, "Block Dispatching XCoverKey because of Factory mode or test."

    const-string/jumbo v6, "quickMessageSender/quickMessageSender"

    sparse-switch v4, :sswitch_data_6b4

    packed-switch v4, :pswitch_data_6fa

    packed-switch v4, :pswitch_data_70c

    packed-switch v4, :pswitch_data_71c

    move/from16 v26, v7

    goto/16 :goto_6a3

    :pswitch_f0
    move/from16 v26, v7

    goto/16 :goto_5db

    .line 1355
    :pswitch_f4
    if-eqz v11, :cond_119

    if-nez v5, :cond_119

    .line 1356
    const-string/jumbo v0, "launch view notification"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 1358
    .local v6, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_118

    .line 1360
    :try_start_106
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1361
    invoke-static {v0, v9}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result v0

    .line 1360
    invoke-interface {v6, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10f} :catch_110

    .line 1364
    goto :goto_118

    .line 1362
    :catch_110
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    move-object/from16 v17, v0

    .end local v0    # "e":Landroid/os/RemoteException;
    .local v17, "e":Landroid/os/RemoteException;
    const-string v0, "Failed to launch view notification"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_118
    :goto_118
    return-wide v24

    .line 1355
    .end local v6    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_119
    move/from16 v26, v7

    goto/16 :goto_6a3

    .line 1569
    :pswitch_11d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    .line 1570
    return-wide v24

    .line 1545
    :pswitch_123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCoverController()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v0

    .line 1546
    .local v0, "coverController":Lcom/android/server/wm/CoverPolicyController;
    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v6

    if-eqz v6, :cond_130

    .line 1547
    return-wide v24

    .line 1551
    .end local v0    # "coverController":Lcom/android/server/wm/CoverPolicyController;
    :cond_130
    if-eqz v11, :cond_13a

    if-nez v5, :cond_13a

    .line 1552
    iput v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPressedHotKey:I

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerAppHotKey()V

    goto :goto_13f

    .line 1554
    :cond_13a
    if-nez v11, :cond_13f

    .line 1555
    invoke-direct {v1, v4, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppHotKey(II)V

    .line 1557
    :cond_13f
    :goto_13f
    return-wide v24

    .line 921
    :pswitch_140
    move/from16 v26, v7

    goto/16 :goto_442

    .line 1442
    :pswitch_144
    if-eqz v13, :cond_15a

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.smartmirroring"

    const-string v8, "com.samsung.android.smartmirroring.CastingActivity"

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-direct {v1, v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppIfPossible(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 1445
    return-wide v24

    .line 1443
    :cond_156
    move/from16 v26, v7

    goto/16 :goto_6a3

    .line 1442
    :cond_15a
    move/from16 v26, v7

    goto/16 :goto_6a3

    .line 921
    :pswitch_15e
    move/from16 v26, v7

    goto/16 :goto_474

    .line 1420
    :pswitch_162
    if-eqz v13, :cond_168

    .line 1421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->enableOrDisableDexMode()V

    .line 1422
    return-wide v24

    .line 1420
    :cond_168
    move/from16 v26, v7

    goto/16 :goto_6a3

    .line 1411
    :pswitch_16c
    if-eqz v13, :cond_187

    .line 1412
    const-string/jumbo v0, "launch volume panel"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v6

    move/from16 v26, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    .end local v7    # "flags":I
    .local v26, "flags":I
    invoke-virtual {v0, v6, v8, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1415
    return-wide v24

    .line 1411
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_187
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    goto/16 :goto_6a3

    .line 1404
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_18b
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1405
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAccessibilitySettingsIfPossible(I)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1406
    return-wide v24

    .line 1340
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_196
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1341
    const-string/jumbo v0, "window locked"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 1349
    return-wide v24

    .line 1333
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_1a7
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1334
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchCalendarIfPossible(I)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1335
    return-wide v24

    .line 1325
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_1b2
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.tips"

    const-string v7, "com.samsung.android.app.tips.TipsMainActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-direct {v1, v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppIfPossible(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1328
    return-wide v24

    .line 1311
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_1c6
    move/from16 v26, v7

    .line 1312
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_6a3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_6a3

    .line 1313
    invoke-direct {v1, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ef

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1e1

    goto :goto_1ef

    .line 1317
    :cond_1e1
    const-string v0, "bixby is triggered by meta key"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-eqz v5, :cond_1ea

    if-eqz v14, :cond_6a3

    .line 1319
    :cond_1ea
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_6a3

    .line 1314
    :cond_1ef
    :goto_1ef
    return-wide v24

    .line 1304
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_1f0
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1305
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchSVoiceImeIfPossible(I)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1306
    return-wide v24

    .line 1297
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_1fb
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->toggleGameBoosterMenuIfPossible()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1299
    return-wide v24

    .line 1290
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :pswitch_206
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchSFinderIfPossible()V

    .line 1292
    return-wide v24

    .line 1016
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_20e
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1017
    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 1018
    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    int-to-long v6, v0

    return-wide v6

    .line 1022
    :cond_21e
    invoke-direct {v1, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_237

    .line 1023
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_22b

    goto :goto_237

    .line 1026
    :cond_22b
    if-eqz v5, :cond_233

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 1027
    :cond_233
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    .line 1030
    :cond_236
    return-wide v24

    .line 1024
    :cond_237
    :goto_237
    return-wide v24

    .line 1123
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_238
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v7, :cond_2de

    .line 1124
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-eqz v7, :cond_246

    goto/16 :goto_2de

    .line 1129
    :cond_246
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PTT_KOR_PS_LTE:Z

    if-eqz v0, :cond_250

    if-eqz v15, :cond_250

    .line 1130
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startServiceForSPTT(Landroid/view/KeyEvent;)V

    .line 1131
    return-wide v24

    .line 1135
    :cond_250
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1136
    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v0

    .line 1137
    .local v0, "dispatching":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_25a

    .line 1138
    return-wide v24

    .line 1142
    .end local v0    # "dispatching":I
    :cond_25a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_6a3

    .line 1143
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_267

    .line 1144
    return-wide v24

    .line 1146
    :cond_267
    if-eqz v11, :cond_288

    if-nez v5, :cond_288

    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyLongPressed:Z

    .line 1149
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1150
    const/4 v0, 0x1

    invoke-direct {v1, v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a3

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1152
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_6a3

    .line 1154
    :cond_288
    if-eqz v11, :cond_2b8

    if-eqz v14, :cond_2b8

    .line 1155
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_295

    const-string v0, "XCover Top key longpress"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_295
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyLongPressed:Z

    .line 1158
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 1159
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getBixbyToast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 1160
    invoke-virtual {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyServiceLongPress(Landroid/view/KeyEvent;Z)V

    .line 1161
    return-wide v24

    .line 1164
    :cond_2b0
    const/4 v0, 0x1

    invoke-direct {v1, v0, v0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleXCoverKey(ZZI)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1165
    return-wide v24

    .line 1167
    :cond_2b8
    if-nez v11, :cond_6a3

    .line 1168
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 1169
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getBixbyToast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 1170
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    .line 1173
    :cond_2d1
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTopKeyLongPressed:Z

    if-nez v0, :cond_6a3

    .line 1174
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, v6, v0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleXCoverKey(ZZI)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1175
    return-wide v24

    .line 1125
    :cond_2de
    :goto_2de
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    goto/16 :goto_6a3

    .line 1047
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_2e3
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_6a3

    .line 1048
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1049
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2f8

    const-string v0, "AppSelect key was blocked by LUC policy"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_2f8
    return-wide v24

    .line 1198
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_2f9
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1199
    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_309

    .line 1200
    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    int-to-long v6, v0

    return-wide v6

    .line 1202
    :cond_309
    if-nez v11, :cond_30e

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchSFinderIfPossible()V

    .line 1205
    :cond_30e
    return-wide v24

    .line 1219
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_30f
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-nez v11, :cond_32d

    if-nez v12, :cond_32d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1221
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_32d

    .line 1222
    const-string v0, "KEYCODE_MULTI_WINDOW key input"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1224
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_32d

    .line 1225
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 1228
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_32d
    return-wide v24

    .line 1056
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_32e
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v7, :cond_3e4

    .line 1057
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-eqz v7, :cond_33c

    goto/16 :goto_3e4

    .line 1062
    :cond_33c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PTT_KOR_PS_LTE:Z

    if-eqz v0, :cond_346

    if-eqz v15, :cond_346

    .line 1063
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startServiceForSPTT(Landroid/view/KeyEvent;)V

    .line 1064
    return-wide v24

    .line 1067
    :cond_346
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PTT_KEY_BELL_OPERATOR:Z

    if-eqz v0, :cond_356

    if-eqz v15, :cond_356

    .line 1068
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBellPTTPackageAvailable()Z

    move-result v0

    if-eqz v0, :cond_356

    .line 1069
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastBellPTT(Landroid/view/KeyEvent;)V

    .line 1070
    return-wide v24

    .line 1074
    :cond_356
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1075
    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v0

    .line 1076
    .local v0, "dispatching":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_360

    .line 1077
    return-wide v24

    .line 1081
    .end local v0    # "dispatching":I
    :cond_360
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v0, :cond_6a3

    .line 1082
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_36d

    .line 1083
    return-wide v24

    .line 1085
    :cond_36d
    if-eqz v11, :cond_38e

    if-nez v5, :cond_38e

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyLongPressed:Z

    .line 1088
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1089
    const/4 v0, 0x1

    invoke-direct {v1, v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a3

    .line 1090
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1091
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_6a3

    .line 1093
    :cond_38e
    if-eqz v11, :cond_3bf

    if-eqz v14, :cond_3bf

    .line 1094
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_39b

    const-string v0, "XCover key longpress"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_39b
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyLongPressed:Z

    .line 1097
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b6

    .line 1098
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getBixbyToast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b6

    .line 1099
    invoke-virtual {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyServiceLongPress(Landroid/view/KeyEvent;Z)V

    .line 1100
    return-wide v24

    .line 1103
    :cond_3b6
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, v0, v6, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleXCoverKey(ZZI)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1104
    return-wide v24

    .line 1106
    :cond_3bf
    if-nez v11, :cond_6a3

    .line 1107
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mXCoverKeyLongPressLaunchApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d8

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getBixbyToast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d8

    .line 1109
    invoke-direct {v1, v3, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    .line 1112
    :cond_3d8
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsXCoverKeyLongPressed:Z

    if-nez v0, :cond_6a3

    .line 1113
    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleXCoverKey(ZZI)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1114
    return-wide v24

    .line 1058
    :cond_3e4
    :goto_3e4
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    goto/16 :goto_6a3

    .line 981
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_3e9
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_3ff

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_3ff

    .line 983
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3fe

    const-string v0, "Recent key is blocked by LUC policy"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3fe
    return-wide v24

    .line 987
    :cond_3ff
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 988
    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v0

    .line 989
    .restart local v0    # "dispatching":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_409

    .line 990
    return-wide v24

    .line 993
    .end local v0    # "dispatching":I
    :cond_409
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 994
    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_417

    .line 995
    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    int-to-long v6, v0

    return-wide v6

    .line 998
    :cond_417
    if-eqz v11, :cond_426

    if-nez v5, :cond_426

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 999
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_426

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1004
    :cond_426
    if-eqz v11, :cond_6a3

    if-eqz v5, :cond_6a3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1005
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_43b

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1008
    :cond_43b
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent(I)V

    goto/16 :goto_6a3

    .line 921
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_440
    move/from16 v26, v7

    .line 1451
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    :goto_442
    const/16 v0, 0xb0

    if-ne v4, v0, :cond_44a

    if-eqz v11, :cond_44a

    if-eqz v5, :cond_450

    :cond_44a
    const/16 v0, 0x36

    if-ne v4, v0, :cond_6a3

    if-eqz v13, :cond_6a3

    :cond_450
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    invoke-direct {v1, v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppIfPossible(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1456
    return-wide v24

    .line 1231
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_460
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v11, :cond_6a3

    if-nez v5, :cond_6a3

    .line 1233
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1234
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_470

    .line 1235
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    .line 1237
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_470
    goto/16 :goto_6a3

    .line 921
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_472
    move/from16 v26, v7

    .line 1428
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    :goto_474
    const/16 v0, 0x86

    if-ne v4, v0, :cond_486

    if-eqz v11, :cond_486

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_486

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-eqz v0, :cond_48c

    :cond_486
    const/16 v0, 0x34

    if-ne v4, v0, :cond_6a3

    if-eqz v13, :cond_6a3

    .line 1432
    :cond_48c
    const-string v0, "finish focused window"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getFocusedTaskIdWithoutHome()I

    move-result v0

    .line 1434
    .local v0, "focusedTaskId":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_49f

    .line 1435
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v6, v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->removeTask(I)V

    .line 1437
    :cond_49f
    return-wide v24

    .line 1241
    .end local v0    # "focusedTaskId":I
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_4a0
    move/from16 v26, v7

    .line 1242
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_6a3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_6a3

    .line 1243
    if-eqz v11, :cond_4c8

    .line 1244
    const/4 v0, -0x1

    if-ne v9, v0, :cond_4b5

    .line 1245
    const/4 v8, 0x0

    goto :goto_4b6

    :cond_4b5
    move v8, v9

    :goto_4b6
    move v6, v8

    .line 1246
    .local v6, "targetDisplayId":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getFocusedTaskIdWithoutHome()I

    move-result v7

    if-eq v7, v0, :cond_4c2

    .line 1247
    const/16 v0, 0x64

    goto :goto_4c3

    :cond_4c2
    const/4 v0, 0x1

    .line 1249
    .local v0, "screenshotType":I
    :goto_4c3
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v7, v0, v6}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    .line 1252
    .end local v0    # "screenshotType":I
    .end local v6    # "targetDisplayId":I
    :cond_4c8
    return-wide v24

    .line 1264
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_4c9
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v11, :cond_6a3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_6a3

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4fd

    .line 1268
    const-string v0, "Open Task Manager"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1272
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1273
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_503

    .line 1275
    :cond_4fd
    const/16 v0, 0x52

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 1277
    :goto_503
    return-wide v24

    .line 921
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_504
    :sswitch_504
    move/from16 v26, v7

    const/4 v0, 0x0

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    goto/16 :goto_605

    .line 1257
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_509
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    .line 1258
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 1259
    return-wide v24

    .line 1282
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_513
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    if-nez v12, :cond_6a3

    .line 1283
    const-string/jumbo v0, "go to home by meta key"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$EFkyu-gjvzcCMajfc9OKGC8cnFY;

    invoke-direct {v6, v1, v9}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$EFkyu-gjvzcCMajfc9OKGC8cnFY;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1285
    return-wide v24

    .line 1034
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :sswitch_52a
    move/from16 v26, v7

    .line 1035
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_54f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_53b

    goto :goto_54f

    .line 1039
    :cond_53b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_6a3

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1041
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_54e

    const-string v0, "Camera key was blocked by LUC policy"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_54e
    return-wide v24

    .line 1036
    :cond_54f
    :goto_54f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_558

    const-string v0, "Camera key was blocked by sim or carrier status"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_558
    return-wide v24

    .line 1208
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_559
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-nez v11, :cond_574

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1211
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_574

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1212
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_574

    .line 1213
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v0, v7, v6}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    .line 1216
    :cond_574
    return-wide v24

    .line 1184
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_575
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v11, :cond_591

    if-nez v12, :cond_591

    if-nez v5, :cond_591

    .line 1186
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 1187
    .local v6, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_591

    .line 1189
    :try_start_585
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_588
    .catch Landroid/os/RemoteException; {:try_start_585 .. :try_end_588} :catch_589

    .line 1192
    goto :goto_591

    .line 1190
    :catch_589
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "Failed to toggle Quick Panel"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_591
    :goto_591
    return-wide v24

    .line 921
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_592
    move/from16 v26, v7

    .line 1473
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    const/16 v0, 0x75

    if-ne v4, v0, :cond_6a3

    .line 1474
    if-eqz v11, :cond_5b2

    .line 1475
    if-nez v5, :cond_59f

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    .line 1479
    :cond_59f
    if-eqz v14, :cond_6a3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_6a3

    .line 1480
    invoke-virtual {v1, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayDexEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6a3

    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    goto/16 :goto_6a3

    .line 1483
    :cond_5b2
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    if-eqz v0, :cond_6a3

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_6a3

    if-nez v12, :cond_6a3

    .line 1485
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPermissionControllerIfPossible()Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1486
    return-wide v24

    .line 1396
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_5c5
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    if-eqz v13, :cond_6a3

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.myfiles"

    const-string v7, "com.sec.android.app.myfiles.external.ui.MainActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-direct {v1, v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchAppIfPossible(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1399
    return-wide v24

    .line 921
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_5d9
    move/from16 v26, v7

    .line 1373
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    :goto_5db
    const/16 v0, 0x44a

    if-ne v4, v0, :cond_5e3

    if-eqz v11, :cond_5e3

    if-eqz v5, :cond_5e9

    :cond_5e3
    const/16 v0, 0x2d

    if-ne v4, v0, :cond_6a3

    if-eqz v13, :cond_6a3

    .line 1377
    :cond_5e9
    const-string/jumbo v0, "launch quick setting"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 1379
    .restart local v6    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_604

    .line 1385
    const/4 v0, 0x0

    :try_start_5f8
    invoke-interface {v6, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_5fb
    .catch Landroid/os/RemoteException; {:try_start_5f8 .. :try_end_5fb} :catch_5fc

    .line 1389
    goto :goto_604

    .line 1387
    :catch_5fc
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1388
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v7, "Failed to launch Quick Setting"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_604
    :goto_604
    return-wide v24

    .line 1514
    .end local v6    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_605
    nop

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_611

    const/4 v8, 0x1

    goto :goto_612

    :cond_611
    move v8, v0

    :goto_612
    move v0, v8

    .line 1516
    .local v0, "isFromKeyCustomize":Z
    if-nez v0, :cond_6a3

    .line 1517
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1518
    const/4 v7, 0x1

    invoke-virtual {v6, v9, v3, v7}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;Z)I

    move-result v6

    .line 1519
    .local v6, "dispatching":I
    if-ne v6, v7, :cond_61f

    .line 1520
    return-wide v24

    .line 1522
    .end local v6    # "dispatching":I
    :cond_61f
    goto/16 :goto_6a3

    .line 1526
    .end local v0    # "isFromKeyCustomize":Z
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_621
    move/from16 v26, v7

    const/4 v0, 0x0

    .line 1527
    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_62f

    const/4 v8, 0x1

    goto :goto_630

    :cond_62f
    move v8, v0

    :goto_630
    move v0, v8

    .line 1528
    .restart local v0    # "isFromKeyCustomize":Z
    if-nez v0, :cond_6a3

    .line 1529
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1530
    invoke-virtual {v6, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v6

    .line 1531
    .restart local v6    # "dispatching":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_63d

    .line 1532
    return-wide v24

    .line 1534
    .end local v6    # "dispatching":I
    :cond_63d
    goto :goto_6a3

    .line 925
    .end local v0    # "isFromKeyCustomize":Z
    .end local v26    # "flags":I
    .restart local v7    # "flags":I
    :cond_63e
    move/from16 v26, v7

    .end local v7    # "flags":I
    .restart local v26    # "flags":I
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_650

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_650

    .line 927
    const-string v0, "Home key is blocked by LUC policy"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-wide v24

    .line 931
    :cond_650
    const/4 v0, -0x1

    .line 933
    .local v0, "dispatching":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 934
    invoke-virtual {v7, v6, v4}, Lcom/android/server/policy/KeyCustomizeManager;->getPriority(II)I

    move-result v6

    .line 935
    .local v6, "priorityLong":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    move/from16 v17, v0

    .end local v0    # "dispatching":I
    .local v17, "dispatching":I
    const/16 v0, 0x8

    .line 936
    invoke-virtual {v7, v0, v4}, Lcom/android/server/policy/KeyCustomizeManager;->getPriority(II)I

    move-result v0

    .line 937
    .local v0, "priorityDouble":I
    const/16 v7, 0xa

    if-eq v6, v7, :cond_691

    const/16 v7, 0x32

    if-eq v6, v7, :cond_691

    const/16 v7, 0xa

    if-eq v0, v7, :cond_691

    const/16 v7, 0x32

    if-ne v0, v7, :cond_672

    goto :goto_691

    .line 951
    .end local v0    # "priorityDouble":I
    .end local v6    # "priorityLong":I
    :cond_672
    invoke-direct {v1, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->answerCallByHomeKey(Z)Z

    move-result v0

    if-eqz v0, :cond_679

    .line 952
    return-wide v24

    .line 955
    :cond_679
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 956
    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_687

    .line 957
    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    int-to-long v6, v0

    return-wide v6

    .line 968
    :cond_687
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 969
    invoke-virtual {v0, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v0

    .line 970
    .end local v17    # "dispatching":I
    .local v0, "dispatching":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_6a3

    .line 971
    return-wide v24

    .line 941
    .local v0, "priorityDouble":I
    .restart local v6    # "priorityLong":I
    .restart local v17    # "dispatching":I
    :cond_691
    :goto_691
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 942
    invoke-virtual {v7, v9, v3}, Lcom/android/server/policy/KeyCustomizeManager;->dispatchKeyCustomizeKeyEvent(ILandroid/view/KeyEvent;)I

    move-result v7

    .line 943
    .end local v17    # "dispatching":I
    .local v7, "dispatching":I
    move/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "priorityDouble":I
    .local v17, "priorityDouble":I
    if-ne v7, v0, :cond_6a3

    .line 944
    const-string/jumbo v0, "keyCustomize policy by home key."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-wide v24

    .line 1578
    .end local v6    # "priorityLong":I
    .end local v7    # "dispatching":I
    .end local v17    # "priorityDouble":I
    :cond_6a3
    :goto_6a3
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1579
    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_6b1

    .line 1580
    invoke-direct {v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    int-to-long v6, v0

    return-wide v6

    .line 1584
    :cond_6b1
    const-wide/16 v6, -0x2

    return-wide v6

    :sswitch_data_6b4
    .sparse-switch
        0x1b -> :sswitch_52a
        0x20 -> :sswitch_513
        0x3d -> :sswitch_509
        0x4f -> :sswitch_504
        0x6f -> :sswitch_4c9
        0x78 -> :sswitch_4a0
        0x86 -> :sswitch_472
        0x89 -> :sswitch_460
        0xb0 -> :sswitch_440
        0xbb -> :sswitch_3e9
        0x3e9 -> :sswitch_3e9
        0x3f7 -> :sswitch_32e
        0x425 -> :sswitch_30f
        0x428 -> :sswitch_2f9
        0x431 -> :sswitch_2e3
        0x437 -> :sswitch_238
        0x43a -> :sswitch_20e
    .end sparse-switch

    :pswitch_data_6fa
    .packed-switch 0x22
        :pswitch_206
        :pswitch_1fb
        :pswitch_1f0
        :pswitch_1c6
        :pswitch_1b2
        :pswitch_1a7
        :pswitch_196
    .end packed-switch

    :pswitch_data_70c
    .packed-switch 0x31
        :pswitch_18b
        :pswitch_16c
        :pswitch_162
        :pswitch_15e
        :pswitch_144
        :pswitch_140
    .end packed-switch

    :pswitch_data_71c
    .packed-switch 0x442
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_f4
        :pswitch_f0
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 19
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 700
    .local v3, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 701
    .local v4, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    .line 702
    .local v5, "displayId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    .line 703
    .local v6, "deviceId":I
    const/high16 v7, 0x20000000

    and-int/2addr v7, v2

    const/4 v8, 0x0

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    move v7, v8

    .line 704
    .local v7, "interactive":Z
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_27

    const/4 v10, 0x1

    goto :goto_28

    :cond_27
    move v10, v8

    .line 705
    .local v10, "down":Z
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v11

    if-eqz v11, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v11, 0x1

    goto :goto_3b

    :cond_3a
    move v11, v8

    .line 707
    .local v11, "external":Z
    :goto_3b
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v13, "PhoneWindowManagerExt"

    if-eqz v12, :cond_6e

    .line 708
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "interceptKeyTq code="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " down="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " repeatCount="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " displayId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_6e
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v12, v12, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    if-eqz v12, :cond_78

    .line 713
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v8, v12, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 716
    :cond_78
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkPolicyBeforeQueueing(Landroid/view/KeyEvent;)I

    move-result v12

    .line 717
    .local v12, "policy":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_80

    .line 718
    return v12

    .line 723
    :cond_80
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v15, v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 725
    invoke-direct {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkPolicyAfterKeyCombination(I)I

    move-result v12

    .line 726
    if-eq v12, v14, :cond_8c

    .line 727
    return v12

    .line 732
    :cond_8c
    const/4 v15, 0x3

    if-eq v3, v15, :cond_14d

    const/16 v14, 0x3f7

    const/4 v15, 0x4

    if-eq v3, v14, :cond_14c

    const/16 v14, 0x43a

    const/4 v9, 0x2

    if-eq v3, v14, :cond_12c

    const/16 v14, 0x436

    if-eq v3, v14, :cond_103

    const/16 v14, 0x437

    if-eq v3, v14, :cond_14c

    packed-switch v3, :pswitch_data_1a0

    const/4 v8, 0x1

    goto :goto_102

    .line 772
    :pswitch_a6
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v8, :cond_b9

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    if-nez v8, :cond_b9

    .line 774
    if-nez v4, :cond_b9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 775
    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;Z)V

    .line 779
    :cond_b9
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v8, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 780
    const-string/jumbo v8, "systemKeyEventRequested ADD_PASS"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return v15

    .line 783
    :cond_c8
    const-string/jumbo v8, "systemKeyEventRequested REMOVE_PASS"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v8, 0x8

    return v8

    .line 810
    :pswitch_d1
    if-eqz v10, :cond_d8

    .line 811
    invoke-direct {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)I

    move-result v8

    return v8

    .line 810
    :cond_d8
    const/4 v8, 0x1

    goto :goto_102

    .line 817
    :pswitch_da
    if-eqz v10, :cond_f9

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVolumeKeyAnswerCallMode()Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVoIPRinging()Z

    move-result v8

    if-eqz v8, :cond_f9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->answerVoIPCall()Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 820
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v8, :cond_f8

    .line 821
    const/4 v8, 0x0

    const-string v13, "VCVA"

    invoke-static {v13, v8}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_f8
    return v9

    .line 827
    :cond_f9
    if-eqz v10, :cond_101

    .line 828
    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)I

    move-result v8

    return v8

    .line 827
    :cond_101
    const/4 v8, 0x1

    .line 858
    :goto_102
    return v8

    .line 834
    :cond_103
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v8, :cond_12b

    .line 840
    if-eqz v10, :cond_12a

    .line 841
    const-string v8, "Press KEYCODE_DOUBLE_TAP"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v8, :cond_12a

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    if-eqz v8, :cond_12a

    .line 843
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string/jumbo v9, "pen_intent_com"

    const-string/jumbo v13, "pen_doubletab"

    invoke-virtual {v8, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 848
    :cond_12a
    return v15

    .line 850
    :cond_12b
    return v9

    .line 789
    :cond_12c
    if-eqz v7, :cond_14b

    .line 790
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 791
    invoke-virtual {v8}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v8

    if-eqz v8, :cond_149

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 792
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-ne v8, v9, :cond_149

    .line 793
    const-string/jumbo v8, "no wakeup(prox and inCall)"

    invoke-static {v13, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/16 v8, 0x22

    return v8

    .line 796
    :cond_149
    const/4 v8, 0x1

    return v8

    .line 806
    :cond_14b
    return v15

    .line 854
    :cond_14c
    return v15

    .line 734
    :cond_14d
    const/4 v9, 0x1

    .line 737
    .local v9, "result":I
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 738
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v13

    if-nez v13, :cond_18f

    if-eqz v5, :cond_15a

    if-ne v5, v14, :cond_18f

    :cond_15a
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 740
    invoke-virtual {v13, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v13

    if-nez v13, :cond_18f

    .line 741
    if-nez v7, :cond_169

    if-eqz v10, :cond_169

    .line 742
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpByHomeKey:Z

    .line 745
    :cond_169
    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpByHomeKey:Z

    if-eqz v13, :cond_18f

    .line 746
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    .line 747
    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 749
    .local v13, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-eqz v13, :cond_18b

    .line 750
    invoke-virtual {v13}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isDoubleTapEnabled()Z

    move-result v14

    if-nez v14, :cond_183

    invoke-virtual {v13}, Lcom/android/server/policy/MultiTapKeyEventHandler;->isTripleTapEnabled()Z

    move-result v14

    if-eqz v14, :cond_18b

    .line 751
    :cond_183
    invoke-virtual {v13, v1}, Lcom/android/server/policy/MultiTapKeyEventHandler;->dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v14

    if-eqz v14, :cond_18b

    .line 752
    or-int/lit8 v9, v9, 0x8

    .line 755
    :cond_18b
    if-nez v10, :cond_18f

    .line 756
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpByHomeKey:Z

    .line 761
    .end local v13    # "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    :cond_18f
    if-eqz v7, :cond_19f

    if-eqz v10, :cond_19f

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 763
    invoke-virtual {v8}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v8

    if-eqz v8, :cond_19f

    .line 764
    const/16 v9, 0x12

    .line 768
    :cond_19f
    return v9

    :pswitch_data_1a0
    .packed-switch 0x18
        :pswitch_da
        :pswitch_d1
        :pswitch_a6
    .end packed-switch
.end method

.method public interceptKeyBeforeQuickAccess(IFF)Z
    .registers 14
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3213
    const/4 v0, 0x0

    .line 3215
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eq p1, v1, :cond_75

    const/16 v4, 0xe1

    const/4 v5, 0x2

    const-string/jumbo v6, "location"

    const-string/jumbo v7, "info"

    const/4 v8, 0x1

    if-eq p1, v4, :cond_54

    const/16 v4, 0xe2

    if-eq p1, v4, :cond_54

    packed-switch p1, :pswitch_data_be

    packed-switch p1, :pswitch_data_ca

    goto :goto_8a

    .line 3232
    :pswitch_1e
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 3233
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3234
    new-array v4, v5, [F

    aput p2, v4, v2

    aput p3, v4, v8

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 3235
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3236
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3238
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v3, :cond_8a

    const/16 v3, 0x8

    if-ne p1, v3, :cond_8a

    .line 3240
    invoke-virtual {p0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->needToSendSALoggingForFoldable(Z)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 3241
    const-string v3, "W003"

    const-string v4, "Double Tab"

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 3256
    :cond_54
    :pswitch_54
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 3257
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3258
    new-array v1, v5, [F

    aput p2, v1, v2

    aput p3, v1, v8

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 3259
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3260
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.permission.BROADCAST_QUICKACCESS"

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3262
    goto :goto_8a

    .line 3219
    :cond_75
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.spay.quickpay"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 3220
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3221
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3223
    nop

    .line 3269
    :cond_8a
    :goto_8a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_bd

    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptKeyBeforeQuickAccess: info="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhoneWindowManagerExt"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_bd
    return v2

    :pswitch_data_be
    .packed-switch 0x8
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0xf
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method interceptPowerKeyDown(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2411
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getCoverController()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v0

    .line 2412
    .local v0, "coverController":Lcom/android/server/wm/CoverPolicyController;
    if-eqz v0, :cond_f

    .line 2413
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicyController;->sendPowerKeyToCover()V

    .line 2416
    .end local v0    # "coverController":Lcom/android/server/wm/CoverPolicyController;
    :cond_f
    return-void
.end method

.method isBixbySetupWizardMode()Z
    .registers 4

    .line 4542
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsBixbySetupWizardMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 4543
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10401fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4544
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 4545
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 4547
    :cond_1f
    const-string v1, "PhoneWindowManagerExt"

    const-string v2, "block to trigger talkbackMode when Bixby Setup Wizard is enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const/4 v1, 0x1

    return v1

    .line 4550
    .end local v0    # "msg":Ljava/lang/String;
    :cond_28
    return v1
.end method

.method isBlockedPowerKey()Z
    .registers 4

    .line 5434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 5435
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1b

    .line 5436
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    .line 5440
    :cond_1b
    const/4 v1, 0x0

    return v1

    .line 5437
    :cond_1d
    :goto_1d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "PhoneWindowManagerExt"

    const-string v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method isCameraRunning()Z
    .registers 3

    .line 2848
    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isDisplayDexEnabled(I)Z
    .registers 5
    .param p1, "targetDisplayId"    # I

    .line 5795
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    if-eq p1, v2, :cond_12

    .line 5796
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v0

    if-ne v0, v1, :cond_13

    if-nez p1, :cond_13

    :cond_12
    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 5795
    :goto_14
    return v1
.end method

.method isDoublePressPower()Z
    .registers 3

    .line 2695
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoubleTapLaunchCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_POWER_TV_MODE:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1d

    :cond_12
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 2701
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 2699
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method isDoubleTapToWakeUp(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 4945
    const/16 v0, 0xe0

    if-ne p1, v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isFlipTypeCoverClosed()Z
    .registers 3

    .line 3784
    const/4 v0, 0x0

    .line 3785
    .local v0, "flipTypeCoverClosed":Z
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCoverController()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v1

    .line 3786
    .local v1, "coverPolicyController":Lcom/android/server/wm/CoverPolicyController;
    if-eqz v1, :cond_b

    .line 3787
    invoke-virtual {v1}, Lcom/android/server/wm/CoverPolicyController;->isFlipTypeCoverClosed()Z

    move-result v0

    .line 3789
    :cond_b
    return v0
.end method

.method public isFullscreenNavigationBarGestureEnabled()Z
    .registers 2

    .line 5426
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHasNavigationBarGesture:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavigationBarGestureDetailType:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isGlobalActionsDialogPowerOptionHidden()Z
    .registers 2

    .line 6952
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->isDialogPowerOptionHidden()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isGlobalActionsDialogShowing()Z
    .registers 2

    .line 6948
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isInDexMode()Z
    .registers 2

    .line 5767
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInteractionControlEnabled()Z
    .registers 2

    .line 6512
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return v0
.end method

.method public isKeyguardOccluded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 5933
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 5937
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 6033
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 6037
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .registers 2

    .line 3473
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMetaKeyEventRequested()Z
    .registers 2

    .line 3750
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested()Z

    move-result v0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 3746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isNavBarImeBtnEnabled()Z
    .registers 2

    .line 3778
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return v0
.end method

.method isOneHandOpTriggeredByHomeKey()Z
    .registers 3

    .line 1692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->isOneHandOpEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    .line 1693
    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->getOneHandOpTriggeredType()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1692
    :goto_13
    return v1
.end method

.method isQuadruplePressPower()Z
    .registers 2

    .line 2715
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    if-eqz v0, :cond_6

    .line 2717
    const/4 v0, 0x1

    return v0

    .line 2719
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method isQuintuplePressPower()Z
    .registers 2

    .line 2723
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    if-eqz v0, :cond_a

    .line 2725
    const/4 v0, 0x1

    return v0

    .line 2727
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isReducedAnimEnabled()Z
    .registers 2

    .line 3136
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReducedAnimEnabled:Z

    return v0
.end method

.method public isSBikeModeEnabled()Z
    .registers 2

    .line 6708
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSBikeModeOn:Z

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 3742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .registers 2

    .line 4386
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4387
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4386
    :goto_17
    return v0
.end method

.method isTriggeredKeyCombination()Z
    .registers 2

    .line 2606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCombinationManager;->isTriggeredKeyCombination()Z

    move-result v0

    return v0
.end method

.method isTriplePressPower()Z
    .registers 3

    .line 2705
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_TAP_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_11

    goto :goto_13

    .line 2711
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 2709
    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method isVoiceAssistantTriggeredByShortcut()Z
    .registers 2

    .line 4619
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4620
    const/4 v0, 0x0

    return v0

    .line 4623
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method isVolumeKeyAnswerCallMode()Z
    .registers 2

    .line 4632
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4633
    const/4 v0, 0x1

    return v0

    .line 4635
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public keyguardGoingAwayWithFingerprintUnlock(Z)V
    .registers 7
    .param p1, "isWakeAndUnlock"    # Z

    .line 6097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnlockFP triggered. isWakeAndUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    const/4 v0, 0x1

    if-eqz p1, :cond_27

    .line 6099
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 6100
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeAndUnlockPendingAction()V

    .line 6101
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6108
    :cond_27
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v1, :cond_39

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->needToSendSALoggingForFoldable(Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6109
    const/4 v0, 0x4

    const-string v1, "W003"

    const-string v2, "Fingerprint Sensor"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    .line 6112
    :cond_39
    return-void
.end method

.method public synthetic lambda$checkPolicyBeforeDispatching$4$PhoneWindowManagerExt(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2581
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public synthetic lambda$handleXCoverKey$7$PhoneWindowManagerExt()V
    .registers 3

    .line 4354
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public synthetic lambda$init$0$PhoneWindowManagerExt()V
    .registers 7

    .line 485
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager;->getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizeManager$ErrorCode;

    if-ne v0, v1, :cond_5e

    .line 487
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager;->updateXmlVersion()Z

    .line 489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "dedicated_app_xcover_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    move v1, v4

    goto :goto_27

    :cond_26
    move v1, v2

    .line 492
    .local v1, "dedicatedAppXCoverEnabled":Z
    :goto_27
    const-string v5, "dedicated_app_top_switch"

    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_30

    move v2, v4

    .line 495
    .local v2, "dedicatedAppTopEnabled":Z
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateFromOld dedicatedAppXCoverEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dedicatedAppTopEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneWindowManagerExt"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-nez v1, :cond_5b

    if-eqz v2, :cond_54

    goto :goto_5b

    .line 504
    :cond_54
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initVZWDedicatedPTT()V

    .line 505
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initB2BDedicatedEPTT()V

    goto :goto_5e

    .line 501
    :cond_5b
    :goto_5b
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->migrateFromOld(ZZ)V

    .line 509
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "dedicatedAppXCoverEnabled":Z
    .end local v2    # "dedicatedAppTopEnabled":Z
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager;->initXmlFileInfo()V

    .line 510
    return-void
.end method

.method public synthetic lambda$interceptKeyBeforeDispatching$3$PhoneWindowManagerExt(I)V
    .registers 3
    .param p1, "adjustedDisplayId"    # I

    .line 1284
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public synthetic lambda$new$10$PhoneWindowManagerExt()V
    .registers 3

    .line 6115
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    if-eqz v0, :cond_11

    .line 6116
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "WakeAndUnlock not triggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 6118
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeAndUnlockPendingAction()V

    .line 6120
    :cond_11
    return-void
.end method

.method public synthetic lambda$new$11$PhoneWindowManagerExt()V
    .registers 3

    .line 6137
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    if-eqz v0, :cond_11

    .line 6138
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "WakeUpReasonFingerprint not triggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    .line 6140
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeUpReasonFingerprintPendingAction()V

    .line 6142
    :cond_11
    return-void
.end method

.method public synthetic lambda$performHomeBroadcast$5$PhoneWindowManagerExt()V
    .registers 5

    .line 3609
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3612
    return-void
.end method

.method public synthetic lambda$shutdown$6$PhoneWindowManagerExt(Z)V
    .registers 3
    .param p1, "confirm"    # Z

    .line 3899
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void
.end method

.method public synthetic lambda$systemBooted$1$PhoneWindowManagerExt()V
    .registers 1

    .line 675
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initCameraManager()V

    return-void
.end method

.method public launchHomeForDesktopMode(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 6942
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 6943
    return-void
.end method

.method launchHomeFromHotKey()Z
    .registers 3

    .line 2450
    nop

    .line 2451
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2452
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launchHomeFromHotKey : Key was blocked by interaction control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/4 v0, 0x1

    return v0

    .line 2455
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method launchPremiumWatch(Z)V
    .registers 8
    .param p1, "folded"    # Z

    .line 6481
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    if-eqz p1, :cond_77

    .line 6489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6490
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 6491
    .local v0, "isLockTypeNone":Z
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v1

    .line 6492
    .local v1, "isCameraRunning":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_26

    .line 6493
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 6494
    .local v2, "isOffhook":Z
    :goto_27
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    .line 6495
    .local v3, "isUserSetupComplete":Z
    if-nez v0, :cond_3e

    if-nez v1, :cond_3e

    if-nez v2, :cond_3e

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-nez v4, :cond_3e

    if-nez v3, :cond_3a

    goto :goto_3e

    .line 6504
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startActivityPremiumWatch()V

    goto :goto_77

    .line 6497
    :cond_3e
    :goto_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not launch premium watch. cameraRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " offhook="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " LockTypeNone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " emergencyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " userSetupComplete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneWindowManagerExt"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6501
    return-void

    .line 6506
    .end local v0    # "isLockTypeNone":Z
    .end local v1    # "isCameraRunning":Z
    .end local v2    # "isOffhook":Z
    .end local v3    # "isUserSetupComplete":Z
    :cond_77
    :goto_77
    return-void
.end method

.method public needToSendSALoggingForFoldable(Z)Z
    .registers 6
    .param p1, "needToCheckLidState"    # Z

    .line 6593
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlreadySendedSALogging:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6596
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p1, :cond_2d

    .line 6598
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 6593
    :goto_2e
    return v0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 16
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .line 5497
    move v0, p3

    .line 5498
    .local v0, "newPenState":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v1, :cond_15c

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_15c

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-ne v0, v1, :cond_12

    goto/16 :goto_15c

    .line 5503
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyPenSwitchChanged penInsert="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    .line 5505
    .local v1, "screenOn":Z
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    if-eqz v3, :cond_4c

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v3, v5, :cond_4c

    if-nez p3, :cond_4c

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    if-nez v3, :cond_4c

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-nez v3, :cond_4c

    :cond_4a
    move v3, v4

    goto :goto_4d

    :cond_4c
    move v3, v6

    .line 5511
    .local v3, "needStartScreenOffMemo":Z
    :goto_4d
    if-nez p3, :cond_6f

    .line 5512
    if-eqz v1, :cond_5b

    .line 5514
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6f

    .line 5516
    :cond_5b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v7, :cond_61

    if-nez v3, :cond_6f

    .line 5517
    :cond_61
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0x66

    const-string/jumbo v11, "penDetached"

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5524
    :cond_6f
    :goto_6f
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    if-eqz v7, :cond_9e

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v5, :cond_9e

    .line 5525
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 5526
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v7, :cond_90

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    if-eqz v7, :cond_90

    .line 5527
    new-instance v8, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-direct {v8, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5529
    :cond_90
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-eqz v7, :cond_98

    .line 5530
    invoke-virtual {v7, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->playPenSound(Z)V

    goto :goto_9e

    .line 5532
    :cond_98
    const-string/jumbo v7, "mPenSoundInfo is null"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5537
    :cond_9e
    :goto_9e
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    if-eqz v7, :cond_af

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v5, :cond_af

    .line 5538
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->vibrationEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 5542
    :cond_af
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v7, "penInsert"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5543
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v7, "isScreenOn"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5544
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v7

    const-string/jumbo v8, "isKeyguardLocked"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5545
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_d6

    goto :goto_d7

    :cond_d6
    move v4, v6

    :goto_d7
    const-string/jumbo v6, "isBoot"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5546
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5548
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SMART_CLIP:Z

    if-eqz v4, :cond_102

    .line 5549
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v4, :cond_fb

    .line 5550
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 5551
    const-string/jumbo v5, "spengestureservice"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 5553
    :cond_fb
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v4, :cond_102

    .line 5554
    invoke-virtual {v4, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    .line 5559
    :cond_102
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v4, :cond_11c

    if-eqz v3, :cond_11c

    .line 5560
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string/jumbo v5, "pen_intent_com"

    const-string/jumbo v6, "pen_detach"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5561
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 5565
    :cond_11c
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_159

    .line 5566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPenSwitchChanged, penInsert="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", screenOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPenSoundEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPenVibrationEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", needStartScreenOffMemo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    :cond_159
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 5574
    return-void

    .line 5499
    .end local v1    # "screenOn":Z
    .end local v3    # "needStartScreenOffMemo":Z
    :cond_15c
    :goto_15c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyPenSwitchChanged ignored, mPenType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPenState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newPenState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    return-void
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 5745
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5746
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_b

    .line 5747
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifyRequestedGameToolsWin(Z)V

    .line 5749
    :cond_b
    return-void
.end method

.method public onDexModeChangedLw(I)V
    .registers 5
    .param p1, "dexMode"    # I

    .line 6044
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    if-ne v0, p1, :cond_1c

    .line 6045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDexModeChangedLw: called same dexMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    return-void

    .line 6048
    :cond_1c
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 6049
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_25

    .line 6050
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onDexModeChanged(I)V

    .line 6053
    :cond_25
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_THREE_FINGER_GESTURE:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-eqz v0, :cond_41

    .line 6054
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 6055
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_41

    .line 6056
    if-nez p1, :cond_3c

    .line 6057
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    goto :goto_41

    .line 6059
    :cond_3c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    .line 6063
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_41
    :goto_41
    return-void
.end method

.method public onHomeChangedBooster()V
    .registers 2

    .line 3465
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v0

    .line 3466
    .local v0, "booster":Lcom/android/server/wm/ActivityManagerPerformance;
    if-eqz v0, :cond_9

    .line 3467
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isHomeKeyPressed()V

    .line 3469
    :cond_9
    return-void
.end method

.method public onKeyguardOccludedChangedLw(ZI)V
    .registers 4
    .param p1, "occluded"    # Z
    .param p2, "displayId"    # I

    .line 5952
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)V

    .line 5953
    return-void
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .registers 2
    .param p1, "features"    # Landroid/util/SparseIntArray;

    .line 3477
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 3478
    return-void
.end method

.method public onLockTaskStateChanged(I)V
    .registers 2
    .param p1, "lockTaskModeState"    # I

    .line 3460
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 3461
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 545
    return-void
.end method

.method onUserSwitch()V
    .registers 5

    .line 645
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_3f

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getPenState()I

    move-result v0

    .line 647
    .local v0, "penState":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 648
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string/jumbo v3, "penInsert"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    const-string/jumbo v3, "isScreenOn"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    const-string/jumbo v3, "isKeyguardLocked"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 658
    .end local v0    # "penState":I
    :cond_3f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->resetScreenshotConnection()V

    .line 661
    return-void
.end method

.method performHapticFeedbackLw(IZLjava/lang/String;)Z
    .registers 15
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4735
    return v1

    .line 4738
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f.b. a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " he="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " eme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ksno = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4740
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callingPackage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4738
    const-string v3, "PhoneWindowManagerExt"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    if-nez p2, :cond_80

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    if-eqz v0, :cond_79

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencyModeEnabled:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4744
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4745
    :cond_79
    const-string/jumbo v0, "haptic disabled by policy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    return v1

    .line 4749
    :cond_80
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    const/16 v4, 0x9

    const/4 v5, 0x4

    const/16 v6, 0xd

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v0, :cond_11f

    .line 4751
    if-eqz p1, :cond_f6

    if-ne p1, v6, :cond_93

    goto/16 :goto_f6

    .line 4754
    :cond_93
    if-eq p1, v10, :cond_f1

    if-ne p1, v9, :cond_98

    goto :goto_f1

    .line 4757
    :cond_98
    if-eq p1, v5, :cond_ea

    if-eq p1, v4, :cond_ea

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a0

    goto :goto_ea

    .line 4761
    :cond_a0
    if-ne p1, v9, :cond_a7

    .line 4762
    invoke-static {v10}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .local v0, "type":I
    goto :goto_fa

    .line 4763
    .end local v0    # "type":I
    :cond_a7
    const/16 v0, 0xe

    const/16 v4, 0x10

    if-eq p1, v4, :cond_e5

    const/16 v5, 0xc

    if-ne p1, v5, :cond_b2

    goto :goto_e5

    .line 4766
    :cond_b2
    const/16 v5, 0x11

    if-ne p1, v5, :cond_bb

    .line 4767
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .restart local v0    # "type":I
    goto :goto_fa

    .line 4768
    .end local v0    # "type":I
    :cond_bb
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-eq p1, v2, :cond_e3

    .line 4769
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-eq p1, v2, :cond_e3

    .line 4771
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-eq p1, v0, :cond_e3

    const/16 v0, 0xf

    .line 4772
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-eq p1, v0, :cond_e3

    .line 4773
    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-eq p1, v0, :cond_e3

    .line 4775
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    goto :goto_e3

    .line 4778
    :cond_e2
    return v1

    .line 4776
    :cond_e3
    :goto_e3
    move v0, p1

    .restart local v0    # "type":I
    goto :goto_fa

    .line 4765
    .end local v0    # "type":I
    :cond_e5
    :goto_e5
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .restart local v0    # "type":I
    goto :goto_fa

    .line 4760
    .end local v0    # "type":I
    :cond_ea
    :goto_ea
    const/16 v0, 0x29

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .restart local v0    # "type":I
    goto :goto_fa

    .line 4756
    .end local v0    # "type":I
    :cond_f1
    :goto_f1
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .restart local v0    # "type":I
    goto :goto_fa

    .line 4753
    .end local v0    # "type":I
    :cond_f6
    :goto_f6
    invoke-static {v10}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .line 4781
    .restart local v0    # "type":I
    :goto_fa
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_113

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4782
    :cond_113
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v8, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 4784
    return v10

    .line 4786
    .end local v0    # "type":I
    :cond_11f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_148

    .line 4787
    if-nez p2, :cond_148

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v10, :cond_148

    .line 4789
    if-nez p1, :cond_141

    .line 4791
    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    .line 4792
    .local v0, "sepIndex":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v8, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 4794
    .end local v0    # "sepIndex":I
    goto :goto_147

    .line 4797
    :cond_141
    const-string/jumbo v0, "haptic generated by application"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    :goto_147
    return v10

    .line 4804
    :cond_148
    if-eqz p1, :cond_1a3

    if-eq p1, v10, :cond_1a3

    if-eq p1, v9, :cond_1a3

    if-eq p1, v6, :cond_1a3

    .line 4809
    invoke-static {v10}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-eq p1, v0, :cond_1a3

    .line 4810
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_15d

    goto :goto_1a3

    .line 4812
    :cond_15d
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_166

    .line 4813
    const/16 v0, 0x64

    .local v0, "duration":I
    goto :goto_1a5

    .line 4814
    .end local v0    # "duration":I
    :cond_166
    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_16f

    .line 4815
    const/16 v0, 0xfa

    .restart local v0    # "duration":I
    goto :goto_1a5

    .line 4816
    .end local v0    # "duration":I
    :cond_16f
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_17a

    .line 4817
    const/16 v0, 0x1f4

    .restart local v0    # "duration":I
    goto :goto_1a5

    .line 4818
    .end local v0    # "duration":I
    :cond_17a
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_185

    .line 4819
    const/16 v0, 0x5dc

    .restart local v0    # "duration":I
    goto :goto_1a5

    .line 4820
    .end local v0    # "duration":I
    :cond_185
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_1a2

    .line 4821
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_197

    const-string/jumbo v0, "vibrate pattern"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :cond_197
    new-array v0, v5, [J

    fill-array-data v0, :array_1c6

    .line 4823
    .local v0, "pattern":[J
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v0, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 4824
    return v10

    .line 4826
    .end local v0    # "pattern":[J
    :cond_1a2
    return v1

    .line 4811
    :cond_1a3
    :goto_1a3
    const/16 v0, 0x32

    .line 4829
    .local v0, "duration":I
    :goto_1a5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1be

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    :cond_1be
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4831
    return v10

    nop

    :array_1c6
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4842
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8c

    .line 4843
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4844
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPC_Remote_Controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_8c

    .line 4849
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_58

    const/16 v1, 0x52

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x54

    if-eq v0, v1, :cond_49

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_58

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x430

    if-eq v0, v1, :cond_58

    const/16 v1, 0x431

    if-eq v0, v1, :cond_58

    goto :goto_8b

    .line 4867
    :cond_49
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    if-eqz v0, :cond_54

    .line 4868
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZ)Z

    .line 4871
    :cond_54
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 4872
    goto :goto_8b

    .line 4878
    :cond_58
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    goto :goto_8b

    .line 4854
    :cond_5c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 4855
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 4857
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 4858
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    if-eqz v0, :cond_88

    .line 4859
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZ)Z

    .line 4862
    :cond_88
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 4882
    :cond_8b
    :goto_8b
    return-void

    .line 4845
    :cond_8c
    :goto_8c
    return-void
.end method

.method powerLongPress(ILandroid/view/KeyEvent;ZZ)Z
    .registers 13
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "interactive"    # Z
    .param p4, "isVirtualKey"    # Z

    .line 2763
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z

    const-string v1, "PhoneWindowManagerExt"

    const/4 v2, 0x1

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    .line 2764
    const/4 v0, 0x4

    .line 2765
    .local v0, "pressType":I
    const/16 v3, 0x1a

    .line 2767
    .local v3, "keyCode":I
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v5, 0x4

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v4

    .line 2768
    .local v4, "action":I
    if-ne v4, v2, :cond_1d

    .line 2769
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    .line 2770
    return v2

    .line 2771
    :cond_1d
    const/4 v7, 0x3

    if-ne v4, v7, :cond_27

    .line 2772
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 2773
    return v2

    .line 2774
    :cond_27
    const/4 v6, 0x2

    if-ne v4, v6, :cond_30

    .line 2775
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v5, p2, v2}, Lcom/android/server/policy/KeyCustomizeManager;->sendBroadcast(Landroid/view/KeyEvent;Z)I

    goto :goto_39

    .line 2776
    :cond_30
    if-ne v4, v5, :cond_39

    .line 2777
    const-string/jumbo v5, "powerLongPress was blocked by keyCustomizePolicy."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    return v2

    .line 2782
    .end local v0    # "pressType":I
    .end local v3    # "keyCode":I
    .end local v4    # "action":I
    :cond_39
    :goto_39
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_a0

    if-ne p1, v2, :cond_a0

    if-nez p4, :cond_a0

    .line 2785
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    if-eqz v0, :cond_67

    if-eq v0, v2, :cond_5f

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid side key long press type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyLongPressType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    return v3

    .line 2794
    :cond_5f
    if-eqz p3, :cond_7e

    .line 2795
    const-string v0, "Side key long press global action"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    return v3

    .line 2787
    :cond_67
    invoke-direct {p0, p3, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    .line 2788
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbyServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CHILE_CMAS_DIALOG:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsChileCmasDialogShowing:Z

    if-nez v0, :cond_7e

    .line 2790
    :cond_7b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyServiceLongPress(Landroid/view/KeyEvent;Z)V

    .line 2804
    :cond_7e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 2805
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2806
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2807
    const-string/jumbo v3, "startActivity long press guide"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9a
    const-string v0, "consume powerLongPress"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    return v2

    .line 2814
    :cond_a0
    return v3
.end method

.method powerMultiPressAction(ILandroid/view/KeyEvent;ZI)Z
    .registers 13
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .line 2621
    const/4 v0, 0x0

    .line 2623
    .local v0, "result":Z
    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "PhoneWindowManagerExt"

    const/16 v4, 0x1a

    packed-switch p1, :pswitch_data_b2

    goto/16 :goto_b1

    .line 2676
    :pswitch_c
    const/16 v3, 0x8

    .line 2677
    .local v3, "pressType":I
    const/16 v5, 0x1a

    .line 2679
    .local v5, "keyCode":I
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v4}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v6

    .line 2680
    .local v6, "action":I
    if-ne v6, v2, :cond_20

    .line 2681
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v1, v7, v4}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    goto :goto_28

    .line 2682
    :cond_20
    if-ne v6, v1, :cond_28

    .line 2683
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v4}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 2686
    .end local v3    # "pressType":I
    .end local v5    # "keyCode":I
    .end local v6    # "action":I
    :cond_28
    :goto_28
    const/4 v0, 0x1

    goto/16 :goto_b1

    .line 2642
    :pswitch_2b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_POWER_TV_MODE:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    if-eqz v1, :cond_3f

    .line 2644
    const-string v1, "Launch TvMode by power key double tap"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoubleTapLaunchTvMode()V

    .line 2647
    :cond_3f
    const/4 v0, 0x1

    .line 2648
    goto/16 :goto_b1

    .line 2625
    :pswitch_42
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v1, :cond_52

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    if-eqz v1, :cond_52

    .line 2626
    const-string v1, "Launch side key mapping app by side key double tap"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoubleTapSideKeyAction(Landroid/view/KeyEvent;Z)V

    .line 2629
    :cond_52
    const/4 v0, 0x1

    .line 2630
    goto :goto_b1

    .line 2668
    :pswitch_54
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v1, :cond_5b

    .line 2669
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->callOneTouchReport()V

    .line 2671
    :cond_5b
    const/4 v0, 0x1

    .line 2672
    goto :goto_b1

    .line 2651
    :pswitch_5d
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_TAP_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v4, :cond_64

    .line 2652
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastForPanicCall()V

    .line 2655
    :cond_64
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSafetyAssuranceEnabled:Z

    if-eqz v4, :cond_9e

    .line 2656
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne p4, v1, :cond_72

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I

    if-eq v1, v5, :cond_72

    move v1, v2

    goto :goto_73

    :cond_72
    move v1, v4

    .line 2657
    .local v1, "canLaunchTripleTap":Z
    :goto_73
    if-ne p4, v5, :cond_7a

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafetyAssurancePowerNumber:I

    if-ne v6, v5, :cond_7a

    goto :goto_7b

    :cond_7a
    move v2, v4

    .line 2658
    .local v2, "canLaunchQuadrupleTap":Z
    :goto_7b
    if-nez v1, :cond_7f

    if-eqz v2, :cond_9e

    .line 2659
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SOS Message mode toggle. triple="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " quadruple="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastForSafetyAssurance()V

    .line 2664
    .end local v1    # "canLaunchTripleTap":Z
    .end local v2    # "canLaunchQuadrupleTap":Z
    :cond_9e
    const/4 v0, 0x1

    .line 2665
    goto :goto_b1

    .line 2633
    :pswitch_a0
    nop

    .line 2634
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoubleTapLaunchCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2635
    const-string v1, "Launch camera by power key double tap"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoubleTapLaunchCamera(I)V

    .line 2638
    :cond_af
    const/4 v0, 0x1

    .line 2639
    nop

    .line 2691
    :goto_b1
    return v0

    :pswitch_data_b2
    .packed-switch 0x65
        :pswitch_a0
        :pswitch_5d
        :pswitch_54
        :pswitch_42
        :pswitch_2b
        :pswitch_c
    .end packed-switch
.end method

.method powerPress(Landroid/view/KeyEvent;Z)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 2340
    const/4 v0, 0x0

    .line 2343
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v2, 0x3

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v1

    .line 2345
    .local v1, "action":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_14

    .line 2346
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    .line 2348
    return v4

    .line 2349
    :cond_14
    const/4 v6, 0x0

    if-ne v1, v2, :cond_1c

    .line 2350
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v7, v2, v6, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    .line 2355
    .end local v1    # "action":I
    :cond_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 2356
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3c

    if-eqz p2, :cond_34

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-eqz v1, :cond_3a

    .line 2359
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFlipTypeCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_3a
    move v4, v5

    goto :goto_3d

    :cond_3c
    nop

    :goto_3d
    move v1, v4

    .line 2362
    .local v1, "endCallPolicy":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 2363
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    const-string v3, "PhoneWindowManagerExt"

    if-eqz v2, :cond_7f

    .line 2364
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2367
    const-string/jumbo v4, "silenceRinger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 2369
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v4, :cond_60

    .line 2370
    const-string v4, "VCPS"

    invoke-static {v4, v6}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    :cond_60
    const/4 v0, 0x0

    goto :goto_7f

    .line 2373
    :cond_62
    if-eqz v1, :cond_7f

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2376
    const-string v4, "endCall"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v4, :cond_78

    .line 2378
    const-string v4, "VCPE"

    invoke-static {v4, v6}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :cond_78
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2381
    const/4 v0, 0x1

    .line 2387
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 2388
    .local v4, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v4, :cond_9a

    if-eqz v1, :cond_9a

    .line 2389
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v5

    if-nez v5, :cond_9a

    .line 2390
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 2391
    const-string/jumbo v5, "hangupVoIPCall"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_99} :catch_9b

    .line 2392
    const/4 v0, 0x1

    .line 2396
    .end local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_9a
    goto :goto_a1

    .line 2394
    :catch_9b
    move-exception v4

    .line 2395
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2400
    .end local v1    # "endCallPolicy":Z
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_a1
    :goto_a1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v1, :cond_ae

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    if-nez v1, :cond_ad

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeUpReasonFingerprintTriggered:Z

    if-eqz v1, :cond_ae

    .line 2402
    :cond_ad
    const/4 v0, 0x1

    .line 2406
    :cond_ae
    return v0
.end method

.method public putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;)V
    .registers 5
    .param p1, "press"    # I
    .param p2, "keyCustomizeInfo"    # Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 5719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    .line 5720
    return-void
.end method

.method public removeKeyCustomizeEvent(IIIZ)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "press"    # I
    .param p3, "keyCode"    # I
    .param p4, "restore"    # Z

    .line 5731
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/KeyCustomizeManager;->removeKeyCustomizeEvent(IIIZ)V

    .line 5732
    return-void
.end method

.method protected removeNoActionLogForFoldable()V
    .registers 3

    .line 6624
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_b

    .line 6625
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6627
    :cond_b
    return-void
.end method

.method reportScreenStateToVrManager(Z)V
    .registers 3
    .param p1, "isScreenOn"    # Z

    .line 6850
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_7

    .line 6851
    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/GearVrManagerInternal;->onScreenStateChanged(Z)V

    .line 6853
    :cond_7
    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "request"    # Z

    .line 3734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    .line 3735
    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .line 3738
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/SystemKeyManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public restartOneHandOpService()V
    .registers 3

    .line 1739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    const-string/jumbo v1, "restartOneHandOpService"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Ljava/lang/String;)V

    .line 1742
    :cond_10
    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->screenTurnedOff()V

    .line 670
    return-void
.end method

.method sendBroadcastDoubleClick(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .line 2946
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast double click intent keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2948
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEYCODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2949
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2950
    return-void
.end method

.method sendFoldStateForSALogging(II)V
    .registers 7
    .param p1, "currentFoldState"    # I
    .param p2, "lastFoldState"    # I

    .line 6559
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_32

    const/4 v2, 0x1

    if-eq p1, v2, :cond_24

    if-eq p1, v1, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_d

    goto :goto_40

    .line 6566
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6567
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShouldBeLogging:Z

    .line 6568
    if-nez p2, :cond_40

    .line 6569
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 6570
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLastResumedActivityName()Ljava/lang/String;

    move-result-object v0

    .line 6571
    .local v0, "lastResumedActivityName":Ljava/lang/String;
    const-string v1, "W004"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 6572
    .end local v0    # "lastResumedActivityName":Ljava/lang/String;
    goto :goto_40

    .line 6576
    :cond_24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6577
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_40

    .line 6561
    .end local v0    # "msg":Landroid/os/Message;
    :cond_32
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6562
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShouldBeLogging:Z

    .line 6563
    const/4 v0, 0x0

    const-string v1, "W001"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 6564
    nop

    .line 6580
    :cond_40
    :goto_40
    return-void
.end method

.method public sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 6602
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6603
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6605
    if-eqz p2, :cond_10

    .line 6606
    invoke-static {p2, p3}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 6608
    :cond_10
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlreadySendedSALogging:Z

    .line 6609
    return-void
.end method

.method sendScreenOffEvent()V
    .registers 2

    .line 6738
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    .line 6739
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 6741
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_15

    .line 6742
    invoke-virtual {v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->screenTurnedOff()V

    .line 6744
    :cond_15
    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "deadzoneHole"    # Landroid/os/Bundle;

    .line 3872
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->setDeadzoneHole(Landroid/os/Bundle;)V

    .line 3873
    return-void
.end method

.method public setDefaultDisplaySizeDensity(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "initWidth"    # I
    .param p4, "initHeight"    # I

    .line 3865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/TspStateManager;->setDefaultDisplaySizeDensity(IIII)V

    .line 3866
    return-void
.end method

.method public setOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    if-eqz v0, :cond_7

    .line 1670
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OneHandOpPolicyManager;->setOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1672
    :cond_7
    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 6750
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_d

    .line 6751
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 6753
    :cond_d
    return-void
.end method

.method public setRotation(I)V
    .registers 7
    .param p1, "rotation"    # I

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotation: rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3629
    :try_start_1a
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2b

    .line 3630
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "PWM_ROTATION"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 3633
    :cond_2b
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_5b

    if-eqz v1, :cond_48

    .line 3635
    :try_start_2f
    const-string v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "sRotationBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    sget-object v1, Lcom/android/server/policy/PhoneWindowManagerExt;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d
    .catchall {:try_start_2f .. :try_end_3c} :catchall_5b

    .line 3640
    goto :goto_48

    .line 3637
    :catch_3d
    move-exception v1

    .line 3638
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v2, "PhoneWindowManagerExt"

    const-string v3, "HINT_PWM_ROTATION.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3642
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_48
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_5b

    .line 3644
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v0, :cond_5a

    .line 3645
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager;->setOrientation(Z)V

    .line 3647
    :cond_5a
    return-void

    .line 3642
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public setSafeModeReason(IIIIILjava/lang/String;)V
    .registers 9
    .param p1, "menuState"    # I
    .param p2, "sState"    # I
    .param p3, "dpadState"    # I
    .param p4, "trackballState"    # I
    .param p5, "volumeDownState"    # I
    .param p6, "safeModeProperty"    # Ljava/lang/String;

    .line 5405
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz v0, :cond_42

    .line 5406
    if-lez p1, :cond_d

    .line 5407
    const-string v0, "KEYCODE_MENU"

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    goto :goto_42

    .line 5408
    :cond_d
    if-lez p2, :cond_14

    .line 5409
    const-string v0, "KEYCODE_S"

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    goto :goto_42

    .line 5410
    :cond_14
    if-lez p3, :cond_1b

    .line 5411
    const-string v0, "KEYCODE_DPAD_CENTER"

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    goto :goto_42

    .line 5412
    :cond_1b
    if-lez p4, :cond_22

    .line 5413
    const-string v0, "TRACKBALL_BTN_MOUSE"

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    goto :goto_42

    .line 5414
    :cond_22
    if-lez p5, :cond_29

    .line 5415
    const-string v0, "KEYCODE_VOLUME_DOWN"

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    goto :goto_42

    .line 5416
    :cond_29
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 5417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROPERTY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSafeModeReason:Ljava/lang/String;

    .line 5420
    :cond_42
    :goto_42
    return-void
.end method

.method public setTspStateManagerPackagePolicyDataMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3879
    .local p1, "policyDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->setPackagePolicyDataMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 3880
    return-void
.end method

.method showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .line 2481
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2492
    return-void
.end method

.method shutdown(Z)V
    .registers 4
    .param p1, "confirm"    # Z

    .line 3899
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3900
    return-void
.end method

.method skipPowerPress(I)Z
    .registers 5
    .param p1, "count"    # I

    .line 2731
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_e

    goto :goto_3b

    .line 2750
    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    const/16 v2, 0x67

    if-ne v0, v2, :cond_3b

    .line 2752
    return v1

    .line 2743
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_3b

    .line 2745
    return v1

    .line 2733
    :cond_22
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v2, 0x65

    if-eq v0, v2, :cond_3a

    :cond_2e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v2, 0x68

    if-ne v0, v2, :cond_3b

    .line 2737
    :cond_3a
    return v1

    .line 2758
    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    return v0
.end method

.method public startBixbyServiceDoubleTap(Landroid/view/KeyEvent;Z)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 4417
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;ZZZZ)V

    .line 4418
    return-void
.end method

.method public startBixbyServiceLongPress(Landroid/view/KeyEvent;Z)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 4411
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->startBixbyService(Landroid/view/KeyEvent;ZZZZ)V

    .line 4412
    return-void
.end method

.method startDirectAccess()V
    .registers 3

    .line 3565
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "start Direct Access"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    if-nez v0, :cond_15

    .line 3568
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 3570
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    .line 3571
    return-void
.end method

.method public startDockOrHome()V
    .registers 3

    .line 3576
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "startDockOrHome"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->boostHome(Z)V

    .line 3581
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHomeBroadcast()V

    .line 3584
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hideCurrentInputMethodIfPossible()V

    .line 3586
    return-void
.end method

.method public startLockscreenFingerprintAuth()V
    .registers 2

    .line 6758
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_d

    .line 6759
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startFingerprintAuthentication()V

    .line 6761
    :cond_d
    return-void
.end method

.method public startedEarlyWakingUp(I)V
    .registers 3
    .param p1, "why"    # I

    .line 6766
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_d

    .line 6767
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startedEarlyWakingUp(I)V

    .line 6769
    :cond_d
    return-void
.end method

.method public startedWakingUp(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 3302
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 3304
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    const-string v1, "W003"

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    const/16 v4, 0x6f

    if-ne v0, v4, :cond_22

    .line 3306
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setWakeUpReasonFingerprint()V

    .line 3308
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v0, :cond_22

    .line 3309
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->needToSendSALoggingForFoldable(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3310
    const-string v0, "Fingerprint Sensor"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    .line 3316
    :cond_22
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    .line 3318
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->needToSendSALoggingForFoldable(Z)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3319
    const-string v0, "Lift To Wake"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendSALoggingForFoldable(ILjava/lang/String;Ljava/lang/String;)V

    .line 3323
    :cond_34
    return-void
.end method

.method systemBooted()V
    .registers 3

    .line 674
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v0, :cond_10

    .line 675
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$MrEX7l0cJbFAH7pg7blNbkzNeZs;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$MrEX7l0cJbFAH7pg7blNbkzNeZs;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    :cond_10
    return-void
.end method

.method toggleOneHandOpByHomeKey()Z
    .registers 4

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    .line 1683
    .local v0, "isOneHandOpTriggeredByHomeKey":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleOneHandOpByHomeKey() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    if-eqz v0, :cond_27

    .line 1685
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    const-string/jumbo v2, "toggleOneHandOpByHomeKey"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Ljava/lang/String;)V

    .line 1686
    const/4 v1, 0x1

    return v1

    .line 1688
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method updateDeXScreenOffSleepToken(Z)V
    .registers 5
    .param p1, "acquire"    # Z

    .line 6073
    if-eqz p1, :cond_14

    .line 6074
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDeXScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_1e

    .line 6075
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x2

    const-string v2, "ScreenOff"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDeXScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_1e

    .line 6079
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDeXScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_1e

    .line 6080
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 6081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDeXScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 6084
    :cond_1e
    :goto_1e
    return-void
.end method

.method updateDirectAccessSettings()V
    .registers 5

    .line 4601
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4602
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTalkbackEnabled()Z

    move-result v1

    .line 4603
    .local v1, "enable":I
    const-string v2, "direct_access"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4605
    const-string v2, "direct_s_talkback"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4607
    return-void
.end method

.method updateDoublePressPowerBehavior()V
    .registers 5

    .line 2311
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizeManager;->getAction(II)I

    move-result v0

    .line 2313
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_50

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_50

    .line 2317
    :cond_11
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 2319
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_56

    .line 2320
    :cond_1a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_POWER_TV_MODE:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeEnabled:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsTvModeDoubleTapEnabled:Z

    if-eqz v2, :cond_2d

    .line 2322
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x69

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_56

    .line 2323
    :cond_2d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    if-eqz v2, :cond_3c

    .line 2324
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x68

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_56

    .line 2325
    :cond_3c
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    if-ne v2, v1, :cond_47

    .line 2327
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x65

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_56

    .line 2329
    :cond_47
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_TAP_SIDE_KEY:Z

    if-eqz v1, :cond_56

    .line 2330
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_56

    .line 2316
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x6a

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2334
    :cond_56
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateDoublePressPowerBehavior  mPolicy.mDoublePressOnPowerBehavior : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneWindowManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    return-void
.end method

.method updateMultiTapHandlerForOneHandOp(Z)V
    .registers 12
    .param p1, "forced"    # Z

    .line 1697
    new-instance v0, Landroid/view/WindowManager$KeyCustomizeInfo;

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(III)V

    .line 1701
    .local v0, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    const/16 v4, 0x3e8

    .line 1702
    .local v4, "priority":I
    const/4 v5, 0x3

    .line 1703
    .local v5, "keyCode":I
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    if-eqz v6, :cond_43

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    goto :goto_43

    .line 1719
    :cond_14
    const/4 v7, 0x2

    if-eq v6, v7, :cond_1b

    if-ne v6, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    :goto_1a
    goto :goto_70

    .line 1721
    :cond_1b
    :goto_1b
    const/16 v6, 0x8

    .line 1722
    .local v6, "pressType":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1723
    const/16 v8, 0x8

    invoke-virtual {v7, v8, v2}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v7

    .line 1724
    .local v7, "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isOneHandOpTriggeredByHomeKey()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 1725
    if-eqz v7, :cond_2f

    if-eqz p1, :cond_70

    .line 1726
    :cond_2f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v1, v8, v0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    goto :goto_70

    .line 1729
    :cond_35
    if-eqz v7, :cond_3b

    iget v9, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-eq v9, v1, :cond_3d

    :cond_3b
    if-eqz p1, :cond_70

    .line 1730
    :cond_3d
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v9, v1, v8, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->removeKeyCustomizeEvent(IIIZ)V

    goto :goto_70

    .line 1705
    .end local v6    # "pressType":I
    .end local v7    # "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_43
    :goto_43
    const/16 v6, 0x10

    .line 1706
    .restart local v6    # "pressType":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    .line 1707
    const/16 v8, 0x10

    invoke-virtual {v7, v8, v2}, Lcom/android/server/policy/KeyCustomizeManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v7

    .line 1708
    .restart local v7    # "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isOneHandOpTriggeredByHomeKey()Z

    move-result v9

    if-nez v9, :cond_66

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDirectAccessEnabled:Z

    if-eqz v9, :cond_58

    goto :goto_66

    .line 1714
    :cond_58
    if-eqz v7, :cond_5e

    iget v9, v7, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    if-eq v9, v1, :cond_60

    :cond_5e
    if-eqz p1, :cond_1a

    .line 1715
    :cond_60
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v9, v1, v8, v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->removeKeyCustomizeEvent(IIIZ)V

    goto :goto_1a

    .line 1710
    :cond_66
    :goto_66
    if-eqz v7, :cond_6a

    if-eqz p1, :cond_1a

    .line 1711
    :cond_6a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v1, v8, v0, p1}, Lcom/android/server/policy/KeyCustomizeManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;Z)V

    goto :goto_1a

    .line 1735
    .end local v6    # "pressType":I
    .end local v7    # "curInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_70
    :goto_70
    return-void
.end method

.method updateSideKeyDoubleTapSettings()V
    .registers 3

    .line 4139
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    if-nez v0, :cond_c

    .line 4141
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    goto :goto_f

    .line 4143
    :cond_c
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    .line 4146
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateSettings  mIsSideKeyDoubleTapEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSideKeyDoubleTapEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSideKeyDoubleTapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSideKeyDoubleTapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDoubleTapLaunchBehavior : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoubleTapLaunchBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 4152
    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 3754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 3755
    return-void
.end method

.method public updateTspImePolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .registers 6
    .param p1, "imeWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTargetWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "imeWindowVisible"    # Z

    .line 3854
    if-eqz p3, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 3855
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p2, v0, :cond_12

    .line 3856
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->updateImePolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_29

    .line 3857
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3858
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 3859
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3858
    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3861
    :cond_29
    :goto_29
    return-void
.end method

.method public updateTspWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3846
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_f

    .line 3847
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateManager:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3849
    :cond_f
    return-void
.end method
