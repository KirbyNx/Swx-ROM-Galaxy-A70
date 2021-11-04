.class public Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.super Ljava/lang/Object;
.source "AutoSwitchSettingHelper.java"


# static fields
.field private static final ACTION_NOTIFY_SC_SYNC_BLUETOOTH:Ljava/lang/String; = "com.samsung.android.intent.action.NOTIFY_SC_SYNC_BLUETOOTH"

.field public static final SEM_ACTION_AUTO_SWITCH_MODE_CHANGED:Ljava/lang/String; = "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_AutoSwitchSettingHelper"


# instance fields
.field private final mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoSwitchableDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsAutoSwitchModeEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "autoSwitchModeChangedConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
    .param p1, "x1"    # Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
    .param p1, "x1"    # Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 6
    .param p1, "property"    # Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", bt="

    const-string v2, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-eqz v0, :cond_37

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice - already exist name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 83
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDevice - (added) name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_66
    return-void
.end method

.method private checkAutoSwitchEnabled()V
    .registers 2

    .line 123
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$ksyOy1lfiL9Hzdd7DyDJyMB9mxA;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$ksyOy1lfiL9Hzdd7DyDJyMB9mxA;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private checkAutoSwitchEnabled(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAutoSwitchEnabled - deviceList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 99
    .local v1, "property":Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 100
    .local v2, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_35

    .line 101
    goto :goto_1e

    .line 103
    :cond_35
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    .line 104
    invoke-direct {p0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    goto :goto_43

    .line 106
    :cond_40
    invoke-direct {p0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 108
    .end local v1    # "property":Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_43
    goto :goto_1e

    .line 109
    :cond_44
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    .line 110
    return-void
.end method

.method private static getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .param p0, "bluetoothAddress"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 69
    return-object v0

    .line 71
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 72
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_f

    .line 73
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 75
    :cond_f
    return-object v0
.end method

.method private registerObserver()V
    .registers 4

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.samsung.android.intent.action.NOTIFY_SC_SYNC_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    .registers 4
    .param p1, "property"    # Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDevice - (removed) name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/Utils;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_36
    return-void
.end method

.method private setAutoSwitchModeEnabled()V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 115
    .local v0, "isAutoSwitchModeEnabled":Z
    :goto_b
    iget-boolean v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    if-eq v0, v1, :cond_34

    .line 116
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoSwitchModeEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchModeChangedConsumer:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 120
    :cond_34
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method


# virtual methods
.method public isAutoSwitchModeEnabled()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    return v0
.end method

.method public synthetic lambda$checkAutoSwitchEnabled$0$AutoSwitchSettingHelper(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "backupList"    # Ljava/util/ArrayList;

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$checkAutoSwitchEnabled$1$AutoSwitchSettingHelper()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;->retrieveBackupDevices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    .local v0, "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;>;"
    new-instance v1, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public start()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled()V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->registerObserver()V

    .line 42
    return-void
.end method

.method public stop()V
    .registers 2

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->unregisterObserver()V

    .line 47
    return-void
.end method
