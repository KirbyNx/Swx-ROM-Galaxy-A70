.class Lcom/android/server/input/MouseNKeyHidDevice;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/MouseNKeyHidDevice$Mouse;,
        Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;,
        Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;,
        Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;,
        Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    }
.end annotation


# static fields
.field static final ACTION_REMOTE_INPUT_DEVICE_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.input.REMOTE_INPUT_DEVICE_STATE_CHANGED"

.field static final ACTION_REMOTE_INPUT_READY_TO_CONNECT:Ljava/lang/String; = "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

.field private static final CONNECTED_DISCONNECTED_STATES:[I

.field private static final DEBUG:Z

.field private static final MESSAGE_CONNECT_DEVICE:I = 0xa

.field private static final MESSAGE_DEV_CONNECTED:I = 0x2

.field private static final MESSAGE_GET_REPORT_RECEIVED:I = 0x3

.field private static final MESSAGE_NEED_TO_INITIALIZING:I = 0x5

.field private static final MESSAGE_REGISTER_APP:I = 0x1

.field private static final MESSAGE_SEND_BROADCAST:I = 0x7

.field private static final MESSAGE_SEND_BROADCAST_TO_MCF:I = 0x9

.field private static final MESSAGE_SET_REPORT_RECEIVED:I = 0x4

.field private static final MESSAGE_SWITCH_REMOTE_BT:I = 0x6

.field private static final SHIP_BUILD:Z

.field private static final SPLIT_DELIMITER:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "MouseNKeyHidDevice"


# instance fields
.field private final ADD_EXISTED_DEVICE:I

.field private final ADD_NEW_DEVICE:I

.field private final FAIL_ADD:I

.field private final MAX_DEVICES_NUM:I

.field private final MAX_PAIRED_NUM:I

.field final innerLock:Ljava/lang/Object;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddIndex:I

.field private mAppRegistered:Z

.field private final mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFinishNewDevice:Z

.field private mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

.field private mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

.field private mInitialized:Z

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputReportCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/MouseNKeyHidDevice$ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

.field private final mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

.field private mNeedNoti:Z

.field private mNeedNotiTablet:Z

.field private mNeedToTurnOnBT:Z

.field private mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOutputReportCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/MouseNKeyHidDevice$ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

.field private mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPogoConnected:Z

.field private mProtocol:B

.field private mReadyToConnect:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterAfterRemove:Z

.field private mRetryNum:I

.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStatusInfo:Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

.field private mToLocalTablet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/MouseNKeyHidDevice;->SHIP_BUILD:Z

    .line 85
    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/input/MouseNKeyHidDevice;->DEBUG:Z

    .line 965
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/input/MouseNKeyHidDevice;->CONNECTED_DISCONNECTED_STATES:[I

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ims"    # Lcom/android/server/input/InputManagerService;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    .line 106
    iput v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    .line 108
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 109
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRegisterAfterRemove:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedToTurnOnBT:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNotiTablet:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z

    .line 122
    iput v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I

    .line 125
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z

    .line 127
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->MAX_DEVICES_NUM:I

    .line 128
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->MAX_PAIRED_NUM:I

    .line 130
    new-array v3, v2, [Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 131
    iput v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    .line 133
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->ADD_NEW_DEVICE:I

    .line 134
    iput v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->ADD_EXISTED_DEVICE:I

    .line 135
    iput v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->FAIL_ADD:I

    .line 137
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    .line 140
    new-instance v2, Lcom/android/server/input/MouseNKeyHidDevice$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/MouseNKeyHidDevice$1;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    iput-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mExecutor:Ljava/util/concurrent/Executor;

    .line 147
    iput-byte v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mProtocol:B

    .line 149
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    .line 150
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    .line 152
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;

    .line 154
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;

    .line 921
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$2;

    invoke-direct {v1, p0}, Lcom/android/server/input/MouseNKeyHidDevice$2;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 939
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$3;

    invoke-direct {v1, p0}, Lcom/android/server/input/MouseNKeyHidDevice$3;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 970
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$4;

    invoke-direct {v1, p0}, Lcom/android/server/input/MouseNKeyHidDevice$4;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 253
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    .line 254
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    .line 255
    iput-object p2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 257
    const-string v1, "MouseNKeyHidDevice"

    const-string v3, "MouseNKeyHidDevice()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 260
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mStatusInfo:Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    .line 262
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_a5

    .line 263
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 266
    :cond_a5
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/input/MouseNKeyHidDevice;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/input/MouseNKeyHidDevice;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->addPairedDevicesListLocked(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 81
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/input/MouseNKeyHidDevice;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/input/MouseNKeyHidDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Mouse;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/input/MouseNKeyHidDevice;B)B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # B

    .line 81
    iput-byte p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mProtocol:B

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/input/MouseNKeyHidDevice;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # B
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/input/MouseNKeyHidDevice;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I

    return p1
.end method

.method static synthetic access$2808(Lcom/android/server/input/MouseNKeyHidDevice;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/input/MouseNKeyHidDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    invoke-direct {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->initializing()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidDevice;

    .line 81
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 81
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/InputManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 81
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method private addPairedDevicesListLocked(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 11
    .param p1, "Bdevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, "state":I
    const-string v1, ""

    .line 763
    .local v1, "pairedDeviceNameList":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    const/4 v3, 0x4

    const-string v4, "MouseNKeyHidDevice"

    if-ge v2, v3, :cond_64

    .line 764
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v2

    .line 765
    .local v3, "localDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v5, ""

    .line 766
    .local v5, "pairedDeviceName":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 767
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    .line 769
    :cond_15
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1a

    .line 770
    move-object v1, v5

    goto :goto_2e

    .line 772
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    :goto_2e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already exist device slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] requested_index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v0, 0x1

    .line 763
    .end local v3    # "localDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "pairedDeviceName":Ljava/lang/String;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 781
    .end local v2    # "i":I
    :cond_64
    iput v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    .line 782
    if-eqz v0, :cond_69

    .line 783
    return v0

    .line 786
    :cond_69
    const/4 v2, 0x3

    if-gt p2, v2, :cond_cb

    if-nez p2, :cond_6f

    goto :goto_cb

    .line 791
    :cond_6f
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, p2

    .line 792
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_96

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not empty slot "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_96
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object p1, v3, p2

    .line 797
    const/4 v0, 0x2

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add paired device list "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 802
    return v0

    .line 787
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_cb
    :goto_cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot add list, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return v0
.end method

.method private disconnectBT(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 695
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    .line 697
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 698
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->clear(Z)V

    .line 699
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    invoke-virtual {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->clear(Z)V

    .line 701
    :cond_1c
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 703
    :cond_21
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "bDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 721
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 722
    return v0

    .line 724
    :cond_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_21

    .line 725
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    .line 726
    .local v2, "localDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 727
    const/4 v0, 0x1

    return v0

    .line 724
    .end local v2    # "localDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 730
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method private findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;
    .registers 12
    .param p1, "BdeviceToString"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 734
    const-string v0, ""

    .line 736
    .local v0, "pairedDeviceName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, " "

    const-string/jumbo v3, "wrong index="

    const-string v4, "MouseNKeyHidDevice"

    const/4 v5, 0x3

    if-gt p2, v5, :cond_8e

    if-nez p2, :cond_11

    goto/16 :goto_8e

    .line 740
    :cond_11
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, p2

    .line 741
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_40

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find device slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-object v5

    .line 747
    :cond_40
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_41
    const/4 v7, 0x4

    if-ge v6, v7, :cond_72

    .line 748
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v7, v7, v6

    .line 749
    .local v7, "localDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_6f

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but find device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-object v7

    .line 747
    .end local v7    # "localDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 755
    .end local v6    # "i":I
    :cond_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not find device index="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-object v1

    .line 737
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_8e
    :goto_8e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-object v1
.end method

.method private initializing()V
    .registers 8

    .line 228
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wireless_keyboard_setting_repository"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "parsingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 231
    return-void

    .line 233
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MouseNKeyHidDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "savedData":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_40

    .line 238
    return-void

    .line 240
    :cond_40
    aget-object v2, v1, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "hostList":[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_49
    const/4 v4, 0x4

    if-ge v3, v4, :cond_71

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_71

    .line 243
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    .line 244
    .local v4, "host":Ljava/lang/String;
    const-string v5, ""

    if-eq v4, v5, :cond_69

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_69

    .line 247
    :cond_60
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4}, Lcom/android/server/input/MouseNKeyHidDevice;->isBonedDeviceFromString(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    aput-object v6, v5, v3

    goto :goto_6e

    .line 245
    :cond_69
    :goto_69
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 242
    .end local v4    # "host":Ljava/lang/String;
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 250
    .end local v3    # "i":I
    :cond_71
    return-void
.end method

.method private isBonedDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 899
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 900
    .local v1, "bd":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 901
    const/4 v0, 0x1

    return v0

    .line 903
    .end local v1    # "bd":Landroid/bluetooth/BluetoothDevice;
    :cond_1e
    goto :goto_a

    .line 904
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private isBonedDeviceFromString(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 7
    .param p1, "BdeviceToString"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MouseNKeyHidDevice"

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 218
    .local v1, "bd":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bonded bt device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 220
    return-object v1

    .line 222
    .end local v1    # "bd":Landroid/bluetooth/BluetoothDevice;
    :cond_3b
    goto :goto_a

    .line 223
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not exist bonded device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerApp()V
    .registers 6

    .line 658
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_3
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApp(): mAppRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_21

    const-string v3, "NULL"

    goto :goto_23

    :cond_21
    const-string v3, "OK"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_33

    .line 663
    monitor-exit v0

    return-void

    .line 665
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_66

    .line 669
    :cond_40
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x13

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-nez v1, :cond_57

    .line 671
    const-string v1, "MouseNKeyHidDevice"

    const-string v2, "Cannot obtain profile proxy"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    monitor-exit v0

    return-void

    .line 675
    :cond_57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    .line 676
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 678
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 679
    monitor-exit v0

    .line 680
    return-void

    .line 666
    :cond_66
    :goto_66
    monitor-exit v0

    return-void

    .line 679
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private removePairedDevicesListLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "BdeviceToString"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 806
    const-string v0, "MouseNKeyHidDevice"

    const/4 v1, 0x3

    if-gt p2, v1, :cond_c9

    if-nez p2, :cond_9

    goto/16 :goto_c9

    .line 810
    :cond_9
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, p2

    .line 811
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 812
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 813
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v3, p2

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requested_index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 816
    return-void

    .line 820
    :cond_3f
    const-string v3, ""

    .line 821
    .local v3, "pairedDeviceNameList":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_42
    const/4 v5, 0x4

    if-ge v4, v5, :cond_9f

    .line 822
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v4

    .line 823
    .local v5, "localDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v6, ""

    .line 824
    .local v6, "pairedDeviceName":Ljava/lang/String;
    if-eqz v5, :cond_51

    .line 825
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    .line 827
    :cond_51
    const/4 v7, 0x1

    if-ne v4, v7, :cond_56

    .line 828
    move-object v3, v6

    goto :goto_6a

    .line 830
    :cond_56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 833
    :goto_6a
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exist other slot["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] requested_index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v4

    .line 837
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 838
    return-void

    .line 821
    .end local v5    # "localDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "pairedDeviceName":Ljava/lang/String;
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 842
    .end local v4    # "i":I
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to remove "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 845
    return-void

    .line 807
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "pairedDeviceNameList":Ljava/lang/String;
    :cond_c9
    :goto_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot add list, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method private storeReportLocked(B[BZ)V
    .registers 7
    .param p1, "reportId"    # B
    .param p2, "data"    # [B
    .param p3, "inputReport"    # Z

    .line 1422
    if-eqz p3, :cond_b

    .line 1423
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    .local v0, "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    goto :goto_13

    .line 1425
    .end local v0    # "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    :cond_b
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    .line 1428
    .restart local v0    # "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    :goto_13
    if-nez v0, :cond_29

    .line 1429
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    move-object v0, v1

    .line 1430
    if-eqz p3, :cond_24

    .line 1431
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_29

    .line 1433
    :cond_24
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1437
    :cond_29
    :goto_29
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;->data:[B

    .line 1438
    return-void
.end method

.method private unregisterApp()V
    .registers 5

    .line 640
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp(): mAppRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    if-nez v1, :cond_22

    .line 644
    monitor-exit v0

    return-void

    .line 647
    :cond_22
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_34

    .line 648
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->unregisterApp()Z

    .line 649
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 652
    :cond_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    .line 653
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 654
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method


# virtual methods
.method public addDevice(I)Z
    .registers 7
    .param p1, "index"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gt p1, v1, :cond_71

    if-nez p1, :cond_a

    goto :goto_71

    .line 307
    :cond_a
    :try_start_a
    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    .line 308
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3e

    .line 309
    const-string v1, "MouseNKeyHidDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not empty slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 311
    monitor-exit v0

    return v2

    .line 313
    :cond_3e
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 314
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_54

    .line 315
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 318
    :cond_54
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    aput-object v3, v1, p1

    .line 320
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 321
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageMCF()V

    goto :goto_6f

    .line 325
    :cond_68
    const-string v1, "MouseNKeyHidDevice"

    const-string v3, "Unregistered."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_6f
    monitor-exit v0

    return v2

    .line 304
    :cond_71
    :goto_71
    const-string v1, "MouseNKeyHidDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v0

    return v2

    .line 328
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_a .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method public changeHIDDevice(Ljava/lang/String;I)V
    .registers 9
    .param p1, "deviceToString"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 586
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    move v2, p2

    .line 588
    .local v2, "deviceIndex":I
    if-eqz v1, :cond_5b

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_f

    goto :goto_5b

    .line 594
    :cond_f
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 595
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v3, :cond_25

    .line 596
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 597
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 600
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->removePairedDevicesListLocked(Ljava/lang/String;I)V

    .line 601
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    .line 602
    iput p2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I

    .line 603
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 604
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageMCF()V

    goto :goto_59

    .line 606
    :cond_34
    const-string v3, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "warning: request device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " connected device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 607
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceIndex":I
    :goto_59
    monitor-exit v0

    .line 610
    return-void

    .line 589
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "deviceIndex":I
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 590
    const-string v3, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not find device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_7a

    const-string v5, ""

    goto :goto_80

    :cond_7a
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    monitor-exit v0

    return-void

    .line 609
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceIndex":I
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public getDeviceListSize()I
    .registers 5

    .line 707
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    const/4 v1, 0x0

    .line 710
    .local v1, "numPairedDevices":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_13

    .line 711
    :try_start_8
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v2

    .line 712
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_10

    .line 713
    add-int/lit8 v1, v1, 0x1

    .line 710
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 716
    .end local v2    # "i":I
    :cond_13
    monitor-exit v0

    return v1

    .line 717
    .end local v1    # "numPairedDevices":I
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getFirstEmptySlot()I
    .registers 4

    .line 683
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_12

    .line 685
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    .line 686
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_f

    .line 687
    monitor-exit v0

    return v1

    .line 684
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 690
    .end local v1    # "i":I
    :cond_12
    monitor-exit v0

    return v2

    .line 691
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isBluetoothOn()Z
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_d

    .line 525
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 527
    :cond_d
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 528
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isConnected()Z
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 534
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isRegistered()Z
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    monitor-exit v0

    return v1

    .line 519
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isToLocalTablet()Z
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    monitor-exit v0

    return v1

    .line 421
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public notifyKeyboardAciton(II)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "scancode"    # I

    .line 873
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v1, :cond_9

    .line 875
    monitor-exit v0

    return-void

    .line 878
    :cond_9
    invoke-static {p2}, Lcom/android/server/input/HidKeycodes;->convertScancodeToHidKeycode(I)B

    move-result v1

    .line 880
    .local v1, "hidKeycode":B
    const/16 v2, -0x1f

    const/16 v3, 0x2c

    const/16 v4, 0x7a

    if-nez p1, :cond_28

    .line 881
    if-ne p2, v4, :cond_22

    .line 882
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v4, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyDownLocked(B)V

    .line 883
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v2, v3}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyDownLocked(B)V

    goto :goto_3a

    .line 885
    :cond_22
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v2, v1}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyDownLocked(B)V

    goto :goto_3a

    .line 888
    :cond_28
    if-ne p2, v4, :cond_35

    .line 889
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v4, v3}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyUpLocked(B)V

    .line 890
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v3, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyUpLocked(B)V

    goto :goto_3a

    .line 892
    :cond_35
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    invoke-virtual {v2, v1}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->keyUpLocked(B)V

    .line 895
    .end local v1    # "hidKeycode":B
    :goto_3a
    monitor-exit v0

    .line 896
    return-void

    .line 895
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public notifyMouseAciton(IFFI)V
    .registers 9
    .param p1, "action"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "whichbutton"    # I

    .line 849
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v1, :cond_9

    .line 851
    monitor-exit v0

    return-void

    .line 854
    :cond_9
    if-eqz p1, :cond_32

    const/4 v1, 0x1

    if-eq p1, v1, :cond_28

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    const/16 v1, 0x8

    if-eq p1, v1, :cond_16

    goto :goto_3c

    .line 867
    :cond_16
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    float-to-int v2, p3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mouseScrollLocked(B)V

    goto :goto_3c

    .line 856
    :cond_1e
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    float-to-int v2, p2

    int-to-byte v2, v2

    float-to-int v3, p3

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mouseMoveLocked(BB)V

    .line 857
    goto :goto_3c

    .line 864
    :cond_28
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    float-to-int v2, p2

    int-to-byte v2, v2

    float-to-int v3, p3

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mouseButtonUpLocked(BBI)V

    .line 865
    goto :goto_3c

    .line 860
    :cond_32
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    float-to-int v2, p2

    int-to-byte v2, v2

    float-to-int v3, p3

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mouseButtonDownLocked(BBI)V

    .line 861
    nop

    .line 869
    :goto_3c
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public refreshPairedList()V
    .registers 7

    .line 908
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3e

    .line 910
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    .line 911
    .local v2, "localDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_3b

    invoke-direct {p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->isBonedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 912
    const-string v3, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not bonded device any more : slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 912
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 909
    .end local v2    # "localDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 917
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 918
    monitor-exit v0

    .line 919
    return-void

    .line 918
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public removeHIDDevice()V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->unregisterApp()V

    .line 636
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public removeHIDDevice(Ljava/lang/String;I)V
    .registers 9
    .param p1, "deviceToString"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 613
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 615
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    move v2, p2

    .line 617
    .local v2, "deviceIndex":I
    if-nez v1, :cond_26

    .line 618
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 619
    const-string v3, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not find device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v0

    return-void

    .line 623
    :cond_26
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v3, :cond_3e

    .line 624
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 625
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 627
    :cond_3b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 629
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->removePairedDevicesListLocked(Ljava/lang/String;I)V

    .line 630
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceIndex":I
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 290
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 291
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 292
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    .end local v0    # "msg":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method public sendMessageMCF()V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method

.method public sendMessageStatus()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method public sendReadyToConnectIntent()V
    .registers 10

    .line 425
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ""

    .line 428
    .local v2, "pairedDeviceNameList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 430
    .local v3, "numPairedDevices":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_e
    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3d

    .line 431
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v4

    .line 432
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v7, ""

    .line 433
    .local v7, "pairedDeviceName":Ljava/lang/String;
    if-eqz v5, :cond_21

    .line 434
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 435
    add-int/lit8 v3, v3, 0x1

    .line 437
    :cond_21
    if-ne v4, v6, :cond_25

    .line 438
    move-object v2, v7

    goto :goto_3a

    .line 440
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 430
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "pairedDeviceName":Ljava/lang/String;
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 444
    .end local v4    # "i":I
    :cond_3d
    iget-boolean v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    const/4 v5, 0x0

    if-nez v4, :cond_45

    .line 445
    iput-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    goto :goto_4d

    .line 446
    :cond_45
    const/4 v4, 0x3

    if-lt v3, v4, :cond_4b

    .line 447
    iput-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    goto :goto_4d

    .line 449
    :cond_4b
    iput-boolean v6, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    .line 452
    :goto_4d
    const-string/jumbo v4, "ready"

    iget-boolean v6, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const-string/jumbo v4, "hostlist"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v4, "finishNewDevice"

    iget-boolean v6, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const/high16 v4, 0x1000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    const-string v4, "MouseNKeyHidDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReadyToConnect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mReadyToConnect:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mFinishNewDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z

    .line 461
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pairedDeviceNameList":Ljava/lang/String;
    .end local v3    # "numPairedDevices":I
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public sendWirelessKeyboardShareStatus()V
    .registers 12

    .line 465
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    new-instance v1, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    .line 467
    .local v1, "tmpInfo":Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;
    const-string v2, ""

    .line 469
    .local v2, "pairedDeviceNameList":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_c
    const/4 v4, 0x4

    const/4 v10, 0x1

    if-ge v3, v4, :cond_39

    .line 470
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v4, v4, v3

    .line 471
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, ""

    .line 472
    .local v5, "pairedDeviceName":Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 473
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 475
    :cond_1d
    if-ne v3, v10, :cond_21

    .line 476
    move-object v2, v5

    goto :goto_36

    .line 478
    :cond_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 469
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "pairedDeviceName":Ljava/lang/String;
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 482
    .end local v3    # "i":I
    :cond_39
    iget v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 483
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->isToLocalTablet()Z

    move-result v8

    iget-boolean v9, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    .line 482
    move-object v3, v1

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->setInfo(ILandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ZZ)V

    .line 485
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mStatusInfo:Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedToTurnOnBT:Z

    if-nez v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    if-nez v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNotiTablet:Z

    if-eqz v3, :cond_123

    .line 486
    :cond_5e
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.input.REMOTE_INPUT_DEVICE_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "connected"

    iget v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move v10, v7

    :goto_6f
    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string/jumbo v4, "host"

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_7c

    const-string v5, ""

    goto :goto_82

    :cond_7c
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_82
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v4, "hostlist"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v4, "mode"

    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->isToLocalTablet()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    const-string/jumbo v4, "registered"

    iget-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    const-string/jumbo v4, "needToTurnOnBT"

    iget-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedToTurnOnBT:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const-string/jumbo v4, "needNoti"

    iget-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    const-string/jumbo v4, "needNotiTablet"

    iget-boolean v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNotiTablet:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    const-string v4, "focusedDevice"

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_be

    const-string v5, ""

    goto :goto_c4

    :cond_be
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c4
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 502
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mStatusInfo:Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e0

    .line 503
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mStatusInfo:Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    invoke-virtual {v4, v1}, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->setInfo(Ljava/lang/Object;)V

    .line 505
    :cond_e0
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_e7

    const-string v4, ""

    goto :goto_ed

    :cond_e7
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "pluggedDevice":Ljava/lang/String;
    :goto_ed
    const-string v5, "MouseNKeyHidDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " p = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Noti = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iput-boolean v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedToTurnOnBT:Z

    .line 509
    iput-boolean v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    .line 510
    iput-boolean v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNotiTablet:Z

    .line 511
    const-string v5, "MouseNKeyHidDevice"

    const-string/jumbo v6, "sendWirelessKeyboardShareStatus"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v1    # "tmpInfo":Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;
    .end local v2    # "pairedDeviceNameList":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pluggedDevice":Ljava/lang/String;
    :cond_123
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_125
    move-exception v1

    monitor-exit v0
    :try_end_127
    .catchall {:try_start_3 .. :try_end_127} :catchall_125

    throw v1
.end method

.method public setPogoConnected(Z)V
    .registers 6
    .param p1, "status"    # Z

    .line 277
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    if-eq v1, p1, :cond_22

    .line 279
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    .line 280
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPogoConnected mPogoConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_22
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setSwitchDevice(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "deviceToString"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 332
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->findBluetoothDeviceFromString(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 334
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    move v4, v2

    .line 336
    .local v4, "toTablet":Z
    :goto_e
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_24

    .line 337
    const-string v3, "MouseNKeyHidDevice"

    const-string/jumbo v5, "setSwitchDevice need to turn on bt."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v0

    return v2

    .line 341
    :cond_24
    if-nez v1, :cond_44

    if-nez v4, :cond_44

    .line 342
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 343
    const-string v3, "MouseNKeyHidDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not find device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    return v2

    .line 347
    :cond_44
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_4c

    const-string/jumbo v5, "null"

    goto :goto_52

    :cond_4c
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "prevDeviceName":Ljava/lang/String;
    :goto_52
    if-nez v1, :cond_58

    const-string/jumbo v6, "null"

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "newDeviceName":Ljava/lang/String;
    :goto_5c
    const-string v7, "MouseNKeyHidDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSwitchDevice : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez v4, :cond_a7

    .line 351
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_a7

    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 352
    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 353
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_a0

    move v2, v3

    :cond_a0
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 355
    monitor-exit v0

    return v3

    .line 359
    :cond_a7
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v7, :cond_c1

    .line 360
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_bc

    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v7

    if-ne v7, v3, :cond_bc

    .line 361
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v7}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 363
    :cond_bc
    if-nez v4, :cond_c1

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 367
    :cond_c1
    if-nez v4, :cond_c5

    .line 368
    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 370
    :cond_c5
    iget-object v7, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_ca

    move v2, v3

    :cond_ca
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 373
    monitor-exit v0

    return v3

    .line 374
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "toTablet":Z
    .end local v5    # "prevDeviceName":Ljava/lang/String;
    .end local v6    # "newDeviceName":Ljava/lang/String;
    :catchall_d1
    move-exception v1

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_3 .. :try_end_d3} :catchall_d1

    throw v1
.end method

.method public setToLocalTablet(Z)Z
    .registers 8
    .param p1, "localTablet"    # Z

    .line 378
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    if-ne v1, p1, :cond_2d

    .line 380
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not changed remote device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "local tablet"

    goto :goto_1f

    :cond_1c
    const-string/jumbo v3, "remote device"

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    monitor-exit v0

    return v1

    .line 384
    :cond_2d
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b2

    :cond_39
    if-nez p1, :cond_b2

    .line 385
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "last connected device is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_50

    const-string/jumbo v3, "null."

    goto :goto_67

    :cond_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". but not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v1

    if-eqz v1, :cond_ad

    .line 388
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_78
    const/4 v2, 0x4

    if-ge v1, v2, :cond_ac

    .line 389
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v2, v2, v1

    .line 390
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_a9

    .line 391
    iput-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 392
    const-string v3, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "last connected device must be slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    goto :goto_ac

    .line 388
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .end local v1    # "i":I
    :cond_ac
    :goto_ac
    goto :goto_b2

    .line 397
    :cond_ad
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    .line 398
    monitor-exit v0

    return v1

    .line 401
    :cond_b2
    :goto_b2
    if-eqz p1, :cond_b6

    .line 402
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    .line 404
    :cond_b6
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_d1

    .line 405
    if-nez p1, :cond_c6

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_c6

    .line 406
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_d1

    .line 407
    :cond_c6
    if-eqz p1, :cond_d1

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_d1

    .line 408
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 412
    :cond_d1
    :goto_d1
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try switch remote bt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_e4

    const-string/jumbo v3, "local tablet"

    goto :goto_e7

    :cond_e4
    const-string/jumbo v3, "remote device"

    :goto_e7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_f2

    const-string/jumbo v3, "null"

    goto :goto_f8

    :cond_f2
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z

    monitor-exit v0

    return v1

    .line 415
    :catchall_106
    move-exception v1

    monitor-exit v0
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_106

    throw v1
.end method

.method public startHIDDevice()Z
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    if-nez v1, :cond_23

    .line 560
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHIDDevice mPogoConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mPogoConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 564
    :cond_23
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2d

    .line 565
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 568
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->registerApp()V

    .line 569
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHIDDevice mAppRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    monitor-exit v0

    return v1

    .line 571
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public startHIDDeviceByKey()Z
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    .line 540
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v3, "startHIDDeviceByKey need to turn on bt."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedToTurnOnBT:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 543
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 545
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v1

    if-nez v1, :cond_36

    .line 546
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNoti:Z

    .line 547
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageMCF()V

    .line 549
    monitor-exit v0

    return v2

    .line 550
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->getDeviceListSize()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_45

    .line 551
    iput-boolean v2, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mNeedNotiTablet:Z

    .line 553
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4b

    .line 554
    invoke-virtual {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->startHIDDevice()Z

    move-result v0

    return v0

    .line 553
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public stopHIDDevice()Z
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/input/MouseNKeyHidDevice;->unregisterApp()V

    .line 578
    const-string v1, "MouseNKeyHidDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopHIDDevice mAppRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-boolean v1, p0, Lcom/android/server/input/MouseNKeyHidDevice;->mAppRegistered:Z

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    monitor-exit v0

    return v1

    .line 580
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
