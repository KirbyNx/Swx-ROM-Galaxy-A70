.class Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoSwitchSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 130
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$AutoSwitchSettingHelper$1(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 155
    const-string v0, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    const-string v1, "mReceiver.onReceive - BOND_STATE_CHANGED(BOND_NONE)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    new-instance v1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$100(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$200(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    .line 158
    return-void
.end method

.method public synthetic lambda$onReceive$1$AutoSwitchSettingHelper$1(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "autoSwitchDisabled":Z
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 150
    # getter for: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$400(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;->getRestoredDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 151
    const/4 v0, 0x0

    .line 153
    :cond_19
    if-eqz v0, :cond_23

    .line 154
    new-instance v1, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$u0_yEcvVkICDmWokbkSplvZshQY;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$u0_yEcvVkICDmWokbkSplvZshQY;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)V

    .line 160
    :cond_23
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 135
    return-void

    .line 139
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2c03c677

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_32

    const v3, -0x22e3d3cc

    if-eq v2, v3, :cond_28

    const v3, 0x7e2cc189

    if-eq v2, v3, :cond_1e

    :cond_1d
    goto :goto_3b

    :cond_1e
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    goto :goto_3b

    :cond_28
    const-string v2, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v1, v5

    goto :goto_3b

    :cond_32
    const-string v2, "com.samsung.android.intent.action.NOTIFY_SC_SYNC_BLUETOOTH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v1, v4

    :goto_3b
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_82

    const-string v3, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-eq v1, v5, :cond_51

    if-eq v1, v4, :cond_46

    goto :goto_9f

    .line 178
    :cond_46
    const-string v1, "mReceiver.onReceive - NOTIFY_SC_SYNC_BLUETOOTH"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->checkAutoSwitchEnabled()V
    invoke-static {v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$300(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    goto :goto_9f

    .line 164
    :cond_51
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 165
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_9f

    .line 166
    const-string v2, "mReceiver.onReceive - AUTO_SWITCH_MODE_CHANGED"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 168
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v2, "property":Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v3

    if-ne v3, v5, :cond_77

    .line 170
    iget-object v3, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    invoke-static {v3, v2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$000(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    goto :goto_7c

    .line 172
    :cond_77
    iget-object v3, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V
    invoke-static {v3, v2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$100(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 174
    :goto_7c
    iget-object v3, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    # invokes: Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V
    invoke-static {v3}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->access$200(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    .line 175
    .end local v2    # "property":Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    goto :goto_9f

    .line 141
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_82
    const/high16 v1, -0x80000000

    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "bondState":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_9f

    .line 143
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 144
    .local v2, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_97

    .line 145
    return-void

    .line 147
    :cond_97
    new-instance v3, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v3}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)V

    .line 182
    .end local v1    # "bondState":I
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_9f
    :goto_9f
    return-void
.end method
