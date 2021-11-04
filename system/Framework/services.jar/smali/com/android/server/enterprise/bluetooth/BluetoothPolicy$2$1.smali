.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    .line 371
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 375
    nop

    .line 376
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    .line 378
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 380
    :cond_12
    return-void
.end method
