.class Lcom/android/server/input/MouseNKeyHidDevice$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 921
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 924
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 926
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$300(Lcom/android/server/input/MouseNKeyHidDevice;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 927
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$400(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 928
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$402(Lcom/android/server/input/MouseNKeyHidDevice;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 930
    :cond_2f
    const-string v1, "MouseNKeyHidDevice"

    const-string v2, "BluetoothAdapter.ACTION_STATE_CHANGED enabled, initailizing"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->initializing()V
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$500(Lcom/android/server/input/MouseNKeyHidDevice;)V

    .line 932
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-virtual {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->sendMessageStatus()V

    .line 933
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$2;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/input/MouseNKeyHidDevice;->mInitialized:Z
    invoke-static {v1, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$302(Lcom/android/server/input/MouseNKeyHidDevice;Z)Z

    .line 936
    :cond_46
    return-void
.end method
