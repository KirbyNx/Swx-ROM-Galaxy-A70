.class public Lcom/samsung/android/mcf/McfBleAdapterImpl$1;
.super Ljava/lang/Object;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleAdvertiser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfBleAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .registers 9

    .line 149
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    const-string v1, "startAdvertise"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 151
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 155
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_32

    .line 156
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - too many advertise(5) is working. stop some advertise."

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 160
    :cond_32
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->isConnectable()Z

    move-result v0

    .line 161
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/McfBleAdapterImpl;->totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    invoke-static {v3, p2, v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_b0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/McfBleAdapterImpl;->totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    invoke-static {v0, p3, v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v0

    if-gt v0, v3, :cond_a8

    .line 169
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v0

    const v3, 0x36ee80

    if-gt v0, v3, :cond_5b

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v0

    if-nez v0, :cond_62

    .line 171
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const-string v3, "Advertise-Timout is set too long, please check it again"

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/AbstractClient;->showDebugToast(Ljava/lang/String;)V

    .line 174
    :cond_62
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v0, v0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    invoke-direct {v0, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-virtual {p1, v1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 180
    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p3, :cond_8a

    .line 182
    invoke-virtual {p3, v1, p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 184
    :cond_8a
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string p3, "bleAdvCallback"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 p3, 0x190

    invoke-virtual {p2, p3, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p2

    if-eqz p2, :cond_a7

    .line 187
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_a7
    return p1

    .line 166
    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Legacy scan response data too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Legacy advertising data too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    const-string v1, "stopAdvertise"

    if-nez v0, :cond_1b

    .line 198
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "Ignore - not started"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bleAdvCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v1, 0x191

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    const/4 p1, 0x1

    return p1
.end method
