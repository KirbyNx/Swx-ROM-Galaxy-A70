.class Lcom/android/server/input/MouseNKeyHidDevice$3;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 939
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$3;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 943
    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    .line 944
    return-void

    .line 947
    :cond_5
    const-string v0, "MouseNKeyHidDevice"

    const-string v1, "Profile proxy connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$3;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHidDevice;

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$602(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    .line 950
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$3;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHandler:Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$700(Lcom/android/server/input/MouseNKeyHidDevice;)Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/input/MouseNKeyHidDevice$MouseNKeyHidDevicerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 951
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 955
    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    .line 956
    return-void

    .line 959
    :cond_5
    const-string v0, "MouseNKeyHidDevice"

    const-string v1, "Profile proxy disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method
