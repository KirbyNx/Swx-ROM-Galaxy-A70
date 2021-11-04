.class Lcom/android/server/display/WifiDisplayAdapter$8$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$8;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$8;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/display/WifiDisplayAdapter$8;

    .line 326
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 330
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "[BluetoothReceiver] force to set as false and remove receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    .line 332
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v3, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v1, v3, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    .line 334
    :try_start_22
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_35} :catch_36

    .line 337
    goto :goto_3d

    .line 335
    :catch_36
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "unregisterReceiver:: BluetoothBroadcastReceiver not registered!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3d
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v1}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;

    .line 340
    :cond_49
    return-void
.end method
