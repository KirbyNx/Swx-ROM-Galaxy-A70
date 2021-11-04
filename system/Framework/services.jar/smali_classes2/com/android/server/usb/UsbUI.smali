.class Lcom/android/server/usb/UsbUI;
.super Ljava/lang/Object;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbUI$NotificationWrapper;,
        Lcom/android/server/usb/UsbUI$UsbUIHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final INSTANT_DELAY:I = 0xbb8

.field private static final MSG_CANCEL_NOTI:I = 0x4

.field private static final MSG_ENQUEUE_NOTI:I = 0x2

.field private static final MSG_MAKE_LONG_TOAST:I = 0x1

.field private static final MSG_MAKE_SHORT_TOAST:I = 0x0

.field private static final MSG_NOTIFY_NOTI:I = 0x3

.field private static final MSG_UPDATE_LOCALE:I = 0x5

.field private static final OP_ALERT_ONCE:J = 0x4L

.field private static final OP_CHANNEL_ALERTS:J = 0x8L

.field private static final OP_INSTANT:J = 0x1L

.field private static final OP_NONE:J = 0x0L

.field private static final OP_ONGOING:J = 0x2L

.field private static final OP_PRIORITY_HIGH:J = 0x40L

.field private static final OP_PRIORITY_LOW:J = 0x10L

.field private static final OP_PRIORITY_MAX:J = 0x80L

.field private static final OP_PRIORITY_MIN:J = 0x20L

.field private static final SETTABLE_OPTIONS:J = 0xffL

.field private static final TAG:Ljava/lang/String; = "UsbUI"

.field private static final USB_CCIC_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final USB_CCIC_WATER_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/water"

.field private static final USB_CONTROL_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_notify/usb_control"

.field private static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final USB_TYPEC_PORT_PATH:Ljava/lang/String; = "/sys/class/typec"

.field private static final WET_DETECT_LOG_PATH:Ljava/lang/String; = "/data/log/wet_detect.log"


# instance fields
.field private isSupportWirelessCharging:Z

.field private final mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

.field private mBootCompleted:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

.field private final mHostInterfaceObserver:Landroid/os/UEventObserver;

.field private final mHostPathObserver:Landroid/os/UEventObserver;

.field private mIsEmergencyMode:Z

.field private mIsHiccupState:Z

.field private mIsHostConnected:Z

.field private mIsUsbPortWet:Z

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLoggingLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPortReceiver:Landroid/content/BroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSourcePower:Z

.field private mSupportDualRole:Z

.field private mSystemReady:Z

.field private final mUsbCcicObserver:Landroid/os/UEventObserver;

.field private final mUsbControlObserver:Landroid/os/UEventObserver;

.field private final mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 110
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    .line 179
    new-instance v1, Lcom/android/server/usb/UsbUI$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v1, Lcom/android/server/usb/UsbUI$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$2;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v1, Lcom/android/server/usb/UsbUI$3;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$3;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mPortReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v1, Lcom/android/server/usb/UsbUI$4;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$4;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v1, Lcom/android/server/usb/UsbUI$5;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$5;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v1, Lcom/android/server/usb/UsbUI$6;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mHostPathObserver:Landroid/os/UEventObserver;

    .line 351
    new-instance v1, Lcom/android/server/usb/UsbUI$7;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$7;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mHostInterfaceObserver:Landroid/os/UEventObserver;

    .line 427
    new-instance v1, Lcom/android/server/usb/UsbUI$8;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$8;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbControlObserver:Landroid/os/UEventObserver;

    .line 458
    new-instance v1, Lcom/android/server/usb/UsbUI$9;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$9;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbCcicObserver:Landroid/os/UEventObserver;

    .line 569
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    new-instance v1, Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;-><init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 120
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    .line 121
    const/4 v2, 0x1

    const-string v3, "UsbUI"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/typec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHostPathObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHostInterfaceObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVTYPE=usb_interface"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mUsbCcicObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mUsbControlObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mPortReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbUI;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->updateChangedLocale()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbUI;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->cancelAllHostNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbUI;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbUI;IIIIJ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J

    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbUI;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUI;->makeLongToast(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbUI;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/usb/UsbUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2300(JJ)Z
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbUI;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbUI;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/usb/UsbUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return p1
.end method

.method private static areSettableOptions(J)Z
    .registers 6
    .param p0, "options"    # J

    .line 703
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_10

    const-wide/16 v2, -0x100

    and-long/2addr v2, p0

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private cancelAllHostNotification()V
    .registers 2

    .line 495
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 496
    const/16 v0, 0x71

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 497
    return-void
.end method

.method private cancelNotification(I)V
    .registers 4
    .param p1, "id"    # I

    .line 661
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_e

    .line 662
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    .line 664
    :cond_e
    return-void
.end method

.method private static isIncludeOption(JJ)Z
    .registers 8
    .param p0, "options"    # J
    .param p2, "target"    # J

    .line 707
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isUsbWet()Z
    .registers 7

    .line 573
    const-string v0, "UsbUI"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/ccic/water"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 575
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbWet: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_39

    if-eqz v0, :cond_38

    .line 578
    const/4 v0, 0x1

    return v0

    .line 583
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "state":Ljava/lang/String;
    :cond_38
    goto :goto_3f

    .line 581
    :catch_39
    move-exception v2

    .line 582
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Can\'t read /sys/class/sec/ccic/water"

    invoke-static {v0, v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    return v1
.end method

.method private loggingUsbWetDetection(Ljava/lang/String;)V
    .registers 11
    .param p1, "actionTag"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 592
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy/MM/dd/HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 593
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "date":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/log/wet_detect.log"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 597
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 600
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v2, v7

    .line 601
    const-string v7, "%s %s%n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object p1, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_49
    .catchall {:try_start_5 .. :try_end_3c} :catchall_47

    .line 605
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "date":Ljava/lang/String;
    nop

    .line 607
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_73

    goto :goto_57

    .line 608
    :catch_41
    move-exception v3

    .line 609
    .local v3, "e":Ljava/io/IOException;
    :try_start_42
    const-string v4, "UsbUI"

    const-string v5, "Can\'t close stream"
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_73

    goto :goto_5d

    .line 605
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_47
    move-exception v3

    goto :goto_63

    .line 602
    :catch_49
    move-exception v3

    .line 603
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4a
    const-string v4, "UsbUI"

    const-string v5, "Can\'t write to /data/log/wet_detect.log"

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 605
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_61

    .line 607
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_73

    .line 610
    :goto_57
    goto :goto_61

    .line 608
    :catch_58
    move-exception v3

    .line 609
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_59
    const-string v4, "UsbUI"

    const-string v5, "Can\'t close stream"

    :goto_5d
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    nop

    .line 613
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_61
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_73

    .line 614
    return-void

    .line 605
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :goto_63
    if-eqz v2, :cond_71

    .line 607
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_73

    .line 610
    goto :goto_71

    .line 608
    :catch_69
    move-exception v4

    .line 609
    .local v4, "e":Ljava/io/IOException;
    :try_start_6a
    const-string v5, "UsbUI"

    const-string v6, "Can\'t close stream"

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v4    # "e":Ljava/io/IOException;
    :cond_71
    :goto_71
    nop

    .end local p0    # "this":Lcom/android/server/usb/UsbUI;
    .end local p1    # "actionTag":Ljava/lang/String;
    throw v3

    .line 613
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUI;
    .restart local p1    # "actionTag":Ljava/lang/String;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_73

    throw v1
.end method

.method private makeLongToast(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 640
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_a

    .line 641
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    .line 643
    :cond_a
    return-void
.end method

.method private makeShortToast(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 634
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_a

    .line 635
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    .line 637
    :cond_a
    return-void
.end method

.method private notifyIncreaseBatteryUsage(Z)V
    .registers 9
    .param p1, "show"    # Z

    .line 622
    if-eqz p1, :cond_15

    .line 623
    const v0, 0x1040ca5

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->makeShortToast(I)V

    .line 624
    const/16 v2, 0x6b

    const/4 v3, 0x0

    const v4, 0x1040ca5

    const-wide/16 v5, 0x8a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_1a

    .line 629
    :cond_15
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 631
    :goto_1a
    return-void
.end method

.method private notifyUsbInterface(Ljava/lang/String;III)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "clazz"    # I
    .param p3, "subClass"    # I
    .param p4, "protocol"    # I

    .line 500
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "remove"

    if-nez v1, :cond_12

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 502
    :cond_12
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 503
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string/jumbo v3, "notifyUsbInterface: [%d, %d, %d]"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 502
    const-string v3, "UsbUI"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v1, 0x6

    if-eq p2, v1, :cond_3e

    const/16 v3, 0x8

    if-eq p2, v3, :cond_3e

    goto :goto_42

    .line 508
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    .line 509
    nop

    .line 513
    :goto_42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 514
    if-ne p2, v1, :cond_70

    .line 515
    const/16 v4, 0x7c

    const v5, 0x1040c90

    const/4 v6, 0x0

    const-wide/16 v7, 0x2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_70

    .line 520
    :cond_57
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 521
    if-ne p2, v1, :cond_70

    .line 522
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 523
    const/16 v2, 0x6f

    const v3, 0x1040c91

    const/4 v4, 0x0

    const-wide/16 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 529
    :cond_70
    :goto_70
    return-void
.end method

.method private notifyUsbWetDetection(Z)V
    .registers 15
    .param p1, "show"    # Z

    .line 545
    if-eqz p1, :cond_3a

    .line 547
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const v1, 0x1040ce6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "button":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 549
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 552
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    .line 554
    const/16 v6, 0x66

    const v7, 0x1040ce7

    const v8, 0x1040ce4

    const v9, 0x1080a00

    new-instance v10, Landroid/app/Notification$Action;

    invoke-direct {v10, v4, v0, v1}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-wide/16 v11, 0xe

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/usb/UsbUI;->postNotification(IIIILandroid/app/Notification$Action;J)V

    .line 560
    const-string v2, "WD"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 561
    .end local v0    # "button":Ljava/lang/CharSequence;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_44

    .line 562
    :cond_3a
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 563
    const-string v0, "DD"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 565
    :goto_44
    return-void
.end method

.method private postNotification(IIIIJ)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I
    .param p4, "iconResId"    # I
    .param p5, "options"    # J

    .line 652
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    .line 653
    return-void
.end method

.method private postNotification(IIIILandroid/app/Notification$Action;J)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I
    .param p4, "iconResId"    # I
    .param p5, "action"    # Landroid/app/Notification$Action;
    .param p6, "options"    # J

    .line 657
    invoke-direct/range {p0 .. p7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    .line 658
    return-void
.end method

.method private postNotification(IIIJ)V
    .registers 14
    .param p1, "id"    # I
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I
    .param p4, "options"    # J

    .line 647
    const v4, 0x1080a29

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    .line 648
    return-void
.end method

.method private postNotificationInternal(IIIILandroid/app/Notification$Action;J)V
    .registers 19
    .param p1, "id"    # I
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I
    .param p4, "iconResId"    # I
    .param p5, "action"    # Landroid/app/Notification$Action;
    .param p6, "options"    # J

    .line 668
    move-object v8, p0

    move v9, p1

    invoke-static/range {p6 .. p7}, Lcom/android/server/usb/UsbUI;->areSettableOptions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 669
    new-instance v10, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbUI$NotificationWrapper;-><init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V

    .line 671
    .local v0, "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    iget-boolean v1, v8, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v1, :cond_42

    iget-object v1, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_42

    .line 672
    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$1900(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v1

    if-nez v1, :cond_3a

    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$2000(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_3a

    .line 676
    :cond_2c
    iget-object v1, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    move v2, p2

    goto :goto_5f

    .line 673
    :cond_3a
    :goto_3a
    iget-object v1, v8, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(IILjava/lang/Object;)V

    move v2, p2

    goto :goto_5f

    .line 679
    :cond_42
    iget-object v1, v8, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before system ready: title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsbUI"

    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v1    # "title":Ljava/lang/String;
    :goto_5f
    return-void
.end method

.method private turnOnDisplay()V
    .registers 6

    .line 532
    const-string v0, "UsbUI"

    const-string/jumbo v1, "turnOnDisplay()"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_11

    .line 534
    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 536
    :cond_11
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_27

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 542
    :cond_27
    return-void
.end method

.method private updateChangedLocale()V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .registers 12

    .line 161
    const-string v0, "UsbUI"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 165
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 166
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 167
    .local v1, "devices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 168
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    .line 169
    .local v4, "interfaceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    if-ge v5, v4, :cond_4d

    .line 170
    invoke-virtual {v3, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 171
    .local v6, "iface":Landroid/hardware/usb/UsbInterface;
    nop

    .line 172
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    .line 173
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v8

    .line 174
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v9

    .line 171
    const-string v10, "add"

    invoke-direct {p0, v10, v7, v8, v9}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    .line 169
    .end local v6    # "iface":Landroid/hardware/usb/UsbInterface;
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 176
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v4    # "interfaceCount":I
    .end local v5    # "i":I
    :cond_4d
    goto :goto_21

    .line 177
    :cond_4e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 947
    const-string v0, "UsbUI:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSystemReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSupportDualRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEmergencyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHostConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSourcePower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHiccupState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsUsbPortWet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public systemReady()V
    .registers 6

    .line 145
    const-string v0, "UsbUI"

    const-string/jumbo v1, "system ready"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 147
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI;->isUsbWet()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 152
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 153
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    .line 156
    :cond_23
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string v3, "emergency_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v4

    :goto_31
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 158
    return-void
.end method
