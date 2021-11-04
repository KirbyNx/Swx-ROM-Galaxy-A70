.class final Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
.super Landroid/os/Handler;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MouseNKeyHidDevicerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1127
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    .line 1128
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    .line 1133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_298

    :pswitch_c
    goto/16 :goto_296

    .line 1224
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v5, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1225
    :try_start_13
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v6, 0x3

    if-eqz v0, :cond_5a

    .line 1226
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # operator++ for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2808(Lcom/android/server/input/MouseNKeyHidDevice;)I

    .line 1227
    const-string v0, "MouseNKeyHidDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retry connect "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v7}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    if-ge v0, v6, :cond_53

    .line 1229
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2900(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_e0

    .line 1231
    :cond_53
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0, v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2802(Lcom/android/server/input/MouseNKeyHidDevice;I)I

    goto/16 :goto_e0

    .line 1233
    :cond_5a
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2900(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    if-ge v0, v6, :cond_b6

    .line 1234
    const-string v0, "MouseNKeyHidDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will connect "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2900(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v6}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2900(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1236
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0, v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2802(Lcom/android/server/input/MouseNKeyHidDevice;I)I

    goto :goto_e0

    .line 1237
    :cond_b6
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    if-le v0, v3, :cond_e0

    .line 1238
    const-string v0, "MouseNKeyHidDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry count : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v6}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2800(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mRetryNum:I
    invoke-static {v0, v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2802(Lcom/android/server/input/MouseNKeyHidDevice;I)I

    .line 1241
    :cond_e0
    :goto_e0
    monitor-exit v5

    goto/16 :goto_296

    :catchall_e3
    move-exception v0

    monitor-exit v5
    :try_end_e5
    .catchall {:try_start_13 .. :try_end_e5} :catchall_e3

    throw v0

    .line 1221
    :pswitch_e6
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendReadyToConnectIntent()V

    .line 1222
    goto/16 :goto_296

    .line 1210
    :pswitch_ed
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_f2

    move v4, v5

    :cond_f2
    move v0, v4

    .line 1211
    .local v0, "isLocalTablet":Z
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputManager:Lcom/android/server/input/InputManagerService;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/InputManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 1213
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_116

    .line 1214
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mKeyboard:Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1800(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->clear(Z)V

    .line 1215
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mMouse:Lcom/android/server/input/MouseNKeyHidDevice$Mouse;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1900(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$Mouse;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->clear(Z)V

    .line 1218
    .end local v0    # "isLocalTablet":Z
    :cond_116
    :pswitch_116
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->sendWirelessKeyboardShareStatus()V

    .line 1219
    goto/16 :goto_296

    .line 1207
    :pswitch_11d
    const-string v0, "MouseNKeyHidDevice"

    const-string v3, "MESSAGE_NEED_TO_INITIALIZING"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    goto/16 :goto_296

    .line 1199
    :pswitch_126
    iget v0, v2, Landroid/os/Message;->arg1:I

    int-to-byte v0, v0

    .line 1200
    .local v0, "rptId":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_SET_REPORT_RECEIVED for id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MouseNKeyHidDevice"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v3, "MouseNKeyHidDevice"

    const-string/jumbo v5, "onSetReport(), sending successful handshake for set report"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 1204
    goto/16 :goto_296

    .line 1161
    .end local v0    # "rptId":B
    :pswitch_158
    iget v0, v2, Landroid/os/Message;->arg1:I

    int-to-byte v6, v0

    .line 1162
    .local v6, "id":B
    iget v7, v2, Landroid/os/Message;->arg2:I

    .line 1164
    .local v7, "size":I
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2500(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    .line 1165
    .local v8, "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v9, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1166
    if-eqz v8, :cond_184

    .line 1167
    :try_start_171
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;->data:[B

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto/16 :goto_209

    .line 1169
    :cond_184
    new-instance v0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;

    iget-object v10, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11}, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V

    move-object v8, v0

    .line 1171
    if-ne v6, v5, :cond_1b9

    .line 1172
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 1173
    .local v3, "mBuffer":[B
    const-string v10, "MouseNKeyHidDevice"

    const-string/jumbo v11, "get_report id for keyboard"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_19c
    if-ge v10, v0, :cond_1a3

    .line 1175
    aput-byte v4, v3, v10

    .line 1174
    add-int/lit8 v10, v10, 0x1

    goto :goto_19c

    .line 1177
    .end local v10    # "i":I
    :cond_1a3
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v0, v6, v3, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1178
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 1180
    nop

    .end local v3    # "mBuffer":[B
    goto :goto_209

    :cond_1b9
    if-ne v6, v3, :cond_1e4

    .line 1181
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 1182
    .restart local v3    # "mBuffer":[B
    const-string v10, "MouseNKeyHidDevice"

    const-string/jumbo v11, "get_report id for mouse"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1c7
    if-ge v10, v0, :cond_1ce

    .line 1184
    aput-byte v4, v3, v10

    .line 1183
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c7

    .line 1186
    .end local v10    # "i":I
    :cond_1ce
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v0, v6, v3, v5}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1187
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 1189
    nop

    .end local v3    # "mBuffer":[B
    goto :goto_209

    .line 1191
    :cond_1e4
    const-string v0, "MouseNKeyHidDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Report for Invalid report id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 1195
    :goto_209
    monitor-exit v9

    .line 1196
    goto/16 :goto_296

    .line 1195
    :catchall_20c
    move-exception v0

    monitor-exit v9
    :try_end_20e
    .catchall {:try_start_171 .. :try_end_20e} :catchall_20c

    throw v0

    .line 1156
    .end local v6    # "id":B
    .end local v7    # "size":I
    .end local v8    # "rd":Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
    :pswitch_20f
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInputReportCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2500(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1157
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mOutputReportCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2100(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1158
    goto :goto_296

    .line 1135
    :pswitch_222
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    const/16 v9, -0x40

    sget-object v10, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    const-string v6, "Samsung HID Device"

    const-string v7, "Samsung HID Keyboard/Mouse"

    const-string v8, "Samsung"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    move-object v6, v0

    .line 1139
    .local v6, "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    new-instance v7, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/4 v12, 0x2

    const/16 v13, 0xc8

    const/4 v14, 0x2

    const/16 v15, 0xc8

    const/16 v16, 0x2710

    const/16 v17, 0x2710

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 1143
    .local v7, "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    new-instance v8, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/16 v19, 0x2

    const/16 v20, 0x384

    const/16 v21, 0x9

    const/16 v22, 0x384

    const/16 v23, 0x2710

    const/16 v24, 0x2710

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 1148
    .local v8, "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :try_start_256
    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v5

    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2200(Lcom/android/server/input/MouseNKeyHidDevice;)Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2300(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice$Callback;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    move-result v0

    .line 1149
    .local v0, "result":Z
    const-string v3, "MouseNKeyHidDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerApp()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_283} :catch_285

    .line 1152
    nop

    .end local v0    # "result":Z
    goto :goto_296

    .line 1150
    :catch_285
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2400(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "Can\'t registerApp"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1153
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 1244
    .end local v6    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v7    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v8    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :goto_296
    return-void

    nop

    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_222
        :pswitch_20f
        :pswitch_158
        :pswitch_126
        :pswitch_11d
        :pswitch_ed
        :pswitch_116
        :pswitch_c
        :pswitch_e6
        :pswitch_e
    .end packed-switch
.end method
