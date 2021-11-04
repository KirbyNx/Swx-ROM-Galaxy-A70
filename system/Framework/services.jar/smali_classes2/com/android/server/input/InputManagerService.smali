.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputMonitorHost;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$KeyCountRunnable;
    }
.end annotation


# static fields
.field static final ACTION_KIDSHOME_DEFAULT_HOME_CHANGE:Ljava/lang/String; = "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

.field static final ACTION_ML_STATE:Ljava/lang/String; = "com.samsung.android.mirrorlink.ML_STATE"

.field static final ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String; = "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

.field static final ACTION_SARDEVICE_CP:Ljava/lang/String; = "com.sec.intent.action.SARDEVICE_CP"

.field static final ACTION_SET_INWATER_TOUCH:Ljava/lang/String; = "com.samsung.android.intent.action.SET_INWATER_TOUCH"

.field private static final BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_additional_1_option"

.field private static final BACK_BUTTON_DEFAULT:I = 0x7

.field public static final BLOCK_DEVICE_INTERNAL_TKEY:I = 0x2

.field public static final BLOCK_DEVICE_INTERNAL_TSP:I = 0x1

.field public static final BLOCK_DEVICE_NONE:I = 0x0

.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field private static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field private static final DISPLAY_TYPE_DOP:I = 0x7d1

.field private static final DISPLAY_TYPE_DUAL:I = 0x66

.field private static final DISPLAY_TYPE_NONE:I = 0x0

.field private static final DISPLAY_TYPE_STANDALONE:I = 0x65

.field private static final ENHANCE_POINTER_PRECISION:Ljava/lang/String; = "enhance_pointer_precision"

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final FACTORY_BINARY:Z

.field private static final FLEXIBLE_DISPLAY:Z = false

.field private static final FOLDING_ANGLE_FULLY_CLOSED:I = 0x0

.field private static final FOLDING_ANGLE_FULLY_OPEN:I = 0x2

.field private static final FOLDING_ANGLE_HALF_CLOSED:I = 0x1

.field private static final FORWARD_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_additional_2_option"

.field private static final FORWARD_BUTTON_DEFAULT:I = 0x4

.field private static final GAME_TOOLS_DEVICE_ACTION:Ljava/lang/String; = "DEVICE_ACTION"

.field private static final GAME_TOOLS_DEVICE_PID:Ljava/lang/String; = "DEVICE_PID"

.field private static final GAME_TOOLS_DEVICE_VID:Ljava/lang/String; = "DEVICE_VID"

.field private static final GAME_TOOLS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field private static final INTENT_ACTION_GAMEPAD_INTENTSERVICE:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

.field private static final IS_TABLET_DEVICE:Z

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final LOCAL_TABLET:I = 0x1

.field private static final META_BLOCK_DEVICE_EVENT:I = 0x1

.field private static final META_STARTED_SHUTDOWN:I = 0x8

.field private static final MOUSE_SCROLLING_SPEED:Ljava/lang/String; = "mouse_scrolling_speed"

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_LID_STATE_CHANGED:I = 0xa

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_FN_LOCK_UNLOCK:I = 0xe

.field private static final MSG_INPUT_METHOD_SUBTYPE_CHANGED:I = 0x7

.field private static final MSG_MULTI_FINGER_GESTURE:I = 0xc

.field private static final MSG_POINTERICON_CHANGED:I = 0xb

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_TOUCHPAD_ON_OFF:I = 0x8

.field private static final MSG_UPDATE_DEFAULT_KEYBOARD_LAYOUTS:I = 0x9

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final MSG_VR_PROXIMITY_EVENT_CHANGED:I = 0x10

.field private static final MSG_WAKE_UP:I = 0xd

.field static final PERMISSION_KIDSHOME_DEFAULT_HOME_CHANGE:Ljava/lang/String; = "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

.field static final PERMISSION_LID_STATE:Ljava/lang/String; = "com.samsung.android.permission.LID_STATE"

.field static final PERMISSION_SEM_SET_DEVICE_BLOCK:Ljava/lang/String; = "com.samsung.android.Manifest.permission.SEM_SET_DEVICE_BLOCK"

.field static final PERMISSION_TMS_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

.field private static final PORT_ASSOCIATIONS_PATH:Ljava/lang/String; = "etc/input-port-associations.xml"

.field private static final REMOTE_DEVICE:I = 0x2

.field private static final SAR_DEVICE_CAMERA_SLIDE:I = 0x1000000

.field private static final SAR_DEVICE_GRIP:I = 0x1

.field private static final SAR_DEVICE_TSP:I = 0x20

.field private static final SECONDARY_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_secondary_button_option"

.field private static final SECONDARY_BUTTON_DEFAULT:I = 0x1

.field private static SEP_FULL:Z = false

.field private static final SETTINGS_FOUR_FINGER_TAP_BEHAVIOR:Ljava/lang/String; = "touchpad_gestures_four_finger_tap"

.field private static final SETTINGS_KEY_FLOW_POINTER_TO_PHONE_SCREEN:Ljava/lang/String; = "flow_pointer_is_on_dex"

.field private static final SETTINGS_KEY_POINTER_FLOW_DIRECTION:Ljava/lang/String; = "flow_pointer_from_where_dex"

.field private static final SETTINGS_KEY_SPEN_MODE:Ljava/lang/String; = "spen_mode"

.field private static final SETTINGS_THREE_FINGER_TAP_BEHAVIOR:Ljava/lang/String; = "touchpad_gestures_three_finger_tap"

.field private static final SETTING_SOURCE_CONNECT_DEXONPC:I = 0x3

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_CAMERA_SLIDE:I = 0x1d

.field public static final SW_CAMERA_SLIDE_BIT:I = 0x20000000

.field public static final SW_COVER_ATTACH:I = 0x1b

.field public static final SW_COVER_ATTACH_BIT:I = 0x8000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYBOARD_COVER_BACKFOLD:I = 0x1f

.field public static final SW_KEYBOARD_COVER_BACKFOLD_BIT:I = -0x80000000

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_MUTE_DEVICE:I = 0xe

.field public static final SW_MUTE_DEVICE_BIT:I = 0x4000

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field public static final SW_W1:I = 0x1a

.field public static final SW_W1_BIT:I = 0x4000000

.field private static final SYSFS_LCD_AOT:Ljava/lang/String; = "/sys/class/lcd/panel/aot"

.field private static final SYSFS_SCREEN_OFF_MEMO_ENABLE:Ljava/lang/String; = "/sys/class/sec/sec_epen/screen_off_memo_enable"

.field private static final SYSFS_TOUCHKEY_EARJACK:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/touchkey_earjack"

.field private static final SYSFS_TOUCHKEY_GRIPSENSING_ENABLE:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/grip_sensing_enable"

.field private static final SYSFS_TOUCHKEY_SAR_ENABLE:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/sar_enable"

.field private static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final SYSFS_TSP_CMD_RESULT:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field private static final SYSFS_TSP_PRESSURE_ENABLE:Ljava/lang/String; = "/sys/class/sec/tsp/pressure_enable"

.field private static final SYSFS_TSP_SUPPORT_FEATURE:Ljava/lang/String; = "/sys/class/sec/tsp/support_feature"

.field static final TAG:Ljava/lang/String; = "InputManager"

.field private static final TERTIARY_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_middle_button_option"

.field private static final TERTIARY_BUTTON_DEFAULT:I = 0x3

.field private static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field private static final TSP_FEATURES_SUPPORT_AOT:I = 0x1

.field private static final mHighHysteresis:[F

.field private static final mLowHysteresis:[F

.field private static final mMultiFingerGestureEnable:Z


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private final SETTING_SOURCE_CONNECT_DEX_ON_PC:Ljava/lang/String;

.field private mAddingPogoKeyboardIntentPending:Z

.field private final mAssociationsLock:Ljava/lang/Object;

.field private mAvailableInputMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackKeyDownAdjusted:Z

.field private mBlockDeviceMode:I

.field mBlockTkeyCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlockTspCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

.field private mCurLocale:Ljava/util/Locale;

.field private mCurrentFourTapBehavior:I

.field private mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

.field private mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private mCurrentThreeTapBehavior:I

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private mDefaultPointerIcon:Landroid/view/PointerIcon;

.field private mDefaultPointerIconChanged:Z

.field private mDensity:I

.field private mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

.field final mDeviceBlockReceiver:Landroid/content/BroadcastReceiver;

.field private mDexImeWindowVisibleInDefaultDisplay:Z

.field private mDexmode:Z

.field private mDisplayContext:Landroid/content/Context;

.field private mDisplayIdForPointerIcon:I

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private mDssController:Lcom/android/server/DssController;

.field private mFnLockUnlockToast:Landroid/widget/Toast;

.field private mFoldingAngle:F

.field private final mFoldingAngleListener:Landroid/hardware/SensorEventListener;

.field private mFoldingAngleSensor:Landroid/hardware/Sensor;

.field private mFoldingState:I

.field private mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

.field private mForcedDefaultPointerIconChanged:Z

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field final mInputWirelessKeyboardShareLock:Ljava/lang/Object;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsKidsMode:Z

.field private mIsShowHoverPointer:Z

.field private mIsValidIntentForSAR:Z

.field private mIsValidIntentForWifi:Z

.field private mKeyboardLayoutNotificationShown:Z

.field private mKeyboardLayoutSize:I

.field private final mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field final mKidsModeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastLidEventTime:J

.field private mLatestKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private final mLidStateChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLidStateLock:Ljava/lang/Object;

.field final mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

.field private mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private mMissingKeyboardLayoutNotificationPending:Z

.field private mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

.field private final mMultiFingerGestureListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiFingerGestureLock:Ljava/lang/Object;

.field private mNextVibratorTokenValue:I

.field private final mNotiSwitchLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPogoKeyboardConnected:Z

.field private mPointerIcon:Landroid/view/PointerIcon;

.field private final mPointerIconChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointerIconLock:Ljava/lang/Object;

.field private mPointerIconType:I

.field private final mPtr:J

.field private final mRuntimeAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSARState:I

.field private mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mStaticAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempGamePads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLidStateChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMultiFingerGestureListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPointerIconChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToolTypeForDefaultPointerIcon:I

.field private mToolTypeForForcedDefaultPointerIcon:I

.field private mTouchpadOnOffToast:Landroid/widget/Toast;

.field private mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field private previousAopStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 346
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->FACTORY_BINARY:Z

    .line 386
    nop

    .line 387
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    .line 397
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    .line 398
    new-array v0, v0, [F

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    .line 762
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 778
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1ae14

    if-lt v0, v1, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    sput-boolean v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    return-void

    :array_3e
    .array-data 4
        0x41f00000    # 30.0f
        0x43200000    # 160.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x43160000    # 150.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 823
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 312
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 321
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 326
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/InputDevice;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 327
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 340
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 341
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    .line 350
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 351
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 356
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 363
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 364
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 372
    new-instance v2, Lcom/android/server/input/InputKeyCounter;

    invoke-direct {v2}, Lcom/android/server/input/InputKeyCounter;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 384
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 401
    const/high16 v2, 0x43340000    # 180.0f

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngle:F

    .line 402
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 509
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 518
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 671
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z

    .line 673
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    .line 674
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    .line 682
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 683
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 684
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 688
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 689
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 705
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    .line 712
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 713
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 714
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 715
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 716
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 717
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 718
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mDensity:I

    .line 722
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 734
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    .line 735
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 739
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 743
    const-string v2, "cover_test_mode"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->COVER_TEST_MODE:Ljava/lang/String;

    .line 749
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 757
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLatestKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 758
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutSize:I

    .line 759
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDexmode:Z

    .line 760
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mNotiSwitchLock:Ljava/lang/Object;

    .line 766
    const-string v2, "dexonpc_connection_state"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->SETTING_SOURCE_CONNECT_DEX_ON_PC:Ljava/lang/String;

    .line 819
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mBackKeyDownAdjusted:Z

    .line 820
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 1599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 5312
    new-instance v0, Lcom/android/server/input/InputManagerService$35;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$35;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDeviceBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 5377
    new-instance v0, Lcom/android/server/input/InputManagerService$36;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$36;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5446
    new-instance v0, Lcom/android/server/input/InputManagerService$37;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$37;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleListener:Landroid/hardware/SensorEventListener;

    .line 5941
    new-instance v0, Lcom/android/server/input/InputManagerService$40;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$40;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5990
    new-instance v0, Lcom/android/server/input/InputManagerService$41;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$41;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 6015
    new-instance v0, Lcom/android/server/input/InputManagerService$42;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$42;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    .line 824
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 825
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 828
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    .line 832
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 833
    nop

    .line 834
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 839
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    move-object v2, v1

    goto :goto_1c4

    .line 842
    :cond_1bf
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1c4
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 844
    const-class v2, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 848
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    .line 853
    new-instance v2, Lcom/android/server/input/ControlWakeKey;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/input/ControlWakeKey;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    .line 858
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 859
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 866
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v1, :cond_20d

    .line 867
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 868
    .local v1, "MLintentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const-string v6, "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 875
    .end local v1    # "MLintentFilter":Landroid/content/IntentFilter;
    :cond_20d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v1, "deviceBlockIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDeviceBlockReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const-string v6, "com.samsung.android.Manifest.permission.SEM_SET_DEVICE_BLOCK"

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 882
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 883
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v4, ""

    const-string v5, "TOUCHKEY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23b

    .line 885
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    :cond_23b
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 893
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 894
    .local v4, "kidsModeIntentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const-string v8, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    invoke-virtual {v5, v6, v4, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 900
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    .line 904
    sget-boolean v5, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_27a

    .line 905
    new-instance v5, Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p0}, Lcom/android/server/input/MouseNKeyHidDevice;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    .line 908
    :cond_27a
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$1200(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "x0"    # Ljava/util/Locale;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 196
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "x2"    # Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverLidStateChanged(JZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/input/InputManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->deliverMultiFingerGesture(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/input/InputManagerService;ILandroid/view/PointerIcon;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/PointerIcon;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->deliverPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showTouchpadOnOffToast(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showFnLockUnlockToast(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/input/InputManagerService;JILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->sendVRProximityEventChanged(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "x3"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/input/InputManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic access$2900(JLandroid/view/InputEvent;IIIII)I
    .registers 9
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputEvent;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 196
    invoke-static/range {p0 .. p7}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void
.end method

.method static synthetic access$3000(JLandroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativePilferPointers(JLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3100(JLandroid/view/InputChannel;)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputChannel;

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onLidStateChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onMultiFingerGestureListenerDied(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onPointerIconChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    return-void
.end method

.method static synthetic access$4000(JI)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/input/InputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    return v0
.end method

.method static synthetic access$4372(Lcom/android/server/input/InputManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    return v0
.end method

.method static synthetic access$4376(Lcom/android/server/input/InputManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mSARState:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/input/InputManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/android/server/input/InputManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z

    return p1
.end method

.method static synthetic access$4600()[F
    .registers 1

    .line 196
    sget-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/input/InputManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    return v0
.end method

.method static synthetic access$4708(Lcom/android/server/input/InputManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    return v0
.end method

.method static synthetic access$4710(Lcom/android/server/input/InputManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    return v0
.end method

.method static synthetic access$4800()[F
    .registers 1

    .line 196
    sget-object v0, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    return-object v0
.end method

.method static synthetic access$4900(JI)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetFoldingState(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/input/InputManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 196
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputDevice;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$5500()Z
    .registers 1

    .line 196
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    return v0
.end method

.method static synthetic access$5600(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/input/InputManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/input/InputManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    return p1
.end method

.method static synthetic access$5800(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetKidsMode(JZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerThreeFingerTapBehavior()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerFourFingerTapBehavior()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 196
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 3213
    monitor-enter p1

    .line 3214
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 3215
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 3216
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3218
    :cond_11
    monitor-exit p1

    .line 3219
    return-void

    .line 3218
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 3359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 3360
    return v2

    .line 3363
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 3364
    return v2

    .line 3366
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3370
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    const/4 v1, 0x0

    return v1
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .line 3740
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2473
    array-length v0, p0

    .line 2474
    .local v0, "numDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 2475
    aget-object v2, p0, v1

    .line 2476
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2477
    const/4 v3, 0x1

    return v3

    .line 2474
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2480
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 15
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .line 1617
    const/4 v0, 0x0

    .line 1618
    .local v0, "numFullKeyboardsAdded":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1619
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1621
    const/4 v1, 0x0

    .line 1625
    .local v1, "pogoKeyboardConnected":Z
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1630
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1631
    :try_start_14
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v3, :cond_1a

    .line 1632
    monitor-exit v2

    return-void

    .line 1634
    :cond_1a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1636
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1637
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v4, :cond_36

    .line 1638
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 1639
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 1638
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1642
    .end local v5    # "i":I
    :cond_36
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v5, v5

    .line 1643
    .local v5, "numDevices":I
    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [I

    .line 1644
    .local v6, "deviceIdAndGeneration":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3e
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v7, v5, :cond_b7

    .line 1645
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v10, v10, v7

    .line 1646
    .local v10, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v11, v7, 0x2

    invoke-virtual {v10}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v6, v11

    .line 1647
    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v9

    invoke-virtual {v10}, Landroid/view/InputDevice;->getGeneration()I

    move-result v9

    aput v9, v6, v11

    .line 1649
    invoke-virtual {v10}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-nez v9, :cond_87

    invoke-virtual {v10}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 1650
    nop

    .line 1651
    invoke-virtual {v10}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 1650
    invoke-static {p1, v9}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_82

    .line 1652
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_70
    .catchall {:try_start_14 .. :try_end_70} :catchall_184

    add-int/lit8 v11, v0, 0x1

    .end local v0    # "numFullKeyboardsAdded":I
    .local v11, "numFullKeyboardsAdded":I
    :try_start_72
    invoke-virtual {v9, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1654
    invoke-virtual {v10}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/server/input/InputManagerService;->sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7e

    move v0, v11

    goto :goto_87

    .line 1679
    .end local v4    # "numListeners":I
    .end local v5    # "numDevices":I
    .end local v6    # "deviceIdAndGeneration":[I
    .end local v7    # "i":I
    .end local v10    # "inputDevice":Landroid/view/InputDevice;
    :catchall_7e
    move-exception v3

    move v0, v11

    goto/16 :goto_185

    .line 1657
    .end local v11    # "numFullKeyboardsAdded":I
    .restart local v0    # "numFullKeyboardsAdded":I
    .restart local v4    # "numListeners":I
    .restart local v5    # "numDevices":I
    .restart local v6    # "deviceIdAndGeneration":[I
    .restart local v7    # "i":I
    .restart local v10    # "inputDevice":Landroid/view/InputDevice;
    :cond_82
    :try_start_82
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    :cond_87
    :goto_87
    invoke-virtual {v10}, Landroid/view/InputDevice;->getVendorId()I

    move-result v8

    .line 1663
    invoke-virtual {v10}, Landroid/view/InputDevice;->getProductId()I

    move-result v9

    invoke-virtual {v10}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1662
    invoke-static {v8, v9, v11}, Lcom/android/server/input/InputUtils;->isPogoKeyboard(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 1664
    const/4 v1, 0x1

    .line 1669
    :cond_9a
    nop

    .line 1670
    invoke-virtual {v10}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    const/16 v9, 0x401

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_b4

    .line 1672
    nop

    .line 1673
    invoke-virtual {v10}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    .line 1672
    invoke-static {p1, v8}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b4

    .line 1674
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    .end local v10    # "inputDevice":Landroid/view/InputDevice;
    :cond_b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 1679
    .end local v5    # "numDevices":I
    .end local v7    # "i":I
    :cond_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_82 .. :try_end_b8} :catchall_184

    .line 1682
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b9
    if-ge v2, v4, :cond_c9

    .line 1683
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 1682
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 1686
    .end local v2    # "i":I
    :cond_c9
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v2, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1694
    .local v5, "numFullKeyboards":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_da
    if-ge v7, v5, :cond_106

    .line 1695
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InputDevice;

    .line 1697
    .restart local v10    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v10}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayoutIfNotSetAsCurrentSubtype(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 1699
    nop

    .line 1700
    invoke-virtual {v10}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v11

    .line 1701
    .local v11, "layout":Ljava/lang/String;
    if-nez v11, :cond_fe

    .line 1708
    invoke-virtual {v10}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/input/InputManagerService;->getAndSetDefaultKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v11

    .line 1711
    :cond_fe
    if-nez v11, :cond_103

    .line 1712
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    .end local v10    # "inputDevice":Landroid/view/InputDevice;
    .end local v11    # "layout":Ljava/lang/String;
    :cond_103
    add-int/lit8 v7, v7, 0x1

    goto :goto_da

    .line 1719
    .end local v7    # "i":I
    :cond_106
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v7, :cond_12c

    .line 1720
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_124

    .line 1721
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_11a

    .line 1725
    invoke-direct {p0, v8}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_145

    .line 1727
    :cond_11a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_145

    .line 1729
    :cond_124
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v3, :cond_145

    .line 1730
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_145

    .line 1736
    :cond_12c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_145

    .line 1737
    iput-boolean v9, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    .line 1738
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_13d

    .line 1739
    iput-object v8, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto :goto_145

    .line 1741
    :cond_13d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 1747
    :cond_145
    :goto_145
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1750
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    if-eq v1, v3, :cond_15f

    .line 1751
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 1752
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v3, :cond_15d

    .line 1753
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->wakeUpWhenPogoConnected(Z)V

    .line 1754
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    goto :goto_15f

    .line 1756
    :cond_15d
    iput-boolean v9, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 1763
    :cond_15f
    :goto_15f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1765
    .local v3, "numGamePads":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_166
    if-ge v7, v3, :cond_17e

    .line 1766
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice;

    .line 1767
    .local v8, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v8}, Landroid/view/InputDevice;->getVendorId()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/InputDevice;->getProductId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/input/InputManagerService;->startGameToolsService(II)V

    .line 1765
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    add-int/lit8 v7, v7, 0x1

    goto :goto_166

    .line 1769
    .end local v7    # "i":I
    :cond_17e
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1772
    .end local v3    # "numGamePads":I
    return-void

    .line 1679
    .end local v2    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "numFullKeyboards":I
    .end local v6    # "deviceIdAndGeneration":[I
    :catchall_184
    move-exception v3

    :goto_185
    :try_start_185
    monitor-exit v2
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw v3
.end method

.method private deliverLidStateChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 1938
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1940
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1941
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1942
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 1943
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 1944
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    .line 1943
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1942
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1946
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 1947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 1948
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->notifyLidStateChanged(JZ)V

    .line 1947
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1951
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 1946
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private deliverMultiFingerGesture(II)V
    .registers 8
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 2112
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2114
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2115
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2116
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 2117
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 2118
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    .line 2117
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2120
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 2121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 2122
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->notifyMultiFingerGesture(II)V

    .line 2121
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2125
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 2120
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private deliverPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 2051
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2054
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2055
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 2056
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 2057
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    .line 2056
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2055
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2059
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 2060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 2061
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->notifyPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 2060
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2064
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 2059
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 2004
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2008
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 2009
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 2010
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 2009
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2012
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 2013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 2014
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 2013
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2017
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 2012
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3735
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private dumpAssociations(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3338
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3339
    const-string v0, "Static Associations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;

    invoke-direct {v1, p1}, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3346
    :cond_17
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3347
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 3348
    const-string v1, "Runtime Associations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/-$$Lambda$InputManagerService$e8CLEFczq_4kLYCG30uaJDgK3rA;

    invoke-direct {v2, p1}, Lcom/android/server/input/-$$Lambda$InputManagerService$e8CLEFczq_4kLYCG30uaJDgK3rA;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3354
    :cond_31
    monitor-exit v0

    .line 3355
    return-void

    .line 3354
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw v1
.end method

.method private static flatten(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3792
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3793
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/-$$Lambda$InputManagerService$P986LfJHWb-Wytu9J9I0HQIpodU;

    invoke-direct {v1, v0}, Lcom/android/server/input/-$$Lambda$InputManagerService$P986LfJHWb-Wytu9J9I0HQIpodU;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3797
    return-object v0
.end method

.method private getAOTOnOffFromSettings(I)I
    .registers 7
    .param p1, "defaultValue"    # I

    .line 5072
    move v0, p1

    .line 5074
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_to_wake_up"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 5078
    goto :goto_2d

    .line 5076
    :catch_11
    move-exception v1

    .line 5077
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getAOTOnOffFromSettings \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5079
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return v0
.end method

.method private getAndSetDefaultKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 5747
    const/4 v0, 0x0

    .line 5748
    .local v0, "layout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    if-eqz v1, :cond_32

    if-eqz p1, :cond_32

    .line 5749
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5750
    .local v1, "subtypeId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v2

    .line 5751
    .local v2, "componentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-static {v1, v3}, Lcom/android/server/input/KeyboardLayoutUtils;->isSubtypeInEnabledList(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 5752
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/android/server/input/KeyboardLayoutUtils;->getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 5755
    :cond_2b
    if-eqz v0, :cond_32

    .line 5756
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    .line 5760
    .end local v1    # "subtypeId":Ljava/lang/String;
    .end local v2    # "componentName":Ljava/lang/String;
    :cond_32
    return-object v0
.end method

.method private getContextForDisplay(I)Landroid/content/Context;
    .registers 5
    .param p1, "displayId"    # I

    .line 3884
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 3885
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object v0

    .line 3888
    :cond_11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_22

    .line 3889
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 3890
    return-object v0

    .line 3894
    :cond_22
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3895
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 3896
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 3897
    return-object v2
.end method

.method private getCoverTestModeSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .line 3407
    move v0, p1

    .line 3409
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cover_test_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move v0, v1

    .line 3413
    goto :goto_11

    .line 3412
    :catch_10
    move-exception v1

    .line 3414
    :goto_11
    return v0
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 13
    .param p1, "d"    # Landroid/view/InputDevice;

    .line 1775
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1778
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1779
    return-object v2

    .line 1781
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1803
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1804
    return-object v2

    .line 1808
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1810
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1811
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_72

    .line 1812
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 1813
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 1814
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 1815
    .local v6, "numLocales":I
    const/4 v7, 0x0

    .local v7, "localeIndex":I
    :goto_45
    if-ge v7, v6, :cond_6f

    .line 1816
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 1817
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 1818
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 1819
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1815
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1811
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1824
    .end local v3    # "i":I
    :cond_72
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_73
    if-ge v3, v2, :cond_a3

    .line 1825
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 1826
    .restart local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 1827
    .restart local v5    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 1828
    .restart local v6    # "numLocales":I
    const/4 v7, 0x0

    .restart local v7    # "localeIndex":I
    :goto_84
    if-ge v7, v6, :cond_a0

    .line 1829
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 1830
    .restart local v8    # "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 1831
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1828
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_9d
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 1824
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 1837
    .end local v3    # "i":I
    :cond_a3
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 3995
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3997
    return-object v1

    .line 3999
    :cond_8
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .line 3865
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 10

    .line 3765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3768
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    .line 3769
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3770
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3772
    .local v1, "baseDirs":[Ljava/io/File;
    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_57

    aget-object v5, v1, v4

    .line 3773
    .local v5, "baseDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3775
    .local v6, "confFile":Ljava/io/File;
    :try_start_23
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3776
    .local v7, "stream":Ljava/io/InputStream;
    invoke-static {v7}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_31

    .line 3781
    nop

    .end local v7    # "stream":Ljava/io/InputStream;
    goto :goto_54

    .line 3779
    :catch_31
    move-exception v7

    .line 3780
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "InputManager"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 3777
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v7

    .line 3781
    nop

    .line 3772
    .end local v5    # "baseDir":Ljava/io/File;
    .end local v6    # "confFile":Ljava/io/File;
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 3783
    :cond_57
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getFlowPointerDirectionSettings(Z)Z
    .registers 2
    .param p1, "defaultValue"    # Z

    .line 5044
    return p1
.end method

.method private getFlowPointerSettings(Z)Z
    .registers 2
    .param p1, "defaultValue"    # Z

    .line 5024
    return p1
.end method

.method private getGloveModeSetting(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 3430
    move v0, p1

    .line 3432
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    .line 3434
    .local v1, "gloveValue":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v4, v2

    :cond_13
    move v0, v4

    .line 3438
    .end local v1    # "gloveValue":I
    goto :goto_31

    .line 3435
    :catch_15
    move-exception v1

    .line 3436
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getGloveModeSetting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3439
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_31
    return v0
.end method

.method private getHoverTapSlop()I
    .registers 2

    .line 3860
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .line 3855
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getInputPortAssociations()[Ljava/lang/String;
    .registers 4

    .line 3822
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3825
    .local v0, "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3826
    :try_start_a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3827
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    .line 3829
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 3830
    .local v1, "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 3827
    .end local v1    # "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .line 3850
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .line 3845
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 3933
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3934
    return-object v1

    .line 3937
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 3938
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 3939
    return-object v1

    .line 3944
    :cond_d
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/input/InputUtils;->isBkbKeyboard(II)Z

    move-result v2

    const-string v3, "InputManager"

    if-eqz v2, :cond_90

    .line 3945
    const-string v2, "Loading keyboard layout for BKB-10"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const-string v2, ".*arabic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3947
    const-string v2, ".*bulgarian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3948
    const-string v2, ".*english_uk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3949
    const-string v2, ".*french_ca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3950
    const-string v2, ".*greek"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3951
    const-string v2, ".*hebrew"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3952
    const-string v2, ".*italian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3953
    const-string v2, ".*norwegian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3954
    const-string v2, ".*norwegian_sami"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3955
    const-string v2, ".*spanish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3956
    const-string v2, ".*swiss_french"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3957
    const-string v2, ".*swiss_german"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 3958
    const-string v2, ".*turkish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 3959
    :cond_8a
    const-string v2, "_bkb10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3962
    :cond_90
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v4

    invoke-static {v2, v4, p2}, Lcom/android/server/input/InputUtils;->isMisprintedKeyboard(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3963
    const-string v2, ".*keyboard_layout_brazilian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3964
    const-string v2, "Loading modified brazilian layout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    const-string v2, "_tabs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3968
    :cond_b1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay KLD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3972
    .local v2, "result":[Ljava/lang/String;
    new-instance v4, Lcom/android/server/input/InputManagerService$18;

    invoke-direct {v4, p0, v2}, Lcom/android/server/input/InputManagerService$18;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 3985
    const/4 v4, 0x0

    aget-object v4, v2, v4

    if-nez v4, :cond_ef

    .line 3986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    return-object v1

    .line 3990
    :cond_ef
    return-object v2
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2736
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2740
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_19

    .line 2741
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2743
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2744
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2745
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2746
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2737
    .end local v0    # "bob":Ljava/lang/StringBuilder;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "identifier and descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "languageTags"    # Ljava/lang/String;

    .line 2725
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2726
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 2728
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .line 3870
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getMultiFingerGestureBehavior(Ljava/lang/String;I)I
    .registers 3
    .param p1, "StringKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 2152
    return p2
.end method

.method private getPenHoveringSetting(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 4955
    move v0, p1

    .line 4957
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_19

    .line 4958
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    move v4, v2

    :cond_18
    move v0, v4

    .line 4964
    :cond_19
    goto :goto_36

    .line 4962
    :catch_1a
    move-exception v1

    .line 4963
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getPenHoveringSetting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4965
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return v0
.end method

.method private getPointerDisplayId()I
    .registers 2

    .line 3924
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v0

    return v0
.end method

.method private getPointerIcon(I)Landroid/view/PointerIcon;
    .registers 3
    .param p1, "displayId"    # I

    .line 3880
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .line 3875
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .line 3080
    const/4 v0, 0x0

    .line 3082
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 3085
    goto :goto_12

    .line 3084
    :catch_11
    move-exception v1

    .line 3086
    :goto_12
    return v0
.end method

.method private getPrimaryMouseButtonLocation()I
    .registers 5

    .line 5085
    const/4 v0, 0x0

    .line 5087
    .local v0, "location":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "primary_mouse_button_option"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 5092
    goto :goto_1a

    .line 5089
    :catch_11
    move-exception v1

    .line 5090
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "InputManager"

    const-string v3, "SettingNotFoundException : primary mouse button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    const/4 v0, 0x0

    .line 5093
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1a
    return v0
.end method

.method private getReverseSwipeSetting()I
    .registers 5

    .line 3474
    const/4 v0, 0x0

    .line 3476
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "touchpad_scrolling_direction"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 3480
    goto :goto_2d

    .line 3478
    :catch_11
    move-exception v1

    .line 3479
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getReverseSwipeSetting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3481
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return v0
.end method

.method private getSetPenModeOnDex(I)I
    .registers 2
    .param p1, "defaultValue"    # I

    .line 4698
    return p1
.end method

.method private getShowHoveringSetting(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 4945
    move v0, p1

    .line 4947
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_pointer"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_16

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v4, v2

    :cond_14
    move v0, v4

    .line 4951
    goto :goto_32

    .line 4949
    :catch_16
    move-exception v1

    .line 4950
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getShowHoveringSetting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4952
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .line 3153
    move v0, p1

    .line 3155
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 3158
    goto :goto_12

    .line 3157
    :catch_11
    move-exception v1

    .line 3159
    :goto_12
    return v0
.end method

.method private getSpenScreenOnFromSettings(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 4968
    move v0, p1

    .line 4970
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_memo"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_16

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v4, v2

    :cond_14
    move v0, v4

    .line 4974
    goto :goto_32

    .line 4972
    :catch_16
    move-exception v1

    .line 4973
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getSpenScreenOnFromSettings \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4975
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return v0
.end method

.method private getTapToClickSetting()I
    .registers 5

    .line 3445
    const/4 v0, 0x1

    .line 3447
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tap_to_click_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 3451
    goto :goto_2d

    .line 3449
    :catch_11
    move-exception v1

    .line 3450
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getTapToClickSetting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3452
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return v0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .line 3759
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 2885
    const-string v0, "InputManager"

    if-nez p2, :cond_a

    .line 2886
    const-string v1, "No InputMethod is running, ignoring change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    return-void

    .line 2889
    :cond_a
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "keyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2890
    const-string v1, "InputMethodSubtype changed to non-keyboard subtype, ignoring change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    return-void

    .line 2893
    :cond_1f
    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2894
    .local v1, "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to switch keyboard layout for subtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2897
    iput-object p3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2898
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    .line 2899
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V

    .line 2901
    :cond_48
    return-void
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 2933
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 2934
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_57

    .line 2938
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 2939
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 2941
    :try_start_11
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v3

    .line 2942
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4c

    .line 2945
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2946
    nop

    .line 2947
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_54

    .line 2949
    if-eqz v3, :cond_57

    .line 2950
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v2, :cond_30

    .line 2951
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 2952
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 2954
    :cond_30
    if-eqz v4, :cond_48

    .line 2955
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 2956
    .local v2, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_48

    .line 2957
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2958
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 2957
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 2959
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2963
    .end local v2    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_48
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_57

    .line 2945
    .end local v3    # "changed":Z
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_4c
    move-exception v3

    :try_start_4d
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2946
    nop

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "direction":I
    throw v3

    .line 2947
    .restart local v0    # "device":Landroid/view/InputDevice;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "direction":I
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3

    .line 2966
    .end local v1    # "key":Ljava/lang/String;
    :cond_57
    :goto_57
    return-void
.end method

.method private handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "handle"    # Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    .line 2906
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2907
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_4d

    aget-object v4, v1, v3

    .line 2908
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz p1, :cond_17

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/hardware/input/InputDeviceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2909
    :cond_17
    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2910
    goto :goto_3f

    .line 2912
    :cond_1e
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    .line 2913
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2914
    .local v6, "changed":Z
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v7
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4f

    .line 2916
    :try_start_2a
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8, v5, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)Z

    move-result v8
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_42

    if-eqz v8, :cond_33

    .line 2917
    const/4 v6, 0x1

    .line 2920
    :cond_33
    :try_start_33
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2921
    nop

    .line 2922
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4a

    .line 2923
    if-eqz v6, :cond_3f

    .line 2924
    :try_start_3c
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4f

    .line 2907
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "changed":Z
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2920
    .restart local v4    # "device":Landroid/view/InputDevice;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "changed":Z
    :catchall_42
    move-exception v1

    :try_start_43
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2921
    nop

    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "changed":Z
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    throw v1

    .line 2922
    .restart local v4    # "device":Landroid/view/InputDevice;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    :catchall_4a
    move-exception v1

    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    :try_start_4c
    throw v1

    .line 2927
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    :cond_4d
    monitor-exit v0

    .line 2928
    return-void

    .line 2927
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private handleUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 5695
    .local p2, "newAvailableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    .line 5696
    return-void

    .line 5699
    :cond_5
    const-string v0, "InputManager"

    const-string v1, "Handle UPDATE_DEFAULT_KEYBOARD_LAYOUTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    if-nez p2, :cond_11

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    goto :goto_12

    :cond_11
    move-object v1, p2

    .line 5703
    .local v1, "availableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :goto_12
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5704
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5705
    .local v4, "componentName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle handleUpdateDefaultKeyboardLayouts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 5707
    .local v5, "newSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-static {v4, v6}, Lcom/android/server/input/KeyboardLayoutUtils;->getEnabledSubtypeIdsOf(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v6

    .line 5710
    .local v6, "oldSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Lcom/android/server/input/KeyboardLayoutUtils;->isSubtypeListChanged(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 5712
    invoke-direct {p0, v4, v5}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayoutsForAll(Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_69

    .line 5713
    :cond_56
    if-eqz p1, :cond_69

    .line 5714
    invoke-static {v4}, Lcom/android/server/input/KeyboardLayoutUtils;->getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5715
    .local v7, "imePkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 5716
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 5715
    invoke-static {v7, v8}, Lcom/android/server/input/KeyboardLayoutUtils;->getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v8

    .line 5717
    .local v8, "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, p1, v8, v5}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V

    .line 5719
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v4    # "componentName":Ljava/lang/String;
    .end local v5    # "newSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "oldSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "imePkgName":Ljava/lang/String;
    .end local v8    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_69
    :goto_69
    goto :goto_1a

    .line 5722
    :cond_6a
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    .line 5723
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 2434
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_11

    .line 2435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 2436
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2440
    :cond_11
    return-void
.end method

.method private initTspCmdForSpay()V
    .registers 3

    .line 6064
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_21

    .line 6065
    const-string/jumbo v0, "persist.service.tspcmd.spay"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6066
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->isSpayFullAppInstalled()Z

    move-result v0

    .line 6067
    .local v0, "enable":Z
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setEnableTSP(IZ)Z

    .line 6070
    .end local v0    # "enable":Z
    :cond_21
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;I)Z
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1415
    if-eqz p1, :cond_aa

    .line 1418
    const/4 v0, 0x1

    if-eqz p2, :cond_14

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    if-ne p2, v0, :cond_b

    goto :goto_14

    .line 1421
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1425
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1426
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1431
    .local v11, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v2, v1}, Lcom/android/server/DssController;->getScalingFactor(I)F

    move-result v2

    .line 1432
    .local v2, "dssScale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_37

    .line 1433
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_37

    .line 1434
    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    .line 1435
    .local v4, "ev":Landroid/view/MotionEvent;
    div-float/2addr v3, v2

    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->scale(F)V

    .line 1454
    .end local v2    # "dssScale":F
    .end local v4    # "ev":Landroid/view/MotionEvent;
    :cond_37
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v8, 0x7530

    const/high16 v9, 0x8000000

    move-object v4, p1

    move v5, v1

    move v6, v10

    move v7, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v2
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_a5

    .line 1457
    .local v2, "result":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    nop

    .line 1459
    if-eqz v2, :cond_a4

    const-string v3, "Input event injection from pid "

    const-string v4, "InputManager"

    if-eq v2, v0, :cond_85

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eq v2, v0, :cond_6d

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    return v5

    .line 1467
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timed out."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return v5

    .line 1461
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " permission denied."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_a4
    return v0

    .line 1457
    .end local v2    # "result":I
    :catchall_a5
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    throw v0

    .line 1416
    .end local v1    # "pid":I
    .end local v10    # "uid":I
    .end local v11    # "ident":J
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3730
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 3683
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3684
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 3685
    .local v1, "action":I
    const/16 v2, 0x433

    if-eq v0, v2, :cond_10

    const/16 v2, 0x434

    if-ne v0, v2, :cond_21

    :cond_10
    if-nez v1, :cond_21

    .line 3687
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v3, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3691
    :cond_21
    const/16 v2, 0x44c

    if-eq v0, v2, :cond_29

    const/16 v2, 0x44d

    if-ne v0, v2, :cond_3a

    :cond_29
    if-nez v1, :cond_3a

    .line 3693
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v3, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3699
    :cond_3a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v2}, Lcom/android/server/input/InputKeyCounter;->surveyEnabled()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 3700
    const/16 v2, 0x18

    if-eq v0, v2, :cond_5c

    const/16 v2, 0x19

    if-eq v0, v2, :cond_5c

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_5c

    const/16 v2, 0x43a

    if-eq v0, v2, :cond_5c

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_5c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_97

    :cond_5c
    if-nez v1, :cond_97

    .line 3708
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_97

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    if-nez v2, :cond_97

    .line 3709
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    if-eqz v2, :cond_97

    .line 3710
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_97

    .line 3711
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputKeyCounter;->increaseCount(I)V

    .line 3712
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v2}, Lcom/android/server/input/InputKeyCounter;->getAllKeyCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_97

    .line 3713
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v3, Lcom/android/server/input/InputManagerService$KeyCountRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3718
    :cond_97
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v2

    return v2
.end method

.method private interceptKeyBeforeQuickAccess(IFF)Z
    .registers 5
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 5232
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQuickAccess(IFF)Z

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "whenNanos"    # J
    .param p4, "policyFlags"    # I

    .line 3724
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .line 1842
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1843
    return v1

    .line 1846
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1847
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1848
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1849
    return v1

    .line 1851
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpAssociations$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 3341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    return-void
.end method

.method static synthetic lambda$dumpAssociations$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 3350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    return-void
.end method

.method static synthetic lambda$flatten$2(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 3794
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3795
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3796
    return-void
.end method

.method private static loadStaticInputPortAssociations()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3805
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 3806
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3809
    .local v1, "confFile":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3810
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_36
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    return-object v3

    .line 3813
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_15
    move-exception v2

    .line 3814
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 3811
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_36
    move-exception v2

    .line 3815
    nop

    .line 3817
    :goto_38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method private static native nativeCanDispatchToDisplay(JII)Z
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDisableInputDevice(JI)V
.end method

.method private static native nativeDisplayRemoved(JI)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeEnableFlowPointer(JZ)V
.end method

.method private static native nativeEnableInputDevice(JI)V
.end method

.method private static native nativeEnableWirelessKeyboardShare(JZ)V
.end method

.method private static native nativeForceFadeIcon(JI)V
.end method

.method private static native nativeGetGlobalMetaState(JI)I
.end method

.method private static native nativeGetInboundQueueLength(J)I
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetMotionIdleTimeMillis(JZ)J
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeIsInputDeviceEnabled(JI)Z
.end method

.method private static native nativeIsUidTouched(JI)Z
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeNotifyPortAssociationsChanged(J)V
.end method

.method private static native nativePilferPointers(JLandroid/os/IBinder;)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetBackButtonBehavior(JI)V
.end method

.method private static native nativeSetCoverTestModeType(JI)V
.end method

.method private static native nativeSetCoverVerify(JI)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDexMode(JZII)V
.end method

.method private static native nativeSetDisplayDpi(JFF)V
.end method

.method private static native nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V
.end method

.method private static native nativeSetEnableTapToClick(JZ)V
.end method

.method private static native nativeSetFlowPointerDirection(JZ)V
.end method

.method private static native nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V
.end method

.method private static native nativeSetFocusedDisplay(JI)V
.end method

.method private static native nativeSetFoldingState(JI)V
.end method

.method private static native nativeSetForwardButtonBehavior(JI)V
.end method

.method private static native nativeSetGloveMode(JZ)V
.end method

.method private static native nativeSetHoverIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetInTouchMode(JZ)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputMetaData(JII)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetInteractiveForInternalDisplay(JZ)V
.end method

.method private static native nativeSetKidsMode(JZ)V
.end method

.method private static native nativeSetMirrorLinkMode(JZ)V
.end method

.method private static native nativeSetMotionClassifierEnabled(JZ)V
.end method

.method private static native nativeSetMouseControlType(JI)V
.end method

.method private static native nativeSetMouseCursorVisibility(JZ)V
.end method

.method private static native nativeSetPenHovering(JZ)V
.end method

.method private static native nativeSetPenModeOnDex(JI)V
.end method

.method private static native nativeSetPointerCapture(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetPrimaryMouseButtonLocation(JI)V
.end method

.method private static native nativeSetReverseSwipeGesture(JZ)V
.end method

.method private static native nativeSetScrollSpeed(JI)V
.end method

.method private static native nativeSetSecondaryButtonBehavior(JI)V
.end method

.method private static native nativeSetShowHovering(JZ)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeSetSystemUiVisibilityForDisplay(JII)V
.end method

.method private static native nativeSetTalkBack(JZ)V
.end method

.method private static native nativeSetTertiaryButtonBehavior(JI)V
.end method

.method private static native nativeSetUseMouseAcceleration(JZ)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeUpdateInputMetaState(JIZ)V
.end method

.method private static native nativeVerifyInputEvent(JLandroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 6
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "reason"    # Ljava/lang/String;

    .line 3659
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .line 3506
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 3507
    return-void
.end method

.method private notifyDisplayIdChangedByUser(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 5480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayIdChangedByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_1d

    .line 5483
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 5485
    :cond_1d
    return-void
.end method

.method private notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "oldToken"    # Landroid/os/IBinder;
    .param p2, "newToken"    # Landroid/os/IBinder;

    .line 3649
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 3650
    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    .line 3651
    .local v0, "requestConfigurationRefresh":Z
    if-eqz v0, :cond_e

    .line 3652
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 3654
    :cond_e
    return-void
.end method

.method private notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3644
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    .line 3645
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .line 3511
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3512
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    .line 3513
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 3514
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3515
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3518
    :cond_15
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 3519
    monitor-exit v0

    .line 3520
    return-void

    .line 3519
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private notifyMultiFingerGesture(II)I
    .registers 8
    .param p1, "gesture"    # I
    .param p2, "reserved"    # I

    .line 2203
    const/4 v0, 0x0

    .line 2204
    .local v0, "behavior":I
    if-nez p1, :cond_6

    .line 2205
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    goto :goto_b

    .line 2206
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 2207
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 2209
    :cond_b
    :goto_b
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    const-string v2, " "

    const-string v3, "InputManager"

    if-eqz v1, :cond_2f

    .line 2210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMultiFingerGesture: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2212
    :cond_2f
    const/4 v0, 0x0

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support multi finger gesture "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :goto_4c
    invoke-direct {p0, v0, p2}, Lcom/android/server/input/InputManagerService;->sendMultiFingerGesture(II)V

    .line 2217
    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    return v1
.end method

.method private notifySwitch(JII)V
    .registers 15
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 3526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySwitch: values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3526
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    and-int/lit8 v0, p4, 0x1

    const/16 v2, 0x20

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_65

    .line 3532
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_37

    move v0, v6

    goto :goto_38

    :cond_37
    move v0, v5

    .line 3533
    .local v0, "lidOpen":Z
    :goto_38
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v7, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 3536
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 3537
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    and-long v8, p1, v3

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3538
    shr-long v8, p1, v2

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3539
    and-int/lit8 v8, p3, 0x1

    if-nez v8, :cond_51

    move v8, v6

    goto :goto_52

    :cond_51
    move v8, v5

    :goto_52
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3540
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9, v7}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3541
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3543
    iput-wide p1, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 3547
    .end local v0    # "lidOpen":Z
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_65
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_75

    .line 3548
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_6f

    move v0, v6

    goto :goto_70

    :cond_6f
    move v0, v5

    .line 3549
    .local v0, "lensCovered":Z
    :goto_70
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v7, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 3552
    .end local v0    # "lensCovered":Z
    :cond_75
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_82

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_82

    .line 3553
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 3557
    :cond_82
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_aa

    .line 3558
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3559
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    and-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3560
    shr-long v2, p1, v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3561
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_99

    move v2, v6

    goto :goto_9a

    :cond_99
    move v2, v5

    :goto_9a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3562
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3563
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3567
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_aa
    const/high16 v0, 0x80000

    and-int v2, p4, v0

    if-eqz v2, :cond_bb

    .line 3568
    and-int/2addr v0, p3

    if-nez v0, :cond_b5

    move v0, v6

    goto :goto_b6

    :cond_b5
    move v0, v5

    .line 3569
    .local v0, "penInsert":Z
    :goto_b6
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    .line 3574
    .end local v0    # "penInsert":Z
    :cond_bb
    const/high16 v0, 0x200000

    and-int v2, p4, v0

    if-eqz v2, :cond_e1

    .line 3575
    and-int/2addr v0, p3

    if-nez v0, :cond_c6

    move v0, v6

    goto :goto_c7

    :cond_c6
    move v0, v5

    .line 3577
    .local v0, "coverOpen":Z
    :goto_c7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v2, :cond_d5

    .line 3578
    const-class v2, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 3580
    :cond_d5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v2, p1, p2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifyCoverSwitchStateChanged(JZ)V

    .line 3582
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    if-eqz v2, :cond_e1

    .line 3583
    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    .line 3586
    .end local v0    # "coverOpen":Z
    :cond_e1
    const/high16 v0, 0x8000000

    and-int v2, p4, v0

    if-eqz v2, :cond_107

    .line 3587
    and-int/2addr v0, p3

    if-eqz v0, :cond_ec

    move v0, v6

    goto :goto_ed

    :cond_ec
    move v0, v5

    .line 3588
    .local v0, "attached":Z
    :goto_ed
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    if-eqz v2, :cond_f5

    .line 3589
    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;->notifyUnverifiedCoverAttachChanged(JZ)V

    goto :goto_fa

    .line 3592
    :cond_f5
    const-string v2, "UnVerifiedCoverAttachCallbacks is not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :goto_fa
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    if-eqz v2, :cond_102

    .line 3596
    invoke-interface {v2, p1, p2, v0}, Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;->notifyUnverifiedCoverAttachChanged(JZ)V

    goto :goto_107

    .line 3598
    :cond_102
    const-string v2, "UnVerifiedCoverAttachCallbacks is not registered for DesktopModeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    .end local v0    # "attached":Z
    :cond_107
    :goto_107
    const/high16 v0, -0x80000000

    and-int v1, p4, v0

    if-eqz v1, :cond_118

    .line 3607
    and-int/2addr v0, p3

    if-eqz v0, :cond_112

    move v0, v6

    goto :goto_113

    :cond_112
    move v0, v5

    .line 3608
    .local v0, "backfolded":Z
    :goto_113
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;->notifyKeyboardCoverBackfolded(JZ)V

    .line 3617
    .end local v0    # "backfolded":Z
    :cond_118
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_12f

    .line 3618
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_121

    move v5, v6

    :cond_121
    move v0, v5

    .line 3619
    .local v0, "micMute":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3620
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 3640
    .end local v0    # "micMute":Z
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_12f
    return-void
.end method

.method private notifyVRProximityEventChanged(I)V
    .registers 5
    .param p1, "event"    # I

    .line 3903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyVRProximityEventChanged event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3905
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1586
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1588
    monitor-exit v0

    .line 1589
    return-void

    .line 1588
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onLidStateChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1931
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1932
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1933
    monitor-exit v0

    .line 1934
    return-void

    .line 1933
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onMultiFingerGestureListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 2106
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2108
    monitor-exit v0

    .line 2109
    return-void

    .line 2108
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "touchedToken"    # Landroid/os/IBinder;

    .line 3746
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 3747
    return-void
.end method

.method private onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
    .registers 6
    .param p1, "touchedToken"    # Landroid/os/IBinder;
    .param p2, "maskedAction"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 3753
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V

    .line 3754
    return-void
.end method

.method private onPointerIconChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 2045
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2046
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2047
    monitor-exit v0

    .line 2048
    return-void

    .line 2047
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1997
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1998
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1999
    monitor-exit v0

    .line 2000
    return-void

    .line 1999
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private registerAOTOnOffSettingObserver()V
    .registers 6

    .line 5062
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5063
    const-string v1, "double_tab_to_wake_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$27;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$27;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5062
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5070
    return-void
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .line 3114
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3115
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$13;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3114
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3122
    return-void
.end method

.method private registerBackButtonBehaviorSettingObserver()V
    .registers 6

    .line 5202
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5203
    const-string/jumbo v1, "mouse_additional_1_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$33;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$33;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5202
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5210
    return-void
.end method

.method private registerCoverTestModeSettingObserver()V
    .registers 6

    .line 6033
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6034
    const-string v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$43;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$43;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 6033
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6041
    return-void
.end method

.method private registerDesktopModeStateChangedListener()V
    .registers 1

    .line 4783
    return-void
.end method

.method private registerEnabledInputMethodsSettingObserver()V
    .registers 6

    .line 5610
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5611
    const-string v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$39;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$39;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5610
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5618
    return-void
.end method

.method private registerFlowPointerDirectionSettingObserver()V
    .registers 1

    .line 5005
    return-void
.end method

.method private registerFlowPointerSettingObserver()V
    .registers 1

    .line 4992
    return-void
.end method

.method private registerForwardButtonBehaviorSettingObserver()V
    .registers 6

    .line 5218
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5219
    const-string/jumbo v1, "mouse_additional_2_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$34;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$34;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5218
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5226
    return-void
.end method

.method private registerFourFingerTapBehavior()V
    .registers 1

    .line 2196
    return-void
.end method

.method private registerGloveModeSettingObserver()V
    .registers 6

    .line 6046
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6047
    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$44;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$44;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 6046
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6054
    return-void
.end method

.method private registerLongPressTimeoutObserver()V
    .registers 6

    .line 3142
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3143
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3142
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3150
    return-void
.end method

.method private registerPenHoveringSettingObserver()V
    .registers 6

    .line 4925
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4926
    const-string/jumbo v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$22;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$22;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 4925
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4933
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .line 3069
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3070
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3069
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3077
    return-void
.end method

.method private registerPrimaryMouseButtonSettingObserver()V
    .registers 6

    .line 5107
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5108
    const-string/jumbo v1, "primary_mouse_button_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$28;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$28;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5107
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5115
    return-void
.end method

.method private registerReverseSwipeSettingObserver()V
    .registers 6

    .line 3493
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3494
    const-string/jumbo v1, "touchpad_scrolling_direction"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$17;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3493
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3501
    return-void
.end method

.method private registerScrollSpeedSettingObserver()V
    .registers 6

    .line 5138
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5139
    const-string/jumbo v1, "mouse_scrolling_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$29;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$29;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5138
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5146
    return-void
.end method

.method private registerSecondaryButtonBehaviorSettingObserver()V
    .registers 6

    .line 5170
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5171
    const-string/jumbo v1, "mouse_secondary_button_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$31;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$31;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5170
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5178
    return-void
.end method

.method private registerSetPenModeOnDexObserver()V
    .registers 1

    .line 4713
    return-void
.end method

.method private registerShowHoveringPointerSettingObserver()V
    .registers 6

    .line 4915
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4916
    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$21;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$21;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 4915
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4923
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .line 3095
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3096
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3095
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3103
    return-void
.end method

.method private registerSpenScreenOnSettingObserver()V
    .registers 6

    .line 4935
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4936
    const-string/jumbo v1, "screen_off_memo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$23;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$23;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 4935
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4943
    return-void
.end method

.method private registerTalkBackSettingObserver()V
    .registers 6

    .line 5051
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5052
    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$26;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$26;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5051
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5059
    return-void
.end method

.method private registerTapToClickSettingObserver()V
    .registers 6

    .line 3463
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3464
    const-string/jumbo v1, "tap_to_click_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$16;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3463
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3471
    return-void
.end method

.method private registerTertiaryButtonBehaviorSettingObserver()V
    .registers 6

    .line 5186
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5187
    const-string/jumbo v1, "mouse_middle_button_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$32;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$32;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5186
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5194
    return-void
.end method

.method private registerThreeFingerTapBehavior()V
    .registers 1

    .line 2183
    return-void
.end method

.method private registerUseMouseAccelerationSettingObserver()V
    .registers 6

    .line 5154
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5155
    const-string v1, "enhance_pointer_precision"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$30;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$30;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 5154
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5162
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .line 1180
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 1181
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .line 1173
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 1174
    return-void
.end method

.method private sendAOTOnOffcmd(Z)V
    .registers 10
    .param p1, "enable"    # Z

    .line 4635
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string v1, "Send AOT On/Off"

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Write sysfs : "

    const-string v4, "InputManager"

    const-string v5, "aot_enable,1"

    const-string v6, "aot_enable,0"

    if-eqz v2, :cond_2c

    .line 4636
    if-eqz p1, :cond_16

    move-object v2, v5

    goto :goto_17

    :cond_16
    move-object v2, v6

    .line 4637
    .local v2, "cmd":Ljava/lang/String;
    :goto_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    invoke-static {v0, v2}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4640
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_2c
    const-string v0, "/sys/class/lcd/panel/aot"

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4641
    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move-object v5, v6

    :goto_38
    move-object v1, v5

    .line 4642
    .local v1, "cmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4645
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_4e
    return-void
.end method

.method private sendKeyboardWirelessKeyboardShare(II)I
    .registers 5
    .param p1, "action"    # I
    .param p2, "scancode"    # I

    .line 2350
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v1, :cond_c

    .line 2352
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->notifyKeyboardAciton(II)V

    .line 2355
    :cond_c
    monitor-exit v0

    .line 2356
    const/4 v0, 0x0

    return v0

    .line 2355
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 5638
    .local p2, "availableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5639
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5640
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5641
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5642
    return-void
.end method

.method private sendMultiFingerGesture(II)V
    .registers 5
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 2128
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2129
    return-void
.end method

.method private sendPogoKeyboardStatus(Z)V
    .registers 4
    .param p1, "status"    # Z

    .line 5926
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5927
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5928
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5929
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5931
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPogoKeyboardStatus(Z)V

    .line 5933
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v1, :cond_23

    .line 5934
    invoke-virtual {v1, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->setPogoConnected(Z)V

    .line 5937
    :cond_23
    return-void
.end method

.method private sendPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 2067
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconType:I

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIcon:Landroid/view/PointerIcon;

    if-eq v0, p2, :cond_18

    .line 2068
    :cond_8
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconType:I

    .line 2069
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2074
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2076
    :cond_18
    return-void
.end method

.method private sendSwitchWirelessKeyboardShare(I)I
    .registers 10
    .param p1, "whichDevice"    # I

    .line 2362
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    const/4 v1, 0x1

    .line 2364
    .local v1, "result":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    .line 2365
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v2}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v2

    .line 2366
    .local v2, "deviceListSize":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->isRegistered()Z

    move-result v4

    .line 2367
    .local v4, "isRegistered":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v5}, Lcom/android/server/input/MouseNKeyHidDevice;->isBluetoothOn()Z

    move-result v5

    .line 2369
    .local v5, "isBtOn":Z
    if-eqz v2, :cond_2f

    if-eqz v4, :cond_2f

    if-nez v5, :cond_22

    goto :goto_2f

    .line 2373
    :cond_22
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-ne p1, v3, :cond_28

    move v7, v3

    goto :goto_29

    :cond_28
    const/4 v7, 0x0

    :goto_29
    invoke-virtual {v6, v7}, Lcom/android/server/input/MouseNKeyHidDevice;->setToLocalTablet(Z)Z

    move-result v6

    move v1, v6

    goto :goto_3c

    .line 2370
    :cond_2f
    :goto_2f
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v6}, Lcom/android/server/input/MouseNKeyHidDevice;->startHIDDeviceByKey()Z

    .line 2371
    const-string v6, "InputManager"

    const-string/jumbo v7, "startHIDDevice by key"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    .end local v2    # "deviceListSize":I
    .end local v4    # "isRegistered":Z
    .end local v5    # "isBtOn":Z
    :cond_3c
    :goto_3c
    if-ne v1, v3, :cond_65

    .line 2377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2378
    .local v4, "when":J
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2379
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v6, v6

    iput v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2380
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    iput v6, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2381
    const/4 v6, 0x6

    iput v6, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2382
    const-string v6, "android.policy:WirelessKeyboardShare"

    iput-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2383
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v7, 0xd

    invoke-virtual {v6, v7, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2385
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "when":J
    :cond_65
    if-ne v1, v3, :cond_68

    goto :goto_69

    :cond_68
    const/4 v3, 0x2

    :goto_69
    monitor-exit v0

    return v3

    .line 2386
    .end local v1    # "result":Z
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method private sendTouchPadGestureWirelessKeyboardShare(IFFI)I
    .registers 7
    .param p1, "action"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "whichbutton"    # I

    .line 2338
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v1, :cond_c

    .line 2340
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/input/MouseNKeyHidDevice;->notifyMouseAciton(IFFI)V

    .line 2343
    :cond_c
    monitor-exit v0

    .line 2344
    const/4 v0, 0x0

    return v0

    .line 2343
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private sendVRProximityEventChanged(I)V
    .registers 5
    .param p1, "event"    # I

    .line 3908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendVRProximityEventChanged event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 3910
    .local v0, "vrService":Lcom/samsung/android/vr/GearVrManagerInternal;
    if-eqz v0, :cond_38

    .line 3911
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 3912
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto :goto_3d

    .line 3914
    :cond_2e
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto :goto_3d

    .line 3917
    :cond_38
    const-string v2, "GearVrManagerInternal is null!! sendVRProximityEventChanged ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    :goto_3d
    return-void
.end method

.method private setAopMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 5896
    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    .line 5897
    .local v0, "cmd":Ljava/lang/String;
    :goto_7
    const-string v1, "/sys/class/sec/sec_epen/screen_off_memo_enable"

    invoke-static {v1, v0}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen_off_memo_enable : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    return-void
.end method

.method private setBackOffEventToRIL(IZ)V
    .registers 6
    .param p1, "deviceID"    # I
    .param p2, "OnOff"    # Z

    .line 5865
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    if-nez p2, :cond_40

    .line 5867
    :cond_7
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_18

    .line 5868
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 5870
    :cond_18
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const-string v1, "InputManager"

    if-eqz v0, :cond_3b

    .line 5872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGripFromTsp, deviceID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " OnOff = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 5875
    :cond_3b
    const-string v0, "PhoneService is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    :cond_40
    :goto_40
    return-void
.end method

.method private setBackOffEventToWifi(Z)V
    .registers 7
    .param p1, "OnOff"    # Z

    .line 5839
    const-string v0, ""

    const-string v1, "TOUCHKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 5840
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 5841
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_20

    .line 5842
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 5844
    :cond_20
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "InputManager"

    if-eqz v0, :cond_53

    .line 5845
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5847
    .local v0, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5849
    .local v3, "args":Landroid/os/Bundle;
    const-string v4, "enable"

    if-ne p1, v1, :cond_38

    .line 5850
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3c

    .line 5852
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5854
    :goto_3c
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableGripFromTsp, WifiManager OnOff = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5857
    .end local v0    # "msg":Landroid/os/Message;
    .end local v3    # "args":Landroid/os/Bundle;
    goto :goto_58

    .line 5859
    :cond_53
    const-string v0, "WifiManager is NULL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    :cond_58
    :goto_58
    return-void
.end method

.method private setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .registers 5
    .param p1, "toolType"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 5775
    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 5776
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 5777
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 5778
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    goto :goto_21

    .line 5779
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    if-eqz v1, :cond_19

    .line 5780
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 5781
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 5782
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    goto :goto_21

    .line 5784
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 5785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 5786
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 5788
    :goto_21
    return-void
.end method

.method private setDisplayDpi()V
    .registers 6

    .line 5238
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_24

    .line 5239
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5240
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5241
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5242
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayDpi(JFF)V

    .line 5244
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_24
    return-void
.end method

.method private setDisplayViewportsInternal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 1185
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->setDisplayDpi()V

    .line 1188
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/display/DisplayViewport;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/DisplayViewport;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V

    .line 1189
    return-void
.end method

.method private setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .registers 7
    .param p1, "toolType"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 5791
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    if-ne v0, v1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 5794
    .local v0, "needToChangeDefaultPointerIcon":Z
    :goto_11
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 5795
    if-eqz p2, :cond_1a

    .line 5796
    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 5797
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    goto :goto_1e

    .line 5799
    :cond_1a
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 5800
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 5803
    :goto_1e
    if-eqz v0, :cond_23

    .line 5804
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    .line 5806
    :cond_23
    return-void
.end method

.method private setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeHandle"    # Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .param p3, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 5585
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 5586
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 5588
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 5589
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set keyboard layout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for subtype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p2, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 5596
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 5597
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5598
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5599
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5601
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_57
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_65

    .line 5604
    :cond_5d
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 5605
    nop

    .line 5606
    monitor-exit v1

    .line 5607
    return-void

    .line 5604
    :catchall_65
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 5605
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "imeHandle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .end local p3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 5606
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "imeHandle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .restart local p3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 3063
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3065
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 3066
    return-void
.end method

.method private setPrimaryMouseButtonLocation(I)V
    .registers 4
    .param p1, "location"    # I

    .line 5096
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    .line 5097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong primary mouse button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    const/4 p1, 0x0

    .line 5100
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPrimaryMouseButtonLocation(JI)V

    .line 5101
    return-void
.end method

.method private showFnLockUnlockToast(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .line 5516
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5517
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v1, 0x44c

    if-ne p1, v1, :cond_12

    .line 5518
    const v1, 0x10404b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 5519
    :cond_12
    const v1, 0x10404b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_19
    nop

    .line 5521
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mFnLockUnlockToast:Landroid/widget/Toast;

    if-eqz v2, :cond_24

    .line 5522
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 5523
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mFnLockUnlockToast:Landroid/widget/Toast;

    .line 5525
    :cond_24
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mFnLockUnlockToast:Landroid/widget/Toast;

    .line 5527
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5528
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 2402
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_77

    .line 2403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 2405
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2407
    :cond_17
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2410
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2413
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2414
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1040ae2

    .line 2416
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1040ae1

    .line 2418
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 2420
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080564

    .line 2421
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 2422
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 2424
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 2425
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x13

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2428
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 2430
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_77
    return-void
.end method

.method private showTouchpadOnOffToast(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .line 5499
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5500
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v1, 0x433

    if-ne p1, v1, :cond_12

    .line 5501
    const v1, 0x1040c67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 5502
    :cond_12
    const v1, 0x1040c66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_19
    nop

    .line 5504
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    if-eqz v2, :cond_24

    .line 5505
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 5506
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    .line 5508
    :cond_24
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    .line 5510
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5511
    return-void
.end method

.method private startGameToolsService(II)V
    .registers 6
    .param p1, "vid"    # I
    .param p2, "pid"    # I

    .line 1603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v1, "DEVICE_VID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v1, "DEVICE_PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    const-string v1, "DEVICE_ACTION"

    const-string v2, "CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start service game TOOLS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void
.end method

.method private switchKeyboardLayoutIfNotSetAsCurrentSubtype(Landroid/hardware/input/InputDeviceIdentifier;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 5729
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    .line 5730
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 5731
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 5732
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5733
    .local v2, "curLayout":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object v3

    .line 5734
    .local v3, "targetLayout":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 5735
    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch to a layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 5737
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5738
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5739
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5741
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "curLayout":Ljava/lang/String;
    .end local v3    # "targetLayout":Ljava/lang/String;
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_51
    monitor-exit v0

    goto :goto_56

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_53

    throw v1

    .line 5744
    :cond_56
    :goto_56
    return-void
.end method

.method private updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 3106
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3107
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3106
    const-string v1, "accessibility_large_pointer_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3109
    .local v0, "accessibilityConfig":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    invoke-static {v2}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 3110
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 3111
    return-void
.end method

.method private updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 3126
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3129
    .local v0, "timeout":I
    nop

    .line 3130
    const-string/jumbo v1, "input_native_boot"

    const-string v3, "deep_press_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3132
    .local v1, "featureEnabledFlag":Z
    if-eqz v1, :cond_20

    if-gt v0, v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 3134
    .local v2, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3135
    if-eqz v2, :cond_2c

    const-string v4, "Enabling"

    goto :goto_2e

    :cond_2c
    const-string v4, "Disabling"

    :goto_2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " motion classifier because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    if-eqz v1, :cond_43

    const-string v4, "enabled"

    goto :goto_45

    :cond_43
    const-string v4, "disabled"

    :goto_45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", long press timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3134
    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v3, v4, v2}, Lcom/android/server/input/InputManagerService;->nativeSetMotionClassifierEnabled(JZ)V

    .line 3139
    return-void
.end method

.method private updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5663
    .local p3, "enabledSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 5664
    return-void

    .line 5667
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 5668
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 5669
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 5670
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v3, p2, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5671
    .local v3, "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 5672
    .local v4, "subtypeId":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 5673
    goto :goto_43

    .line 5676
    :cond_26
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v5

    .line 5679
    :try_start_29
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v6, v0, v3}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3c

    .line 5680
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lcom/android/server/input/KeyboardLayoutUtils;->getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 5682
    .local v6, "layout":Ljava/lang/String;
    if-eqz v6, :cond_3c

    .line 5683
    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_46

    .line 5687
    .end local v6    # "layout":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v6}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 5688
    nop

    .line 5689
    monitor-exit v5

    .line 5668
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .end local v4    # "subtypeId":Ljava/lang/String;
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5687
    .restart local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v3    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .restart local v4    # "subtypeId":Ljava/lang/String;
    :catchall_46
    move-exception v6

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 5688
    nop

    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .end local v4    # "subtypeId":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local p3    # "enabledSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    throw v6

    .line 5689
    .restart local v0    # "descriptor":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v3    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .restart local v4    # "subtypeId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p3    # "enabledSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_4e
    move-exception v6

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_4e

    throw v6

    .line 5691
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    .end local v4    # "subtypeId":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private updateDefaultKeyboardLayoutsForAll(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 11
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5646
    .local p2, "enabledSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    .line 5647
    return-void

    .line 5649
    :cond_5
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutUtils;->getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5650
    .local v0, "imePkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 5651
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 5650
    invoke-static {v0, v1}, Lcom/android/server/input/KeyboardLayoutUtils;->getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 5652
    .local v1, "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5653
    :try_start_16
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    .line 5654
    .local v6, "device":Landroid/view/InputDevice;
    invoke-virtual {v6}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v6}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_31

    .line 5655
    invoke-virtual {v6}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-direct {p0, v7, v1, p2}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V

    .line 5653
    .end local v6    # "device":Landroid/view/InputDevice;
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 5658
    :cond_34
    monitor-exit v2

    .line 5659
    return-void

    .line 5658
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_36

    throw v3
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .line 2445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2447
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2449
    new-instance v1, Lcom/android/server/input/InputManagerService$7;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2459
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2461
    :try_start_15
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_25

    .line 2463
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2464
    nop

    .line 2465
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_2d

    .line 2468
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 2469
    return-void

    .line 2463
    :catchall_25
    move-exception v2

    :try_start_26
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2464
    nop

    .end local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    throw v2

    .line 2465
    .restart local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private updatePointerSpeedFromSettings()V
    .registers 2

    .line 3058
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 3059
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 3060
    return-void
.end method

.method private updateShowTouchesFromSettings()V
    .registers 5

    .line 3090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 3091
    .local v1, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 3092
    return-void
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 14
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 2567
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2568
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 2569
    .local v7, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 2572
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2573
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v11, v9, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2574
    .local v11, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2575
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "priority":I
    goto :goto_19

    .line 2576
    :cond_34
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 2580
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 2581
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_27

    .line 2582
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2584
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2589
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_25} :catch_26

    .line 2591
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_27

    .line 2590
    :catch_26
    move-exception v2

    .line 2593
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_27
    :goto_27
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 33
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 2597
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2598
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_b

    .line 2599
    return-void

    .line 2602
    :cond_b
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2603
    .local v5, "configResId":I
    const-string v6, "/"

    const-string v7, "InputManager"

    if-nez v5, :cond_36

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    return-void

    .line 2609
    :cond_36
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2610
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v8, :cond_41

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_41
    const-string v0, ""

    :goto_43
    move-object v12, v0

    .line 2612
    .local v12, "collection":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-eqz v0, :cond_51

    .line 2613
    move/from16 v0, p4

    move/from16 v17, v0

    .local v0, "priority":I
    goto :goto_54

    .line 2615
    .end local v0    # "priority":I
    :cond_51
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 2619
    .local v17, "priority":I
    :goto_54
    :try_start_54
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v11, v0

    .line 2620
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_2fc

    move-object v9, v0

    .line 2622
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_60
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2625
    :goto_66
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2626
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_2e9

    move-object v10, v0

    .line 2627
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_8a

    .line 2628
    nop

    .line 2715
    .end local v10    # "element":Ljava/lang/String;
    :try_start_71
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7f

    .line 2716
    nop

    .line 2720
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    move-object/from16 v9, p5

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    goto/16 :goto_323

    .line 2717
    :catch_7f
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    goto/16 :goto_305

    .line 2630
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :cond_8a
    :try_start_8a
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    .line 2631
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v11, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_2e9

    move-object v15, v0

    .line 2634
    .local v15, "a":Landroid/content/res/TypedArray;
    :try_start_9a
    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 2636
    .local v14, "name":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 2638
    .local v16, "label":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move/from16 v19, v0

    .line 2644
    .local v19, "keyboardLayoutResId":I
    const-string/jumbo v0, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v1, "subtypeLocale"

    invoke-interface {v9, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2646
    .local v1, "languageTags":Ljava/lang/String;
    const-string/jumbo v0, "style"

    invoke-static {v9, v11, v0}, Lcom/android/server/input/KeyboardLayoutUtils;->getStringFromInputDevices(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 2648
    .local v21, "style":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c5
    .catchall {:try_start_9a .. :try_end_c5} :catchall_290

    if-nez v0, :cond_11a

    .line 2649
    :try_start_c7
    const-string v0, ","
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_109

    move-object/from16 v22, v0

    .line 2651
    .local v22, "comma":Ljava/lang/String;
    :try_start_cb
    const-string v0, "comma"

    const-string/jumbo v13, "string"
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_f0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_109

    move-object/from16 v24, v4

    .end local v4    # "metaData":Landroid/os/Bundle;
    .local v24, "metaData":Landroid/os/Bundle;
    :try_start_d2
    const-string v4, "com.android.inputdevices"

    invoke-virtual {v11, v0, v13, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2653
    .local v0, "id":I
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_dc} :catch_ee
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_df

    move-object/from16 v22, v4

    .line 2656
    .end local v0    # "id":I
    goto :goto_f3

    .line 2706
    .end local v1    # "languageTags":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "label":Ljava/lang/String;
    .end local v19    # "keyboardLayoutResId":I
    .end local v21    # "style":Ljava/lang/String;
    .end local v22    # "comma":Ljava/lang/String;
    :catchall_df
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v15

    move-object/from16 v9, p5

    goto/16 :goto_29f

    .line 2654
    .restart local v1    # "languageTags":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "label":Ljava/lang/String;
    .restart local v19    # "keyboardLayoutResId":I
    .restart local v21    # "style":Ljava/lang/String;
    .restart local v22    # "comma":Ljava/lang/String;
    :catch_ee
    move-exception v0

    goto :goto_f3

    .end local v24    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    :catch_f0
    move-exception v0

    move-object/from16 v24, v4

    .line 2657
    .end local v4    # "metaData":Landroid/os/Bundle;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    :goto_f3
    :try_start_f3
    const-string v0, "%s%s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v16, v4, v13

    const/4 v13, 0x1

    aput-object v22, v4, v13

    const/16 v18, 0x2

    aput-object v21, v4, v18

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_106
    .catchall {:try_start_f3 .. :try_end_106} :catchall_df

    move-object/from16 v16, v0

    goto :goto_11f

    .line 2706
    .end local v1    # "languageTags":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "label":Ljava/lang/String;
    .end local v19    # "keyboardLayoutResId":I
    .end local v21    # "style":Ljava/lang/String;
    .end local v22    # "comma":Ljava/lang/String;
    .end local v24    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    :catchall_109
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v15

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    goto/16 :goto_29f

    .line 2648
    .end local v24    # "metaData":Landroid/os/Bundle;
    .restart local v1    # "languageTags":Ljava/lang/String;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "label":Ljava/lang/String;
    .restart local v19    # "keyboardLayoutResId":I
    .restart local v21    # "style":Ljava/lang/String;
    :cond_11a
    move-object/from16 v24, v4

    const/4 v13, 0x1

    .end local v4    # "metaData":Landroid/os/Bundle;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    move-object/from16 v0, v16

    .line 2660
    .end local v16    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    :goto_11f
    :try_start_11f
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    move-object/from16 v18, v1

    move-object v1, v14

    .end local v14    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v18, "languageTags":Ljava/lang/String;
    move-object v14, v4

    .line 2661
    .local v14, "locales":Landroid/os/LocaleList;
    const/4 v4, 0x5

    const/4 v13, -0x1

    invoke-virtual {v15, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4
    :try_end_12d
    .catchall {:try_start_11f .. :try_end_12d} :catchall_282

    move-object v13, v15

    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v13, "a":Landroid/content/res/TypedArray;
    move v15, v4

    .line 2663
    .local v15, "vid":I
    const/4 v4, 0x4

    move/from16 v22, v5

    const/4 v5, -0x1

    .end local v5    # "configResId":I
    .local v22, "configResId":I
    :try_start_133
    invoke-virtual {v13, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16
    :try_end_137
    .catchall {:try_start_133 .. :try_end_137} :catchall_276

    .line 2666
    .local v16, "pid":I
    if-eqz v1, :cond_240

    if-eqz v0, :cond_240

    move/from16 v4, v19

    .end local v19    # "keyboardLayoutResId":I
    .local v4, "keyboardLayoutResId":I
    if-nez v4, :cond_14f

    move-object/from16 v25, v1

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v13

    const/16 v26, 0x1

    move-object/from16 v9, p5

    goto/16 :goto_250

    .line 2674
    :cond_14f
    if-nez v3, :cond_1e4

    .line 2675
    :try_start_151
    const-string v5, ".*arabic_bkb10"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*bulgarian_bkb10"

    .line 2676
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*english_uk_bkb10"

    .line 2677
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*french_ca_bkb10"

    .line 2678
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*greek_bkb10"

    .line 2679
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*hebrew_bkb10"

    .line 2680
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*italian_bkb10"

    .line 2681
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*norwegian_bkb10"

    .line 2682
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*norwegian_sami_bkb10"

    .line 2683
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*spanish_bkb10"

    .line 2684
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*swiss_french_bkb10"

    .line 2685
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*swiss_german_bkb10"

    .line 2686
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*turkish_bkb10"

    .line 2687
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c1

    const-string v5, ".*keyboard_layout_brazilian_tabs"

    .line 2688
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5
    :try_end_1bf
    .catchall {:try_start_151 .. :try_end_1bf} :catchall_1d7

    if-eqz v5, :cond_1e4

    .line 2706
    :cond_1c1
    :try_start_1c1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1c4
    .catchall {:try_start_1c1 .. :try_end_1c4} :catchall_1cd

    .line 2690
    move-object/from16 v1, p1

    move/from16 v5, v22

    move-object/from16 v4, v24

    const/4 v13, 0x1

    goto/16 :goto_66

    .line 2715
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "keyboardLayoutResId":I
    .end local v10    # "element":Ljava/lang/String;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "languageTags":Ljava/lang/String;
    .end local v21    # "style":Ljava/lang/String;
    :catchall_1cd
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v9, p5

    goto/16 :goto_2f5

    .line 2706
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    :catchall_1d7
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v9, p5

    goto/16 :goto_29f

    .line 2695
    .restart local v0    # "label":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "keyboardLayoutResId":I
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "languageTags":Ljava/lang/String;
    .restart local v21    # "style":Ljava/lang/String;
    :cond_1e4
    :try_start_1e4
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_1e6
    .catchall {:try_start_1e4 .. :try_end_1e6} :catchall_276

    move-object/from16 v19, v8

    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .local v19, "receiverLabel":Ljava/lang/CharSequence;
    :try_start_1e8
    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v8, v1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1ee
    .catchall {:try_start_1e8 .. :try_end_1ee} :catchall_235

    move-object v8, v10

    .end local v10    # "element":Ljava/lang/String;
    .local v8, "element":Ljava/lang/String;
    move-object v10, v5

    .line 2697
    .local v10, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_20e

    :try_start_1f2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f6
    .catchall {:try_start_1f2 .. :try_end_1f6} :catchall_204

    if-eqz v5, :cond_1f9

    goto :goto_20e

    :cond_1f9
    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v20, v13

    const/16 v26, 0x1

    move-object/from16 v9, p5

    goto/16 :goto_26e

    .line 2706
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "keyboardLayoutResId":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "languageTags":Ljava/lang/String;
    .end local v21    # "style":Ljava/lang/String;
    :catchall_204
    move-exception v0

    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v9, p5

    goto/16 :goto_29f

    .line 2698
    .restart local v0    # "label":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "keyboardLayoutResId":I
    .restart local v10    # "descriptor":Ljava/lang/String;
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "languageTags":Ljava/lang/String;
    .restart local v21    # "style":Ljava/lang/String;
    :cond_20e
    :goto_20e
    :try_start_20e
    new-instance v5, Landroid/hardware/input/KeyboardLayout;
    :try_end_210
    .catchall {:try_start_20e .. :try_end_210} :catchall_22b

    move-object/from16 v23, v9

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v23, "parser":Landroid/content/res/XmlResourceParser;
    move-object v9, v5

    move-object/from16 v25, v1

    move-object v1, v11

    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v1, "resources":Landroid/content/res/Resources;
    .local v25, "name":Ljava/lang/String;
    move-object v11, v0

    move-object/from16 v20, v13

    const/16 v26, 0x1

    .end local v13    # "a":Landroid/content/res/TypedArray;
    .local v20, "a":Landroid/content/res/TypedArray;
    move/from16 v13, v17

    :try_start_21d
    invoke-direct/range {v9 .. v16}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    :try_end_220
    .catchall {:try_start_21d .. :try_end_220} :catchall_226

    .line 2701
    .local v5, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v9, p5

    :try_start_222
    invoke-interface {v9, v1, v4, v5}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_26e

    .line 2706
    .end local v0    # "label":Ljava/lang/String;
    .end local v4    # "keyboardLayoutResId":I
    .end local v5    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "languageTags":Ljava/lang/String;
    .end local v21    # "style":Ljava/lang/String;
    .end local v25    # "name":Ljava/lang/String;
    :catchall_226
    move-exception v0

    move-object/from16 v9, p5

    goto/16 :goto_29f

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    :catchall_22b
    move-exception v0

    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_29f

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v8    # "element":Ljava/lang/String;
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    :catchall_235
    move-exception v0

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_29f

    .line 2666
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "label":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "languageTags":Ljava/lang/String;
    .local v19, "keyboardLayoutResId":I
    .restart local v21    # "style":Ljava/lang/String;
    :cond_240
    move-object/from16 v25, v1

    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v20, v13

    move/from16 v4, v19

    const/16 v26, 0x1

    move-object/from16 v9, p5

    move-object/from16 v19, v8

    move-object v8, v10

    .line 2667
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .local v1, "resources":Landroid/content/res/Resources;
    .restart local v4    # "keyboardLayoutResId":I
    .local v8, "element":Ljava/lang/String;
    .local v19, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "name":Ljava/lang/String;
    :goto_250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26e
    .catchall {:try_start_222 .. :try_end_26e} :catchall_274

    .line 2706
    .end local v0    # "label":Ljava/lang/String;
    .end local v4    # "keyboardLayoutResId":I
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "languageTags":Ljava/lang/String;
    .end local v21    # "style":Ljava/lang/String;
    .end local v25    # "name":Ljava/lang/String;
    :goto_26e
    :try_start_26e
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2707
    nop

    .line 2708
    .end local v20    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_2d8

    .line 2706
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    :catchall_274
    move-exception v0

    goto :goto_29f

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    :catchall_276
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .local v8, "element":Ljava/lang/String;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_29f

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "configResId":I
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_282
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v15

    move-object/from16 v9, p5

    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .local v8, "element":Ljava/lang/String;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_29f

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "metaData":Landroid/os/Bundle;
    .local v4, "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    :catchall_290
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v20, v15

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .local v8, "element":Ljava/lang/String;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    :goto_29f
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2707
    nop

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "metaData":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0

    .line 2709
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :cond_2a4
    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v8, v10

    move-object v1, v11

    move/from16 v26, v13

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .local v8, "element":Ljava/lang/String;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unrecognized element \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in keyboard layout resource from receiver "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d8
    .catchall {:try_start_26e .. :try_end_2d8} :catchall_2e7

    .line 2713
    .end local v8    # "element":Ljava/lang/String;
    :goto_2d8
    move-object v11, v1

    move-object/from16 v8, v19

    move/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    move/from16 v13, v26

    move-object/from16 v1, p1

    goto/16 :goto_66

    .line 2715
    :catchall_2e7
    move-exception v0

    goto :goto_2f5

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_2e9
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object v1, v11

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "metaData":Landroid/os/Bundle;
    :goto_2f5
    :try_start_2f5
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2716
    nop

    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v22    # "configResId":I
    .end local v24    # "metaData":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0
    :try_end_2fa
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fa} :catch_2fa

    .line 2717
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v22    # "configResId":I
    .restart local v24    # "metaData":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :catch_2fa
    move-exception v0

    goto :goto_305

    .end local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v22    # "configResId":I
    .end local v24    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    :catch_2fc
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v19, v8

    .line 2718
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v22    # "configResId":I
    .restart local v24    # "metaData":Landroid/os/Bundle;
    :goto_305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_323
    return-void
.end method

.method private wakeUp(JILjava/lang/String;)V
    .registers 8
    .param p1, "when"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;

    .line 5904
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5905
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_2b

    .line 5906
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeup -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    :cond_2b
    return-void
.end method

.method private wakeUpWhenPogoConnected(Z)V
    .registers 7
    .param p1, "connected"    # Z

    .line 5914
    if-eqz p1, :cond_2a

    .line 5915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5916
    .local v0, "when":J
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 5917
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v3, -0x1

    and-long/2addr v3, v0

    long-to-int v3, v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 5918
    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5919
    const/16 v3, 0x69

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5920
    const-string v3, "android.policy:POGO_CONNECT"

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5921
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5923
    .end local v0    # "when":J
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2a
    return-void
.end method


# virtual methods
.method public addDeviceWirelessKeyboardShare(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 2299
    const/4 v0, 0x1

    .line 2300
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2301
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v2, :cond_13

    .line 2302
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v2, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->addDevice(I)Z

    move-result v2

    move v0, v2

    .line 2304
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1c

    .line 2305
    const-string v1, "InputManager"

    const-string v2, "addDeviceWirelessKeyboardShare"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return v0

    .line 2304
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 2811
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2815
    if-eqz p2, :cond_5d

    .line 2819
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2820
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2822
    :try_start_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2823
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_30

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2824
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2826
    :cond_30
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 2828
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2827
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 2829
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_52

    .line 2832
    .end local v2    # "oldLayout":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2833
    nop

    .line 2834
    monitor-exit v1

    .line 2835
    return-void

    .line 2832
    :catchall_52
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2833
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 2834
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_5a

    throw v2

    .line 2816
    .end local v0    # "key":Ljava/lang/String;
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2813
    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPortAssociation(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I

    .line 3254
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT"

    const-string v1, "addPortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3263
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 3265
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeNotifyPortAssociationsChanged(J)V

    .line 3266
    return-void

    .line 3264
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 3257
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canDispatchToDisplay(II)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "displayId"    # I

    .line 3840
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeCanDispatchToDisplay(JII)Z

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3194
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 3196
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v1, :cond_17

    iget v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v2, p1, :cond_12

    goto :goto_17

    .line 3199
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 3201
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 3202
    return-void

    .line 3197
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    .line 3199
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .registers 9
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 2282
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2283
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v1, :cond_24

    .line 2284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_41

    .line 2286
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->changeHIDDevice(Ljava/lang/String;I)V

    .line 2287
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->nativeEnableWirelessKeyboardShare(JZ)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 2289
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2290
    goto :goto_24

    .line 2289
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2290
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "device":Ljava/lang/String;
    .end local p2    # "index":I
    throw v3

    .line 2292
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "device":Ljava/lang/String;
    .restart local p2    # "index":I
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_41

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDeviceWirelessKeyboardShare : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_33

    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    move-object v1, p1

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    return-void

    .line 2292
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public checkInputFeature()I
    .registers 6

    .line 2394
    const-string v0, "/sys/class/sec/tsp/support_feature"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsReadInt(Ljava/lang/String;I)I

    move-result v0

    .line 2395
    .local v0, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInputFeature : features = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "0x%X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    return v0
.end method

.method public disableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 1525
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1529
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisableInputDevice(JI)V

    .line 1530
    return-void

    .line 1527
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3291
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3293
    :cond_b
    const-string v0, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 3295
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 3296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Ljava/io/PrintWriter;)V

    .line 3300
    :cond_1e
    const-string v1, "  Keyboard Layouts:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    new-instance v1, Lcom/android/server/input/InputManagerService$15;

    invoke-direct {v1, p0, p2}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Ljava/io/PrintWriter;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 3308
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3309
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 3310
    :try_start_31
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    const-string v3, "  "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/input/PersistentDataStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3311
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_f4

    .line 3312
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current IME Handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAvailableInputMethods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    monitor-enter p0

    .line 3320
    :try_start_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBlockDeviceMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 3322
    const-string v1, "      TSP blocked by:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3323
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3324
    .local v2, "blockTspPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    .end local v2    # "blockTspPackage":Ljava/lang/String;
    goto :goto_96

    .line 3327
    :cond_b7
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_ef

    .line 3328
    const-string v1, "      TKEY blocked by:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3330
    .local v2, "blockTkeyPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    .end local v2    # "blockTkeyPackage":Ljava/lang/String;
    goto :goto_ce

    .line 3333
    :cond_ef
    monitor-exit p0

    .line 3335
    return-void

    .line 3333
    :catchall_f1
    move-exception v1

    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_69 .. :try_end_f3} :catchall_f1

    throw v1

    .line 3311
    :catchall_f4
    move-exception v2

    :try_start_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v2
.end method

.method public enableDeviceForBackOff(II)V
    .registers 8
    .param p1, "deviceID"    # I
    .param p2, "deviceValue"    # I

    .line 4839
    const/4 v0, 0x0

    .line 4840
    .local v0, "innerDeviceID":I
    and-int/lit8 v1, p1, 0x1

    const-string v2, "Enable back off"

    const-string v3, "/sys/class/sec/sec_touchkey/sar_enable"

    if-eqz v1, :cond_11

    .line 4841
    invoke-static {v3, v2}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4842
    or-int/lit8 v0, v0, 0x1

    .line 4845
    :cond_11
    and-int/lit8 v1, p1, 0x20

    const-string v4, "/sys/class/sec/tsp/cmd"

    if-eqz v1, :cond_1f

    .line 4846
    invoke-static {v4, v2}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4847
    or-int/lit8 v0, v0, 0x20

    .line 4850
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDeviceForBackOff deviceID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deviceValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsValidIntentForWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_6f

    .line 4854
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_64

    .line 4855
    const-string v1, ""

    .line 4856
    .local v1, "cmd":Ljava/lang/String;
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_58

    .line 4857
    const-string v1, "17"

    goto :goto_61

    .line 4858
    :cond_58
    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_5f

    .line 4859
    const-string v1, "33"

    goto :goto_61

    .line 4861
    :cond_5f
    const-string v1, "1"

    .line 4863
    :goto_61
    invoke-static {v3, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4866
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_64
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_8c

    .line 4867
    const-string/jumbo v1, "sar_enable,1"

    invoke-static {v4, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8c

    .line 4870
    :cond_6f
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_7c

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForWifi:Z

    if-nez v1, :cond_7c

    .line 4871
    const-string v1, "0"

    invoke-static {v3, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4873
    :cond_7c
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_86

    .line 4874
    const-string/jumbo v1, "sar_enable,0"

    invoke-static {v4, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4876
    :cond_86
    if-eqz v0, :cond_8c

    .line 4877
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->setBackOffEventToRIL(IZ)V

    .line 4880
    :cond_8c
    :goto_8c
    return-void
.end method

.method public enableDeviceForBackOff(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 4882
    const-string v0, ""

    const-string v1, "TOUCHKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 4883
    const-string v0, "/sys/class/sec/sec_touchkey/sar_enable"

    const-string v1, "Enable back off"

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDeviceForBackOff wifi enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsValidIntentForSAR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    if-eqz p1, :cond_3c

    .line 4887
    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_49

    .line 4889
    :cond_3c
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    if-nez v1, :cond_45

    .line 4890
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4892
    :cond_45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setBackOffEventToWifi(Z)V

    .line 4896
    :cond_49
    :goto_49
    return-void
.end method

.method public enableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 1515
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1519
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeEnableInputDevice(JI)V

    .line 1520
    return-void

    .line 1517
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enablePressureSettingMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 4833
    const/4 v0, 0x1

    return v0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 3665
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_11

    .line 3668
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 3671
    goto :goto_e

    .line 3669
    :catch_d
    move-exception v1

    .line 3672
    :goto_e
    const/4 v1, 0x0

    :try_start_f
    monitor-exit v0

    return v1

    .line 3674
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 3675
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 3676
    const/4 v0, 0x1

    return v0

    .line 3674
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public forceFadeIcon(I)V
    .registers 4
    .param p1, "type"    # I

    .line 6090
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeForceFadeIcon(JI)V

    .line 6091
    return-void
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2752
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2753
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2754
    const/4 v2, 0x0

    .line 2756
    .local v2, "layout":Ljava/lang/String;
    :try_start_8
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2757
    if-nez v2, :cond_26

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2759
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2765
    :cond_26
    monitor-exit v1

    return-object v2

    .line 2766
    .end local v2    # "layout":Ljava/lang/String;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getDefaultPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .line 5810
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public getDisplayIdForPointerIcon()I
    .registers 2

    .line 5890
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    return v0
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2797
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2798
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2799
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2800
    .local v2, "layouts":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_27

    .line 2801
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 2802
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2804
    :cond_27
    monitor-exit v1

    return-object v2

    .line 2805
    .end local v2    # "layouts":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getGlobalMetaState(I)I
    .registers 4
    .param p1, "type"    # I

    .line 3397
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeGetGlobalMetaState(JI)I

    move-result v0

    return v0
.end method

.method public getInboundQueueLength()I
    .registers 4

    .line 4790
    const/4 v0, 0x0

    .line 4791
    .local v0, "count":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_f

    .line 4792
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeGetInboundQueueLength(J)I

    move-result v0

    .line 4794
    :cond_f
    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"    # I

    .line 1494
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1495
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 1496
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_18

    .line 1497
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v2

    .line 1498
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 1499
    monitor-exit v0

    return-object v3

    .line 1496
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1502
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_18
    monitor-exit v0

    .line 1503
    const/4 v0, 0x0

    return-object v0

    .line 1502
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 1538
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 1540
    .local v1, "count":I
    new-array v2, v1, [I

    .line 1541
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_18

    .line 1542
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 1541
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1544
    .end local v3    # "i":I
    :cond_18
    monitor-exit v0

    return-object v2

    .line 1545
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .line 1553
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 1555
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getKeyCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .line 1201
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 2547
    if-eqz p1, :cond_30

    .line 2551
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 2552
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$10;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2559
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_2d

    .line 2560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_2d
    aget-object v1, v0, v1

    return-object v1

    .line 2548
    .end local v0    # "result":[Landroid/hardware/input/KeyboardLayout;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .registers 11
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 5537
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5538
    .local v0, "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 5540
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 5541
    :try_start_c
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object v3

    .line 5542
    .local v3, "keyboardLayoutDescriptor":Ljava/lang/String;
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_45

    .line 5544
    if-nez v3, :cond_17

    .line 5545
    const/4 v2, 0x0

    return-object v2

    .line 5548
    :cond_17
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 5549
    .local v2, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v4, Lcom/android/server/input/InputManagerService$38;

    invoke-direct {v4, p0, v2}, Lcom/android/server/input/InputManagerService$38;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 5556
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-nez v5, :cond_42

    .line 5557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    :cond_42
    aget-object v4, v2, v4

    return-object v4

    .line 5542
    .end local v2    # "result":[Landroid/hardware/input/KeyboardLayout;
    .end local v3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v3
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 2485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2493
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2499
    nop

    .line 2500
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v6

    .line 2501
    .local v6, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 2503
    .local v7, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2504
    .local v8, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$9;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2535
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2536
    .local v0, "enabledLayoutSize":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2537
    .local v1, "potentialLayoutSize":I
    add-int v2, v0, v1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 2538
    .local v2, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2539
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v1, :cond_3f

    .line 2540
    add-int v4, v0, v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    aput-object v5, v2, v4

    .line 2539
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2542
    .end local v3    # "i":I
    :cond_3f
    return-object v2
.end method

.method public getLastLidEventTimeNanos()J
    .registers 3

    .line 4806
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    return-wide v0
.end method

.method public getLidState()I
    .registers 4

    .line 1899
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .line 1214
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .line 1227
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getToolTypeForDefaultPointerIcon()I
    .registers 2

    .line 5820
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 1857
    if-eqz p1, :cond_10

    .line 1861
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1862
    :try_start_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1863
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    .line 1858
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .line 1244
    if-eqz p3, :cond_1c

    .line 1247
    if-eqz p4, :cond_13

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_13

    .line 1252
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0

    .line 1248
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1411
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public isDefaultPointerIconChanged()Z
    .registers 2

    .line 5815
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    return v0
.end method

.method public isInTabletMode()I
    .registers 4

    .line 1956
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1960
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 1958
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 4
    .param p1, "deviceId"    # I

    .line 1509
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsInputDeviceEnabled(JI)Z

    move-result v0

    return v0
.end method

.method public isMicMuted()I
    .registers 4

    .line 1965
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public isShowHoveringPointer()Z
    .registers 2

    .line 4571
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    return v0
.end method

.method public isSpayFullAppInstalled()Z
    .registers 6

    .line 6073
    const/4 v0, 0x0

    .line 6075
    .local v0, "isSpayFullAppInstalled":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.spay"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6077
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1d

    .line 6078
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.spay.is_stub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1e

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 6082
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1d
    goto :goto_1f

    .line 6080
    :catch_1e
    move-exception v1

    .line 6083
    :goto_1f
    return v0
.end method

.method public isToLocalTablet()Z
    .registers 4

    .line 2325
    const/4 v0, 0x1

    .line 2326
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2327
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v2, :cond_13

    .line 2328
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v2}, Lcom/android/server/input/MouseNKeyHidDevice;->isToLocalTablet()Z

    move-result v2

    move v0, v2

    .line 2330
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_2c

    .line 2331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isToLocalTablet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return v0

    .line 2330
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public isUidTouched(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4813
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsUidTouched(JI)Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .registers 3

    .line 3377
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_11

    .line 3378
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_e

    .line 3379
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 3380
    return-void

    .line 3378
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0

    .line 3377
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 11
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1298
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorInputRegion()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1303
    const-string/jumbo v0, "inputChannelName must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1305
    if-ltz p2, :cond_3b

    .line 1309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1311
    .local v0, "ident":J
    :try_start_17
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v2

    .line 1312
    .local v2, "inputChannels":[Landroid/view/InputChannel;
    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-direct {v3, p0, v5}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    .line 1313
    .local v3, "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    iget-wide v5, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v4, v2, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, p2, v7}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 1315
    new-instance v4, Landroid/view/InputMonitor;

    aget-object v5, v2, v7

    invoke-direct {v4, v5, v3}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_36

    .line 1317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1315
    return-object v4

    .line 1317
    .end local v2    # "inputChannels":[Landroid/view/InputChannel;
    .end local v3    # "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1318
    throw v2

    .line 1306
    .end local v0    # "ident":J
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_43
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 8
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1262
    if-eqz p1, :cond_21

    .line 1266
    if-ltz p2, :cond_19

    .line 1270
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 1271
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-static {v1, v2, v4, p2, v3}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 1272
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1273
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 1267
    .end local v0    # "inputChannels":[Landroid/view/InputChannel;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannelName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitorInputForBinder(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 8
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1278
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1279
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1280
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1281
    const-string v3, "android.permission.MONITOR_INPUT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_2e

    .line 1282
    :cond_17
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only call from system. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v2

    return-object v2
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2978
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisplayRemoved(JI)V

    .line 2979
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 3205
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 3209
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 3210
    return-void

    .line 3207
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 1328
    if-eqz p1, :cond_8

    .line 1332
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;)V

    .line 1333
    return-void

    .line 1329
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .line 1560
    if-eqz p1, :cond_38

    .line 1564
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1566
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 1571
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 1574
    .local v2, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1575
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 1579
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1581
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1582
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    monitor-exit v0

    .line 1583
    return-void

    .line 1576
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :catch_26
    move-exception v3

    .line 1578
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v4

    .line 1567
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :cond_2d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v2

    .line 1582
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 1561
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/ISemLidStateChangedListener;

    .line 1904
    const-string v0, "com.samsung.android.permission.LID_STATE"

    const-string/jumbo v1, "registerLidStateChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1908
    if-eqz p1, :cond_43

    .line 1912
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1913
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1914
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    .line 1918
    new-instance v2, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_40

    .line 1921
    .local v2, "record":Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ISemLidStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1922
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_31
    .catchall {:try_start_21 .. :try_end_29} :catchall_40

    .line 1925
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1926
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1927
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
    monitor-exit v0

    .line 1928
    return-void

    .line 1923
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
    :catch_31
    move-exception v3

    .line 1924
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ISemLidStateChangedListener;
    throw v4

    .line 1915
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ISemLidStateChangedListener;
    :cond_38
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a LidStateChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ISemLidStateChangedListener;
    throw v2

    .line 1927
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ISemLidStateChangedListener;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw v1

    .line 1909
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires LID_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IMultiFingerGestureListener;

    .line 2083
    if-eqz p1, :cond_38

    .line 2087
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2089
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2093
    new-instance v2, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 2096
    .local v2, "record":Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IMultiFingerGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2097
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 2100
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 2101
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2102
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
    monitor-exit v0

    .line 2103
    return-void

    .line 2098
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
    :catch_26
    move-exception v3

    .line 2099
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IMultiFingerGestureListener;
    throw v4

    .line 2090
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IMultiFingerGestureListener;
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a MultiFingerGestureListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IMultiFingerGestureListener;
    throw v2

    .line 2102
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IMultiFingerGestureListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 2084
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IPointerIconChangedListener;

    .line 2022
    if-eqz p1, :cond_38

    .line 2026
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2027
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2028
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2032
    new-instance v2, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 2035
    .local v2, "record":Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IPointerIconChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2036
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 2039
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 2040
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2041
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;
    monitor-exit v0

    .line 2042
    return-void

    .line 2037
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;
    :catch_26
    move-exception v3

    .line 2038
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IPointerIconChangedListener;
    throw v4

    .line 2029
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IPointerIconChangedListener;
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a PointerIconChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IPointerIconChangedListener;
    throw v2

    .line 2041
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IPointerIconChangedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 2023
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .line 1970
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1974
    if-eqz p1, :cond_43

    .line 1978
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1980
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    .line 1984
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_40

    .line 1987
    .local v2, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1988
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_31
    .catchall {:try_start_21 .. :try_end_29} :catchall_40

    .line 1991
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1992
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1993
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    monitor-exit v0

    .line 1994
    return-void

    .line 1989
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :catch_31
    move-exception v3

    .line 1990
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v4

    .line 1981
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :cond_38
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v2

    .line 1993
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw v1

    .line 1975
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1972
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 2840
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2844
    if-eqz p2, :cond_73

    .line 2848
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2849
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2851
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2852
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_31

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2853
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2855
    :cond_31
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2856
    .local v3, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2858
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2861
    :cond_4c
    if-eqz v3, :cond_60

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 2862
    invoke-virtual {v4, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2861
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 2863
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_68

    .line 2866
    .end local v2    # "oldLayout":Ljava/lang/String;
    .end local v3    # "removed":Z
    :cond_60
    :try_start_60
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2867
    nop

    .line 2868
    monitor-exit v1

    .line 2869
    return-void

    .line 2866
    :catchall_68
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2867
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 2868
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_70

    throw v2

    .line 2845
    .end local v0    # "key":Ljava/lang/String;
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2842
    :cond_7c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePortAssociation(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 3275
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT"

    const-string v1, "clearPortAssociations()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3284
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3285
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1c

    .line 3286
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeNotifyPortAssociationsChanged(J)V

    .line 3287
    return-void

    .line 3285
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 3278
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRegisterWirelessKeyboardShare(Ljava/lang/String;I)V
    .registers 9
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 2265
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2266
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v1, :cond_24

    .line 2267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_42

    .line 2269
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->removeHIDDevice(Ljava/lang/String;I)V

    .line 2270
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->nativeEnableWirelessKeyboardShare(JZ)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 2272
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    goto :goto_24

    .line 2272
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "device":Ljava/lang/String;
    .end local p2    # "index":I
    throw v3

    .line 2275
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "device":Ljava/lang/String;
    .restart local p2    # "index":I
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_42

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRegisterWirelessKeyboardShare : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_34

    const/4 v1, 0x0

    goto :goto_35

    :cond_34
    move-object v1, p1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return-void

    .line 2275
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 2983
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 2984
    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->requestPointerCapture(Landroid/os/IBinder;Z)Z

    move-result v0

    .line 2985
    .local v0, "requestConfigurationRefresh":Z
    if-eqz v0, :cond_d

    .line 2986
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, p2}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 2988
    :cond_d
    return-void
.end method

.method public semGetMotionIdleTimeMillis(Z)J
    .registers 4
    .param p1, "useOnlyActionDown"    # Z

    .line 4800
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeGetMotionIdleTimeMillis(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setBlockDeviceMode(ZIZLjava/lang/String;)V
    .registers 9
    .param p1, "isSet"    # Z
    .param p2, "deviceType"    # I
    .param p3, "isForce"    # Z
    .param p4, "callerName"    # Ljava/lang/String;

    monitor-enter p0

    .line 5273
    if-eqz p4, :cond_b0

    :try_start_3
    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_b0

    .line 5278
    :cond_d
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2e

    .line 5279
    if-eqz p1, :cond_21

    .line 5280
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5281
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 5284
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    :cond_21
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5285
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 5289
    :cond_2e
    :goto_2e
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4f

    .line 5290
    if-eqz p1, :cond_42

    .line 5291
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 5292
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 5295
    :cond_42
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 5296
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 5301
    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 5302
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_60

    .line 5303
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 5305
    :cond_60
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6e

    .line 5306
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 5308
    :cond_6e
    const-string v0, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sBDM(): isSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " deviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isForce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " blockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-static {v2, v3, v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetInputMetaData(JII)V
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ba

    .line 5311
    monitor-exit p0

    return-void

    .line 5274
    :cond_b0
    :goto_b0
    :try_start_b0
    const-string v0, "InputManager"

    const-string/jumbo v1, "sBDM(): caller must be specified!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_ba

    .line 5275
    monitor-exit p0

    return-void

    .line 5272
    .end local p1    # "isSet":Z
    .end local p2    # "deviceType":I
    .end local p3    # "isForce":Z
    .end local p4    # "callerName":Ljava/lang/String;
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCoverVerify(I)V
    .registers 4
    .param p1, "verify"    # I

    .line 3386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_24

    .line 3387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCoverVerify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCoverVerify(JI)V

    .line 3390
    :cond_24
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 2772
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2776
    if-eqz p2, :cond_35

    .line 2780
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2781
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2783
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2787
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    .line 2790
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2791
    nop

    .line 2792
    monitor-exit v1

    .line 2793
    return-void

    .line 2790
    :catchall_2a
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2791
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 2792
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v2

    .line 2777
    .end local v0    # "key":Ljava/lang/String;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2774
    :cond_3e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomHoverIcon(Landroid/view/PointerIcon;)V
    .registers 4
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 3240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3241
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetHoverIcon(JLandroid/view/PointerIcon;)V

    .line 3242
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 3243
    return-void
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 3231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3232
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 3233
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 3234
    return-void
.end method

.method public setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V
    .registers 4
    .param p1, "toolType"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;
    .param p3, "forced"    # Z

    .line 5767
    if-eqz p3, :cond_6

    .line 5768
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    goto :goto_9

    .line 5770
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    .line 5772
    :goto_9
    return-void
.end method

.method public setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    .line 5475
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    .line 5476
    return-void
.end method

.method public setDexImePolicy(Z)V
    .registers 2
    .param p1, "isDexImeWindowVisibleInDefaultDisplay"    # Z

    .line 6099
    return-void
.end method

.method public setDisplayIdForPointerIcon(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 5831
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_9

    .line 5832
    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    .line 5833
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 5835
    :cond_9
    return-void
.end method

.method public setEnableTSP(IZ)Z
    .registers 7
    .param p1, "cmdtype"    # I
    .param p2, "enable"    # Z

    .line 5341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5342
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_86

    .line 5348
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    const-string v2, "/sys/class/sec/tsp/cmd"

    if-ne p1, v1, :cond_3b

    .line 5349
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v1, :cond_63

    .line 5351
    if-eqz p2, :cond_26

    const-string/jumbo v1, "spay_enable,1"

    goto :goto_29

    :cond_26
    const-string/jumbo v1, "spay_enable,0"

    .line 5352
    .local v1, "sysfsCmd":Ljava/lang/String;
    :goto_29
    if-eqz p2, :cond_2f

    const-string/jumbo v3, "true"

    goto :goto_31

    :cond_2f
    const-string v3, "false"

    .line 5353
    .local v3, "propCmd":Ljava/lang/String;
    :goto_31
    invoke-static {v2, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5354
    const-string/jumbo v2, "persist.service.tspcmd.spay"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5355
    .end local v1    # "sysfsCmd":Ljava/lang/String;
    .end local v3    # "propCmd":Ljava/lang/String;
    goto :goto_63

    .line 5356
    :cond_3b
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    if-ne p1, v1, :cond_50

    .line 5357
    if-eqz p2, :cond_49

    const-string/jumbo v1, "stylus_enable,1"

    goto :goto_4c

    :cond_49
    const-string/jumbo v1, "stylus_enable,0"

    .line 5358
    .local v1, "cmd":Ljava/lang/String;
    :goto_4c
    invoke-static {v2, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5359
    .end local v1    # "cmd":Ljava/lang/String;
    goto :goto_63

    :cond_50
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    if-ne p1, v1, :cond_65

    .line 5360
    if-eqz p2, :cond_5d

    const-string v1, "brush_enable,1"

    goto :goto_5f

    :cond_5d
    const-string v1, "brush_enable,0"

    .line 5361
    .restart local v1    # "cmd":Ljava/lang/String;
    :goto_5f
    invoke-static {v2, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5362
    .end local v1    # "cmd":Ljava/lang/String;
    nop

    .line 5366
    :cond_63
    :goto_63
    const/4 v1, 0x1

    return v1

    .line 5363
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableTSP cmdtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5364
    const/4 v1, 0x0

    return v1

    .line 5344
    :cond_86
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "only system signature can use setEnableTSP(), but UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") has not system signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "application"    # Landroid/view/InputApplicationHandle;

    .line 2969
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V

    .line 2970
    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2973
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedDisplay(JI)V

    .line 2974
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "inTouchMode"    # Z

    .line 1406
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInTouchMode(JZ)V

    .line 1407
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .line 2991
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 2992
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .line 1359
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 1361
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_9

    .line 1362
    monitor-exit v0

    return-void

    .line 1365
    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 1366
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 1367
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 1368
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_36

    .line 1370
    :try_start_15
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_36

    .line 1373
    goto :goto_1a

    .line 1371
    :catch_19
    move-exception v3

    .line 1376
    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2a

    .line 1377
    :try_start_1c
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 1378
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_36

    .line 1380
    :try_start_25
    invoke-interface {p1, v3}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_36

    .line 1383
    goto :goto_2a

    .line 1381
    :catch_29
    move-exception v2

    .line 1386
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 1387
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 1388
    return-void

    .line 1387
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    .line 5491
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    .line 5492
    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 5567
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5571
    if-eqz p4, :cond_37

    .line 5574
    if-eqz p2, :cond_2e

    .line 5578
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5579
    .local v0, "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set keyboard layout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5580
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    .line 5581
    return-void

    .line 5575
    .end local v0    # "handle":Lcom/android/server/inputmethod/InputMethodSubtypeHandle;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "imeInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5572
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5569
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPointerIconType(I)V
    .registers 4
    .param p1, "iconId"    # I

    .line 3224
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 3225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 3226
    return-void
.end method

.method public setRegisterWirelessKeyboardShare()Z
    .registers 6

    .line 2229
    const/4 v0, 0x0

    .line 2230
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2231
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v2, :cond_21

    .line 2232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_3a

    .line 2234
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->startHIDDevice()Z

    move-result v4
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1b

    move v0, v4

    .line 2236
    :try_start_17
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    goto :goto_21

    .line 2236
    :catchall_1b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    nop

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    throw v4

    .line 2239
    .end local v2    # "ident":J
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    :cond_21
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_3a

    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRegisterWirelessKeyboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return v0

    .line 2239
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    .line 5250
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    .line 5251
    return-void
.end method

.method public setStartedShutdown(Z)V
    .registers 5
    .param p1, "isStarted"    # Z

    .line 4819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1c

    .line 4820
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->nativeUpdateInputMetaState(JIZ)V

    .line 4823
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter;->surveyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4824
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter;->saveCount()V

    .line 4828
    :cond_1c
    return-void
.end method

.method public setSwitchWirelessKeyboardShare(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 2311
    const/4 v0, 0x1

    .line 2312
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v2, :cond_13

    .line 2314
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->setSwitchDevice(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    .line 2316
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_2c

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSwitchWirelessKeyboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    return v0

    .line 2316
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 2995
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 2996
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .registers 5
    .param p1, "visibility"    # I
    .param p2, "displayId"    # I

    .line 3001
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibilityForDisplay(JII)V

    .line 3002
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 1869
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1873
    if-eqz p1, :cond_48

    .line 1876
    if-eqz p3, :cond_40

    .line 1879
    if-ltz p2, :cond_37

    const/4 v0, 0x3

    if-gt p2, v0, :cond_37

    .line 1883
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1885
    :try_start_17
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1887
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2c

    .line 1890
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1891
    nop

    .line 1892
    monitor-exit v0

    .line 1893
    return-void

    .line 1890
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1891
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local p2    # "surfaceRotation":I
    .end local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    throw v1

    .line 1892
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .restart local p2    # "surfaceRotation":I
    .restart local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v1

    .line 1880
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1877
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1874
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :cond_51
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchKeyEarjack(Z)V
    .registers 6
    .param p1, "plugged"    # Z

    .line 4898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTouchKeyEarjack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    const-string v0, ""

    const-string v1, "TOUCHKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    const-string v3, "Touchkey earjack"

    if-eqz v0, :cond_36

    .line 4900
    const-string v0, "/sys/class/sec/sec_touchkey/grip_sensing_enable"

    invoke-static {v0, v3}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 4901
    if-eqz p1, :cond_32

    move-object v1, v2

    .line 4902
    .local v1, "cmd":Ljava/lang/String;
    :cond_32
    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4903
    .end local v1    # "cmd":Ljava/lang/String;
    goto :goto_45

    .line 4905
    :cond_36
    const-string v0, "/sys/class/sec/sec_touchkey/touchkey_earjack"

    invoke-static {v0, v3}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 4906
    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move-object v1, v2

    .line 4907
    .restart local v1    # "cmd":Ljava/lang/String;
    :goto_42
    invoke-static {v0, v1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4910
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_45
    :goto_45
    return-void
.end method

.method public setUnregisterWirelessKeyboardShare()Z
    .registers 8

    .line 2247
    const/4 v0, 0x0

    .line 2248
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2249
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    if-eqz v2, :cond_27

    .line 2250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_40

    .line 2252
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mMouseNKeyHidDevice:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->stopHIDDevice()Z

    move-result v4

    move v0, v4

    .line 2253
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->nativeEnableWirelessKeyboardShare(JZ)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    .line 2255
    :try_start_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    goto :goto_27

    .line 2255
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    nop

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    throw v4

    .line 2258
    .end local v2    # "ident":J
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_40

    .line 2259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUnregisterWirelessKeyboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    return v0

    .line 2258
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    monitor-enter p0

    .line 5372
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 5373
    monitor-exit p0

    return-void

    .line 5371
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "packagename":Ljava/lang/String;
    .end local p2    # "isPut":Z
    .end local p3    # "keycodes":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 911
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 912
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 915
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 916
    return-void
.end method

.method public start()V
    .registers 6

    .line 919
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 923
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 925
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 926
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 927
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 928
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V

    .line 931
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerCoverTestModeSettingObserver()V

    .line 935
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerGloveModeSettingObserver()V

    .line 940
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerTalkBackSettingObserver()V

    .line 942
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAOTOnOffSettingObserver()V

    .line 946
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringPointerSettingObserver()V

    .line 947
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPenHoveringSettingObserver()V

    .line 948
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerSpenScreenOnSettingObserver()V

    .line 952
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerFlowPointerSettingObserver()V

    .line 953
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerFlowPointerDirectionSettingObserver()V

    .line 954
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerSetPenModeOnDexObserver()V

    .line 958
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerEnabledInputMethodsSettingObserver()V

    .line 962
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerThreeFingerTapBehavior()V

    .line 963
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerFourFingerTapBehavior()V

    .line 967
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPrimaryMouseButtonSettingObserver()V

    .line 968
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerScrollSpeedSettingObserver()V

    .line 969
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerUseMouseAccelerationSettingObserver()V

    .line 970
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerSecondaryButtonBehaviorSettingObserver()V

    .line 971
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerTertiaryButtonBehaviorSettingObserver()V

    .line 972
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerBackButtonBehaviorSettingObserver()V

    .line 973
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerForwardButtonBehaviorSettingObserver()V

    .line 977
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerTapToClickSettingObserver()V

    .line 978
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerReverseSwipeSettingObserver()V

    .line 981
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateCoverTestModeFromSettings()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateGloveModeFromSettings()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityEnabledFromSettings()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAOTOnOffSettings()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePenHoveringFromSettings()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSpenScreenOnFromSettings()V

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePrimaryMouseButtonFromSetting()V

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateScrollSpeedFromSetting()V

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateUseMouseAccelerationFromSetting()V

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSecondaryButtonBehaviorFromSetting()V

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTertiaryButtonBehaviorFromSetting()V

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBackButtonBehaviorFromSetting()V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateForwardButtonBehaviorFromSetting()V

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTapToClickFromSetting()V

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateReverseSwipeFromSetting()V

    .line 1078
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 1079
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 1081
    const-string/jumbo v0, "just booted"

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    .line 1084
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->initTspCmdForSpay()V

    .line 1086
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 2875
    return-void
.end method

.method public switchWirelessKeyboardShare(Z)V
    .registers 5
    .param p1, "localTablet"    # Z

    .line 2224
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeEnableWirelessKeyboardShare(JZ)V

    .line 2225
    return-void
.end method

.method public systemRunning()V
    .registers 6

    .line 1093
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 1097
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1109
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1110
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1117
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 1118
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 1120
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_60

    .line 1121
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 1126
    :cond_60
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    if-eqz v1, :cond_70

    .line 1127
    const-string v1, "InputManager"

    const-string v2, "Showing pending notification of missing keyboard layout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 1133
    :cond_70
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    if-eqz v1, :cond_7c

    .line 1134
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 1159
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerDesktopModeStateChangedListener()V

    .line 1164
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateEnabledInputMethodsFromSettings()V

    .line 1167
    return-void
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;

    .line 3038
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 3039
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 3040
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 7
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .line 3020
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 3045
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3050
    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 3054
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 3055
    return-void

    .line 3051
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3047
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 1340
    if-eqz p1, :cond_8

    .line 1344
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 1345
    return-void

    .line 1341
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAOTOnOffSettings()V
    .registers 6

    .line 4620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getAOTOnOffFromSettings(I)I

    move-result v1

    .line 4622
    .local v1, "AOTOn":I
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->checkInputFeature()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const-string v4, "InputManager"

    if-ne v2, v3, :cond_31

    .line 4623
    if-eqz v1, :cond_29

    if-ne v1, v3, :cond_14

    goto :goto_29

    .line 4626
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal AOT value! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    return-void

    .line 4624
    :cond_29
    :goto_29
    if-nez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v3

    :goto_2d
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->sendAOTOnOffcmd(Z)V

    goto :goto_36

    .line 4630
    :cond_31
    const-string v0, "AOT feature not enabled"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    :goto_36
    return-void
.end method

.method public updateAccessibilityEnabledFromSettings()V
    .registers 6

    .line 4604
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4606
    .local v0, "accService":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 4609
    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 4610
    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 4612
    .local v1, "talkbackEnabled":Z
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibility service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "talkbackEnabled : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetTalkBack(JZ)V

    .line 4616
    .end local v1    # "talkbackEnabled":Z
    :cond_52
    return-void
.end method

.method public updateBackButtonBehaviorFromSetting()V
    .registers 5

    .line 5197
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_1_option"

    const/4 v2, 0x7

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5199
    .local v0, "behavior":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetBackButtonBehavior(JI)V

    .line 5200
    return-void
.end method

.method public updateCoverTestModeFromSettings()V
    .registers 4

    .line 3403
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getCoverTestModeSetting(I)I

    move-result v0

    .line 3404
    .local v0, "setting":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetCoverTestModeType(JI)V

    .line 3405
    return-void
.end method

.method public updateEnabledInputMethodsFromSettings()V
    .registers 5

    .line 5621
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 5622
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5621
    const-string v1, "enabled_input_methods"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5627
    .local v0, "enabledInputMethodsStr":Ljava/lang/String;
    nop

    .line 5628
    invoke-static {v0}, Lcom/android/server/input/KeyboardLayoutUtils;->getEnabledInputMethodsAndSubtypes(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 5630
    .local v1, "enabledInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    nop

    .line 5631
    invoke-static {v1}, Lcom/android/server/input/KeyboardLayoutUtils;->filterIfAvailableInputMethods(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    .line 5633
    .local v2, "availableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/input/InputManagerService;->sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    .line 5634
    return-void
.end method

.method public updateFlowPointerDirectionSettings()V
    .registers 1

    .line 4669
    return-void
.end method

.method public updateFlowPointerSettings()V
    .registers 1

    .line 4661
    return-void
.end method

.method public updateForwardButtonBehaviorFromSetting()V
    .registers 5

    .line 5213
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_2_option"

    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5215
    .local v0, "behavior":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetForwardButtonBehavior(JI)V

    .line 5216
    return-void
.end method

.method public updateFourFingerTapBehavior()V
    .registers 1

    .line 2169
    return-void
.end method

.method public updateGloveModeFromSettings()V
    .registers 6

    .line 3420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getGloveModeSetting(Z)Z

    move-result v0

    .line 3422
    .local v0, "gloveMode":Z
    const-string v1, "/sys/class/sec/tsp/cmd"

    const-string v2, "Update glove mode"

    invoke-static {v1, v2}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3423
    if-eqz v0, :cond_15

    const-string/jumbo v2, "glove_mode,1"

    goto :goto_18

    :cond_15
    const-string/jumbo v2, "glove_mode,0"

    .line 3424
    .local v2, "cmd":Ljava/lang/String;
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write sysfs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    invoke-static {v1, v2}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3427
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_32
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetGloveMode(JZ)V

    .line 3428
    return-void
.end method

.method public updatePenHoveringFromSettings()V
    .registers 6

    .line 4575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getPenHoveringSetting(Z)Z

    move-result v1

    .line 4576
    .local v1, "penHovering":Z
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetPenHovering(JZ)V

    .line 4578
    const/4 v2, 0x2

    .line 4579
    .local v2, "mUspLevel":I
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_19

    .line 4580
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 4582
    :cond_19
    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 4583
    if-nez v1, :cond_24

    .line 4584
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v3, v4, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(JZ)V

    goto :goto_27

    .line 4587
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 4590
    :cond_27
    :goto_27
    return-void
.end method

.method public updatePrimaryMouseButtonFromSetting()V
    .registers 2

    .line 5103
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPrimaryMouseButtonLocation()I

    move-result v0

    .line 5104
    .local v0, "location":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPrimaryMouseButtonLocation(I)V

    .line 5105
    return-void
.end method

.method public updateReverseSwipeFromSetting()V
    .registers 5

    .line 3485
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getReverseSwipeSetting()I

    move-result v0

    .line 3487
    .local v0, "reverse":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeSetReverseSwipeGesture(JZ)V

    .line 3489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateReverseSwipeFromSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    return-void
.end method

.method public updateScrollSpeedFromSetting()V
    .registers 5

    .line 5129
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5131
    .local v0, "speed":I
    if-ge v0, v2, :cond_29

    .line 5132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong scroll speed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    const/4 v0, 0x1

    .line 5135
    :cond_29
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetScrollSpeed(JI)V

    .line 5136
    return-void
.end method

.method public updateSecondaryButtonBehaviorFromSetting()V
    .registers 5

    .line 5165
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_secondary_button_option"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5167
    .local v0, "behavior":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetSecondaryButtonBehavior(JI)V

    .line 5168
    return-void
.end method

.method public updateSetPenModeOnDex()V
    .registers 1

    .line 4678
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .registers 4

    .line 4567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowHoveringSetting(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 4568
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(JZ)V

    .line 4569
    return-void
.end method

.method public updateSpenScreenOnFromSettings()V
    .registers 3

    .line 4593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getSpenScreenOnFromSettings(Z)Z

    move-result v0

    .line 4594
    .local v0, "enable":Z
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    if-eq v0, v1, :cond_c

    .line 4595
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setAopMode(Z)V

    .line 4597
    :cond_c
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    .line 4598
    return-void
.end method

.method public updateTapToClickFromSetting()V
    .registers 5

    .line 3456
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getTapToClickSetting()I

    move-result v0

    .line 3458
    .local v0, "setting":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeSetEnableTapToClick(JZ)V

    .line 3459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTapToClickFromSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    return-void
.end method

.method public updateTertiaryButtonBehaviorFromSetting()V
    .registers 5

    .line 5181
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_middle_button_option"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5183
    .local v0, "behavior":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetTertiaryButtonBehavior(JI)V

    .line 5184
    return-void
.end method

.method public updateThreeFingerTapBehavior()V
    .registers 1

    .line 2161
    return-void
.end method

.method public updateUseMouseAccelerationFromSetting()V
    .registers 6

    .line 5149
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhance_pointer_precision"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5151
    .local v0, "useAcceleration":I
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-static {v3, v4, v2}, Lcom/android/server/input/InputManagerService;->nativeSetUseMouseAcceleration(JZ)V

    .line 5152
    return-void
.end method

.method public verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeVerifyInputEvent(JLandroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 3165
    array-length v0, p2

    if-ge p3, v0, :cond_45

    .line 3170
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3171
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 3172
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_2e

    .line 3173
    new-instance v2, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v2, p0, p1, p4, v3}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_42

    move-object v1, v2

    .line 3175
    const/4 v2, 0x0

    :try_start_1d
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_27
    .catchall {:try_start_1d .. :try_end_20} :catchall_42

    .line 3179
    nop

    .line 3180
    :try_start_21
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 3176
    :catch_27
    move-exception v2

    .line 3178
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "pattern":[J
    .end local p3    # "repeat":I
    .end local p4    # "token":Landroid/os/IBinder;
    throw v3

    .line 3182
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "pattern":[J
    .restart local p3    # "repeat":I
    .restart local p4    # "token":Landroid/os/IBinder;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_42

    .line 3184
    monitor-enter v1

    .line 3185
    const/4 v0, 0x1

    :try_start_31
    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3186
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v7, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V

    .line 3187
    monitor-exit v1

    .line 3188
    return-void

    .line 3187
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 3182
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 3166
    :cond_45
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
