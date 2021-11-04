.class Lcom/android/server/input/MouseNKeyHidDevice$4;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/MouseNKeyHidDevice;

    .line 970
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppStatusChanged: pluggedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const/4 v1, 0x0

    if-nez p1, :cond_10

    move-object v2, v1

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registered="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    const-string v2, "MouseNKeyHidDevice"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    if-eqz p2, :cond_3e

    .line 978
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_53

    .line 980
    :cond_3e
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$802(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 981
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/InputManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->setToLocalTablet(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 983
    :goto_53
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 984
    monitor-exit v0

    .line 985
    return-void

    .line 984
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectionStateChanged: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const/4 v1, 0x0

    if-nez p1, :cond_10

    move-object v2, v1

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    const-string v2, "MouseNKeyHidDevice"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    if-nez p1, :cond_34

    .line 993
    :try_start_2f
    monitor-exit v0

    return-void

    .line 1042
    :catchall_31
    move-exception v1

    goto/16 :goto_131

    .line 995
    :cond_34
    const/4 v2, 0x0

    .line 996
    .local v2, "successAdd":I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_83

    .line 997
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I
    invoke-static {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1000(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4c

    .line 998
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v5}, Lcom/android/server/input/MouseNKeyHidDevice;->getFirstEmptySlot()I

    move-result v5

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I
    invoke-static {v4, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1002(Lcom/android/server/input/MouseNKeyHidDevice;I)I

    .line 1000
    :cond_4c
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mAddIndex:I
    invoke-static {v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1000(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v5

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->addPairedDevicesListLocked(Landroid/bluetooth/BluetoothDevice;I)I
    invoke-static {v4, p1, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1100(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    move v2, v4

    .line 1001
    if-nez v2, :cond_83

    .line 1002
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1200(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)V

    .line 1003
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 1004
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 1005
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1300(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1400(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1006
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1300(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 1008
    :cond_81
    monitor-exit v0

    return-void

    .line 1012
    :cond_83
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v4, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1502(Lcom/android/server/input/MouseNKeyHidDevice;I)I

    .line 1014
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v3, :cond_f0

    .line 1015
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1016
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 1017
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$802(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1018
    const-string v1, "MouseNKeyHidDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPluggedDevice is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_c5
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1302(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1021
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z
    invoke-static {v1, v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1602(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z

    .line 1022
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/InputManagerService;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z
    invoke-static {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1600(Lcom/android/server/input/MouseNKeyHidDevice;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 1023
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 1024
    if-ne v2, v3, :cond_12f

    .line 1025
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mFinishNewDevice:Z
    invoke-static {v1, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1702(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z

    .line 1026
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageMCF()V

    goto :goto_12f

    .line 1029
    :cond_f0
    if-nez p2, :cond_12a

    .line 1030
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1600(Lcom/android/server/input/MouseNKeyHidDevice;)Z

    move-result v3

    if-eq v3, v5, :cond_10c

    .line 1031
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1800(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->clear(Z)V

    .line 1032
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->clear(Z)V

    .line 1034
    :cond_10c
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z
    invoke-static {v3, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1602(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z

    .line 1035
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$802(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1036
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/InputManagerService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mToLocalTablet:Z
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1600(Lcom/android/server/input/MouseNKeyHidDevice;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 1037
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 1040
    :cond_12a
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mProtocol:B
    invoke-static {v1, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2002(Lcom/android/server/input/MouseNKeyHidDevice;B)B

    .line 1042
    .end local v2    # "successAdd":I
    :cond_12f
    :goto_12f
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :goto_131
    monitor-exit v0
    :try_end_132
    .catchall {:try_start_2f .. :try_end_132} :catchall_31

    throw v1
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 11
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 1072
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_13

    .line 1073
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8e

    .line 1074
    :cond_13
    const-string v2, "MouseNKeyHidDevice"

    const/4 v3, 0x2

    if-ne p2, v3, :cond_70

    .line 1075
    if-eq p3, v1, :cond_39

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetReport(), output report for invalid id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_8e

    .line 1079
    :cond_39
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2100(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    .line 1080
    .local v0, "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    if-nez v0, :cond_64

    .line 1083
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 1084
    .local v4, "buffer":[B
    const-string/jumbo v5, "get_report id for keyboard"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_52
    if-ge v2, v1, :cond_5a

    .line 1086
    const/4 v5, 0x0

    aput-byte v5, v4, v2

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1088
    .end local v2    # "i":I
    :cond_5a
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    invoke-virtual {v1, p1, v3, p3, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 1089
    .end local v4    # "buffer":[B
    goto :goto_6f

    .line 1090
    :cond_64
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;->data:[B

    invoke-virtual {v1, p1, v3, p3, v2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 1092
    .end local v0    # "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    :goto_6f
    goto :goto_8e

    .line 1094
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetReport(), unsupported report type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 1098
    :goto_8e
    return-void
.end method

.method public onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 6
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "intr data: reportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MouseNKeyHidDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 5
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "protocol set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MouseNKeyHidDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mProtocol:B
    invoke-static {v0, p2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2002(Lcom/android/server/input/MouseNKeyHidDevice;B)B

    .line 1060
    return-void
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 9
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 1102
    const-string v0, "MouseNKeyHidDevice"

    const/4 v1, 0x2

    if-eq p2, v1, :cond_25

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetReport(), unsupported report type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_57

    .line 1107
    :cond_25
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v2, :cond_45

    .line 1108
    if-ne p3, v1, :cond_3b

    .line 1109
    const-string/jumbo v1, "onSetReport(), mouse report id, sending successful handshake for set report"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 1111
    return-void

    .line 1113
    :cond_3b
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_57

    .line 1115
    :cond_45
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    move-result-object v0

    const/4 v1, 0x4

    .line 1116
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1115
    invoke-virtual {v0, v1, p3, v3, v2}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1119
    :goto_57
    return-void
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 1064
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_5
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$4;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$802(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1066
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "onVirtualCableUnplug mPluggedDevice is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method
