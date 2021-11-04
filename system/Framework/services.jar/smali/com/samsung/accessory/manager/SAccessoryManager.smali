.class public Lcom/samsung/accessory/manager/SAccessoryManager;
.super Lcom/samsung/accessory/manager/SAccessoryManagerInternal;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    }
.end annotation


# static fields
.field private static final AUTH_STATE_FRONT_AUTHENTICATED:I = 0x3

.field private static final AUTH_STATE_NORMAL:I = 0x0

.field private static final AUTH_STATE_PROGRESS:I = 0x1

.field private static final AUTH_STATE_REAR_AUTHENTICATED:I = 0x2

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH:I = 0x200

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DBG:Z

.field public static final EXTRA_MISC_EVENT:Ljava/lang/String; = "misc_event"

.field private static final FRONT_HALL_IC:I = 0x1

.field private static final MSG_AUTH_RESTART:I = 0x3

.field private static final MSG_AUTH_SESSION_COMPLETE:I = 0xc

.field private static final MSG_AUTH_SESSION_STARTED:I = 0xb

.field private static final MSG_AUTH_SESSION_STARTING:I = 0xa

.field private static final MSG_AUTH_SESSION_STOPPED:I = 0xd

.field private static final MSG_AUTH_START_REQUEST:I = 0x1

.field private static final MSG_AUTH_START_REQUEST_INTERNAL:I = 0x2

.field private static final MSG_AUTH_STOP_REQUEST:I = 0x4

.field private static final MSG_DETACHCHECK:I = 0xe

.field private static final REAR_HALL_IC:I = 0x0

.field private static final SUPPORT_DEX:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final USB_ATTACHED:I = 0xc8

.field private static final USB_DETACHED:I = 0x0

.field private static final WIRELESSCHARGER_CONNECTED:I = 0x1

.field private static final WIRELESSCHARGER_DISCONNECTED:I = 0x2

.field private static final WIRELESS_CHARGER_NODE:Ljava/lang/String; = "sys/class/power_supply/battery/batt_misc_event "


# instance fields
.field private authState:Z

.field private auth_state:I

.field private authenticatedHall:I

.field private isUsbReady:Z

.field private mAuthHandler:Landroid/os/Handler;

.field private final mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

.field final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field private final mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mIsFactory:Z

.field private mLocalAuthenticator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field final mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationSession;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private modelName:Ljava/lang/String;

.field private usbState:Z

.field private wirelesschargerState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 485
    const-string v0, "com.sec.feature.nfc_authentication"

    const-string v1, "com.sec.feature.usb_authentication"

    invoke-direct {p0}, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;-><init>()V

    .line 72
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    .line 73
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 85
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    .line 88
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    .line 98
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 99
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 101
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    .line 102
    const-string v3, "Samsung Mobile"

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 121
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 170
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$2;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 236
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 455
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager$5;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$5;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    .line 486
    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v4, "SAccessoryManager starting up"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 489
    iput-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 490
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 491
    .local v3, "pm":Landroid/os/PowerManager;
    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 492
    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 495
    new-instance v2, Landroid/os/HandlerThread;

    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 496
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 497
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    .line 499
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_8d

    .line 500
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 501
    :cond_8d
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    .line 502
    sget-boolean v2, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v2, :cond_a5

    .line 503
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 504
    .local v2, "authTestIntentfilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    .end local v2    # "authTestIntentfilter":Landroid/content/IntentFilter;
    :cond_a5
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 507
    .local v2, "batteryEventFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    :try_start_b3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 513
    .local v4, "pkm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_13e

    .line 515
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 516
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v6, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v5, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 519
    :cond_da
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e8

    const-string v5, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 520
    :cond_e8
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v6, v7, p2, v8, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_fc
    const-string v5, "com.sec.feature.wirelesscharger_authentication"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 523
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_118
    sget-object v5, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feature check nfc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", usb: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_b3 .. :try_end_13e} :catchall_13f

    .line 529
    .end local v4    # "pkm":Landroid/content/pm/PackageManager;
    :cond_13e
    goto :goto_148

    .line 527
    :catchall_13f
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "package manager error for check feature"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_148
    new-instance v0, Lcom/samsung/accessory/manager/DetachCheck;

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 532
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->processAuthMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->batteryChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 45
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/accessory/manager/SAccessoryManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    invoke-direct {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->initUsbState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    return-void
.end method

.method private attachUsbTypeC(I)V
    .registers 8
    .param p1, "uEvent"    # I

    .line 591
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 592
    .local v1, "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    if-eqz v2, :cond_60

    .line 593
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB Type C attached, attached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB State "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 596
    .local v2, "usbAuthenticator":Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    if-ne p1, v3, :cond_58

    .line 597
    iget-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    if-nez v3, :cond_60

    .line 598
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 599
    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    goto :goto_60

    .line 602
    :cond_58
    if-nez p1, :cond_60

    .line 603
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    .line 604
    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    .line 607
    .end local v1    # "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v2    # "usbAuthenticator":Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
    :cond_60
    :goto_60
    goto :goto_6

    .line 608
    :cond_61
    return-void
.end method

.method private batteryChanged(I)V
    .registers 7
    .param p1, "plugType"    # I

    .line 629
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 630
    .local v1, "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v2, :cond_32

    .line 631
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batteryChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 633
    .local v2, "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    invoke-virtual {v2, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onBatteryChanged(I)V

    .line 635
    .end local v1    # "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v2    # "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    :cond_32
    goto :goto_6

    .line 636
    :cond_33
    return-void
.end method

.method private convertAuthMsg(I)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # I

    .line 422
    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    packed-switch p1, :pswitch_data_2c

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 440
    :pswitch_11
    const-string v0, "MSG_DETACHCHECK"

    return-object v0

    .line 438
    :pswitch_14
    const-string v0, "MSG_AUTH_SESSION_STOPPED"

    return-object v0

    .line 436
    :pswitch_17
    const-string v0, "MSG_AUTH_SESSION_COMPLETE"

    return-object v0

    .line 434
    :pswitch_1a
    const-string v0, "MSG_AUTH_SESSION_STARTED"

    return-object v0

    .line 432
    :pswitch_1d
    const-string v0, "MSG_AUTH_SESSION_STARTING"

    return-object v0

    .line 430
    :cond_20
    const-string v0, "MSG_AUTH_STOP_REQUEST"

    return-object v0

    .line 428
    :cond_23
    const-string v0, "MSG_AUTH_RESTART"

    return-object v0

    .line 426
    :cond_26
    const-string v0, "MSG_AUTH_START_REQUEST_INTERNAL"

    return-object v0

    .line 424
    :cond_29
    const-string v0, "MSG_AUTH_START_REQUEST"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private getRunningSessionsLocked(I)I
    .registers 6
    .param p1, "connectivityType"    # I

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "currentConn":I
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 278
    :try_start_4
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 279
    .local v3, "conn":I
    if-ne v3, p1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 280
    .end local v3    # "conn":I
    :cond_23
    monitor-exit v1

    .line 281
    return v0

    .line 280
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private handleAuthReStartRequest(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 295
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 296
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 297
    :try_start_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 298
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    goto :goto_1a

    .line 300
    :cond_13
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t restart the session!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_1a
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 346
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-nez v1, :cond_e

    .line 347
    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_19

    .line 349
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 351
    :goto_19
    return-void
.end method

.method private handleAuthStartRequest(Landroid/os/Message;Z)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "isInternal"    # Z

    .line 306
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 309
    :try_start_7
    const-string/jumbo v2, "package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "requestPackage":Ljava/lang/String;
    const-string v3, "connectivity_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 312
    .local v3, "type":I
    invoke-static {v3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getMaxConnection(I)I

    move-result v4

    .line 314
    .local v4, "maxConnection":I
    invoke-direct {p0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->getRunningSessionsLocked(I)I

    move-result v5

    if-ge v5, v4, :cond_49

    .line 315
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 330
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 331
    invoke-static {v5, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    move-result-object v5

    .line 333
    .local v5, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    if-eqz p2, :cond_35

    .line 334
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 335
    .local v6, "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V

    .line 337
    .end local v6    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    :cond_35
    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V

    .line 338
    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    .line 339
    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    nop

    .end local v2    # "requestPackage":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "maxConnection":I
    .end local v5    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    monitor-exit v1

    .line 341
    return-void

    .line 317
    .restart local v2    # "requestPackage":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "maxConnection":I
    :cond_49
    new-instance v5, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 318
    .local v5, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 320
    if-eqz p2, :cond_67

    .line 321
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 322
    .restart local v6    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    if-eqz v6, :cond_5f

    .line 323
    invoke-interface {v6, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_67

    .line 325
    :cond_5f
    sget-object v7, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "handleAuthStartRequest, callback is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v6    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    :cond_67
    :goto_67
    monitor-exit v1

    return-void

    .line 340
    .end local v2    # "requestPackage":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "maxConnection":I
    .end local v5    # "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_69

    throw v2
.end method

.method private handleAuthStopRequest(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 286
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 287
    :try_start_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 288
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->stopSession()V

    goto :goto_1a

    .line 290
    :cond_13
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t stop the session!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_1a
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private initUsbState()V
    .registers 11

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "state":I
    const/16 v1, 0x400

    const/4 v2, 0x0

    :try_start_4
    new-array v3, v1, [C

    .line 197
    .local v3, "bufferIds":[C
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_80
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_7e

    .line 199
    .local v4, "fileIds":Ljava/io/FileReader;
    :try_start_d
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 200
    .local v5, "lenIds":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_78

    .line 203
    .end local v5    # "lenIds":I
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 204
    nop

    .line 206
    sget-object v5, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service start and check pdids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-array v5, v1, [C

    .line 208
    .local v5, "buffer":[C
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_41} :catch_80
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_7e

    .line 210
    .local v6, "file":Ljava/io/FileReader;
    :try_start_41
    invoke-virtual {v6, v5, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 211
    .local v1, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v0, v7

    .line 212
    sget-object v7, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init dock state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_72

    .line 214
    .end local v1    # "len":I
    :try_start_6e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 215
    goto :goto_88

    .line 214
    :catchall_72
    move-exception v1

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 215
    nop

    .end local v0    # "state":I
    .end local p0    # "this":Lcom/samsung/accessory/manager/SAccessoryManager;
    throw v1

    .line 203
    .end local v5    # "buffer":[C
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v0    # "state":I
    .restart local p0    # "this":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catchall_78
    move-exception v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 204
    nop

    .end local v0    # "state":I
    .end local p0    # "this":Lcom/samsung/accessory/manager/SAccessoryManager;
    throw v1
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_7e} :catch_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7e} :catch_7e

    .line 218
    .end local v3    # "bufferIds":[C
    .end local v4    # "fileIds":Ljava/io/FileReader;
    .restart local v0    # "state":I
    .restart local p0    # "this":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_7e
    move-exception v1

    goto :goto_89

    .line 216
    :catch_80
    move-exception v1

    .line 217
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v4, "This kernel does not have ccic dock support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_88
    nop

    .line 221
    :goto_89
    const/4 v1, 0x0

    .line 222
    .local v1, "ids":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    if-eqz v3, :cond_94

    .line 223
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_94
    const-string v3, "b001b7ff"

    invoke-static {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v3

    .line 226
    .local v3, "pid_check":[B
    const/4 v4, 0x1

    if-eqz v1, :cond_e4

    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e4

    aget-object v5, v1, v2

    const-string v6, "04e8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 227
    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v5

    .line 228
    .local v5, "pid":[B
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_cc

    aget-byte v6, v5, v2

    aget-byte v2, v3, v2

    if-ne v6, v2, :cond_cc

    aget-byte v2, v5, v4

    aget-byte v6, v3, v4

    if-lt v2, v6, :cond_cc

    aget-byte v2, v5, v4

    const/4 v6, 0x5

    aget-byte v6, v3, v6

    if-gt v2, v6, :cond_cc

    .line 229
    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    goto :goto_e4

    .line 231
    :cond_cc
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This device is not support usb authentication usb_pdids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v5    # "pid":[B
    :cond_e4
    :goto_e4
    iput-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    .line 234
    return-void
.end method

.method private processAuthMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 364
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAuthMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->convertAuthMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_dc

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d0

    packed-switch v0, :pswitch_data_e2

    goto/16 :goto_e0

    .line 406
    :pswitch_31
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Check auth chip again. Skip detach process if there is no auth chip in this time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExist()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 409
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 410
    .local v1, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v3, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v3, :cond_68

    .line 411
    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "there is no authentication chip, so do detach process"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object v3, v1

    check-cast v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 413
    .local v3, "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZI)V

    .line 415
    .end local v1    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v3    # "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    :cond_68
    goto :goto_46

    .line 393
    :pswitch_69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 394
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    .line 395
    :try_start_70
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 396
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "session removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_80
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 399
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 401
    :cond_95
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 402
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 403
    :cond_a3
    monitor-exit v1

    .line 404
    goto :goto_e0

    .line 403
    :catchall_a5
    move-exception v2

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_70 .. :try_end_a7} :catchall_a5

    throw v2

    .line 390
    .end local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :pswitch_a8
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthResponse(Landroid/os/Message;)V

    .line 391
    goto :goto_e0

    .line 385
    :pswitch_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 386
    .restart local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 387
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    goto :goto_e0

    .line 380
    .end local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :pswitch_be
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 381
    .restart local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 382
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_e0

    .line 377
    .end local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :cond_d0
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStopRequest(Landroid/os/Message;)V

    .line 378
    goto :goto_e0

    .line 374
    :cond_d4
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthReStartRequest(Landroid/os/Message;)V

    .line 375
    goto :goto_e0

    .line 371
    :cond_d8
    invoke-direct {p0, p1, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    .line 372
    goto :goto_e0

    .line 368
    :cond_dc
    invoke-direct {p0, p1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    .line 369
    nop

    .line 419
    :cond_e0
    :goto_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0xa
        :pswitch_be
        :pswitch_ac
        :pswitch_a8
        :pswitch_69
        :pswitch_31
    .end packed-switch
.end method

.method private sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 6
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 354
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendIntentToReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v0

    .line 356
    .local v0, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 358
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getRequestPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 361
    return-void
.end method

.method private static stringToByte(Ljava/lang/String;)[B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 269
    .local v0, "strLen":I
    new-array v1, v0, [B

    .line 270
    .local v1, "byteStr":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 272
    return-object v1
.end method

.method private wirelessChargerConnected(I)V
    .registers 8
    .param p1, "attached"    # I

    .line 611
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 612
    .local v1, "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    if-eqz v2, :cond_43

    .line 613
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wireless Charger Connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    .line 616
    .local v2, "wirelessChargerAuthenticator":Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_3a

    .line 617
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 618
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(JZ)V

    goto :goto_43

    .line 620
    :cond_3a
    const/4 v5, 0x2

    if-ne p1, v5, :cond_43

    .line 621
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 622
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(JZ)V

    .line 625
    .end local v1    # "authenticator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v2    # "wirelessChargerAuthenticator":Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
    :cond_43
    :goto_43
    goto :goto_6

    .line 626
    :cond_44
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SAccessoryManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    return-void

    .line 648
    :cond_39
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 649
    .local v1, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 650
    .end local v1    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    goto :goto_3f

    .line 652
    :cond_4f
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 653
    :try_start_52
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 654
    .local v2, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 655
    .end local v2    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    goto :goto_5c

    .line 656
    :cond_6c
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_52 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 4
    .param p1, "whenNanos"    # J
    .param p3, "coverOpened"    # Z

    .line 587
    return-void
.end method

.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .line 543
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUnverifiedCoverAttachChanged whenNanos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, "SM-F900"

    if-nez p3, :cond_44

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 548
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExist()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 549
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "auth chip exists. will retry to check after TIME_OUT_DETACH_RETRY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 551
    return-void

    .line 553
    :cond_44
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz p3, :cond_5a

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    if-eqz v0, :cond_5a

    .line 554
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "F900, current auth state is true, so skip authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void

    .line 558
    :cond_5a
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 559
    .local v1, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v2, :cond_77

    .line 560
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 561
    .local v2, "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZI)V

    .line 563
    .end local v1    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v2    # "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    :cond_77
    goto :goto_60

    .line 564
    :cond_78
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 535
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 536
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 537
    .local v1, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V

    .line 538
    .end local v1    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    goto :goto_9

    .line 539
    :cond_19
    return-void
.end method
