.class public Lcom/android/server/display/WifiDisplayMcfManager;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SEM_NEARBY_SCANNING_CHANGED:Ljava/lang/String; = "com.samsung.android.nearbyscanning"

.field private static final AVAILABLE_SERVICE_MULTI_VIEW_TV_INITIATED:I = 0x10

.field private static final BLE_ADVERTISER_SERVICE_START:I = 0x1

.field private static final BLE_ADVERTISER_SERVICE_STOP:I = 0x2

.field private static final BLE_ADVERTISER_SERVICE_TIMEOUT:I = 0x7530

.field private static final BLE_NETWORK_CHECK_FIRST_TRY_INTERVAL:I = 0x64

.field private static final BLE_SCAN_START_RETRY_INTERVAL:I = 0x3e8

.field private static final MCF_BIND_RETRY_TIME:I = 0x1388

.field private static final MCF_MANUFACTURER_ID:I = 0x75

.field private static final MSG_HANDLE_MCF_MANAGER_STATUS:I = 0x8

.field private static final MSG_MCF_ADAPTER_RETRY_BIND_SERVICE:I = 0x5

.field private static final MSG_MCF_ADAPTER_SERVICE_CONNECTED:I = 0x2

.field private static final MSG_MCF_ADAPTER_SERVICE_DISCONNECTED:I = 0x3

.field private static final MSG_MCF_SCANNER_SCAN_RESULT:I = 0x4

.field private static final MSG_MCF_SERVICE_STATE_CHANGED:I = 0x1

.field private static final MSG_RETRY_START_SCAN_BLE_SCANNER:I = 0x6

.field private static final MSG_UNBIND_BLE_ADVERTISER_SERVICE:I = 0x7

.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.smartmirroring.ble.BleAdvertiserService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.smartmirroring"

.field private static final SETTINGS_SYSTEM_KEY_NEARBY_SCANNING:Ljava/lang/String; = "nearby_scanning_enabled"

.field private static final TAG:Ljava/lang/String;

.field private static final mScanFilterData:[B

.field private static final mScanFilterDataMask:[B


# instance fields
.field private final mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

.field private final mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

.field private mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mIsBounded:Z

.field private mIsIntentRegistered:Z

.field private mIsScanning:Z

.field private mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field private final mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field private mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field private final mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-class v0, Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    .line 47
    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    return-void

    nop

    :array_1a
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data

    nop

    :array_24
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$1;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    .line 349
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$2;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 360
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$3;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 385
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$4;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 403
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$5;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 91
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayMcfManager;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleRetryStartScanBleScanner()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 33
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayMcfManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;
    .param p1, "x1"    # Z

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfManagerStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayMcfManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayMcfManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayMcfManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isNearbyScanningOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayMcfManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfServiceStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayMcfManager;Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;
    .param p1, "x1"    # Lcom/samsung/android/mcf/McfAdapter;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceDisconnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterScannerScanResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    return-void
.end method

.method private bindBleAdvertiserService()V
    .registers 5

    .line 161
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez v0, :cond_31

    .line 162
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBleAdvertiserService, mIsBounded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "com.samsung.android.smartmirroring.ble.BleAdvertiserService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 166
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_31
    return-void
.end method

.method private bindMcfAdapter()V
    .registers 5

    .line 124
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isNearbyScanningOn()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isAirPlaneModeOn()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 125
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v1, "bindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 128
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez v0, :cond_33

    .line 129
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    invoke-static {v0, v2}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 130
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3d

    .line 135
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-eqz v0, :cond_3a

    .line 136
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 138
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    .line 141
    :cond_3d
    :goto_3d
    return-void
.end method

.method private handleMcfAdapterScannerScanResult()V
    .registers 5

    .line 298
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez v0, :cond_7

    .line 299
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindBleAdvertiserService()V

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    .line 303
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    return-void
.end method

.method private handleMcfAdapterServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 6
    .param p1, "mcfAdapter"    # Lcom/samsung/android/mcf/McfAdapter;

    .line 264
    if-eqz p1, :cond_4

    .line 265
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 268
    :cond_4
    :try_start_4
    const-string v0, ""

    .line 269
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v1, :cond_49

    .line 270
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v1, :cond_1a

    .line 271
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    const/16 v2, 0x26

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 274
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v1, :cond_35

    .line 275
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 276
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 277
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    goto :goto_5c

    .line 279
    :cond_31
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    goto :goto_5c

    .line 282
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_5c

    .line 285
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMcfAdapterServiceConnected mMcfAdapter null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 287
    :goto_5c
    sget-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_63

    .line 290
    nop

    .end local v0    # "logMessage":Ljava/lang/String;
    goto :goto_7b

    .line 288
    :catch_63
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMcfAdapterServiceConnected Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7b
    return-void
.end method

.method private handleMcfAdapterServiceDisconnected()V
    .registers 2

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfManagerStatus(Z)V

    .line 295
    return-void
.end method

.method private handleMcfManagerStatus(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 309
    if-eqz p1, :cond_6

    .line 310
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    goto :goto_c

    .line 312
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 313
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 315
    :goto_c
    return-void
.end method

.method private handleMcfServiceStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_28

    const/4 v1, 0x2

    if-ne v1, p1, :cond_28

    .line 252
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 253
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    goto :goto_28

    .line 256
    :cond_1a
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 258
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 261
    :cond_28
    :goto_28
    return-void
.end method

.method private handleRetryStartScanBleScanner()V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 238
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v0, :cond_b

    .line 239
    return-void

    .line 241
    :cond_b
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    goto :goto_21

    .line 244
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    :goto_21
    return-void
.end method

.method private isAirPlaneModeOn()Z
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method private isNearbyScanningOn()Z
    .registers 4

    .line 324
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nearby_scanning_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_13

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 326
    :catch_13
    move-exception v1

    .line 328
    return v0
.end method

.method private registerIntent()V
    .registers 4

    .line 106
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    if-nez v0, :cond_22

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.samsung.android.nearbyscanning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    .line 114
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_22
    return-void
.end method

.method private retryStartScanBleScanner()V
    .registers 5

    .line 228
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v0, :cond_15

    .line 229
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 230
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    :cond_15
    return-void
.end method

.method private stopScanBleScanner()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_f

    .line 181
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 185
    :cond_f
    return-void
.end method

.method private tryStartScanBleScanner()V
    .registers 12

    .line 188
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_b3

    .line 189
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 190
    if-eqz v0, :cond_ac

    .line 191
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    .line 192
    .local v0, "bleScanSettingsBuilder":Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v1

    .line 195
    .local v1, "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, "screenOnFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "screenOffFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->getRememberedInitiatedDevices()Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    .local v4, "rememberedInitiatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    .local v6, "device":Ljava/lang/String;
    sget-object v7, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tryStartScanBleScanner : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v7, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 204
    .local v7, "bleScanFilterBuilder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    const/16 v8, 0x75

    sget-object v9, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    sget-object v10, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 205
    invoke-virtual {v7, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 206
    invoke-virtual {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v8

    .line 208
    .local v8, "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v6    # "device":Ljava/lang/String;
    .end local v7    # "bleScanFilterBuilder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .end local v8    # "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_33

    .line 212
    :cond_72
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ab

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ab

    .line 213
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {v5, v2, v3, v1, v6}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 214
    sget-object v5, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tryStartScanBleScanner startScan, ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v5, :cond_ab

    .line 216
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 217
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    .line 221
    .end local v0    # "bleScanSettingsBuilder":Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .end local v1    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    .end local v2    # "screenOnFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    .end local v3    # "screenOffFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    .end local v4    # "rememberedInitiatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ab
    goto :goto_b3

    .line 222
    :cond_ac
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v1, "BleScanner is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_b3
    :goto_b3
    return-void
.end method

.method private unbindBleAdvertiserService()V
    .registers 5

    .line 169
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-eqz v0, :cond_1b

    .line 171
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 173
    goto :goto_12

    .line 172
    :catch_11
    move-exception v1

    .line 174
    :goto_12
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    .line 177
    :cond_1b
    return-void
.end method

.method private unbindMcfAdapter()V
    .registers 3

    .line 144
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 149
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_1a

    .line 150
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    .line 151
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 154
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_23

    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 156
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 158
    :cond_23
    return-void
.end method

.method private unregisterIntent()V
    .registers 3

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    if-eqz v0, :cond_e

    .line 118
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    .line 121
    :cond_e
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->registerIntent()V

    .line 96
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    .line 97
    return-void
.end method

.method public uninitialize()V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unregisterIntent()V

    .line 101
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 102
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    .line 103
    return-void
.end method
