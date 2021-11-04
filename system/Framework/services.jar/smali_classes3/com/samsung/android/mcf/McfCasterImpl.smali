.class public Lcom/samsung/android/mcf/McfCasterImpl;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "McfCasterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfCaster;


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

.field public mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6

    .line 42
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 43
    new-instance p1, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;-><init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    return-void
.end method

.method private stopAllHandover()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopHandover()Z

    .line 363
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method

.method private stopMessaging()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    if-eqz v0, :cond_b

    .line 355
    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/McfCasterImpl;->closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    :cond_b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    return-void
.end method

.method public closeInternal()V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "closeInternal"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->stopAllAdvertise(I)V

    .line 90
    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->stopAllScan(I)V

    .line 91
    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->stopAllUWBRanging(I)V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopMessaging()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfCasterImpl;->stopAllHandover()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 102
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3c

    .line 103
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->invalidateService()V

    return-void
.end method

.method public closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6

    .line 318
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "closeMessagingServer"

    if-nez v0, :cond_f

    .line 319
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "not opened"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 323
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 325
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "callback is not matched. but, close server"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 330
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 331
    invoke-virtual {p1}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v2, "MessageCallback"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0xda

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_41

    const/4 v1, 0x1

    :cond_41
    return v1
.end method

.method public confirmUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/McfDevice;Z)Z
    .registers 8

    .line 261
    const-string v0, "confirmUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    if-nez p2, :cond_14

    .line 266
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "device should not be null"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 269
    :cond_14
    invoke-virtual {p2}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_22

    .line 271
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "device BT address should not be null"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 275
    :cond_22
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->getRangingCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    move-result-object p1

    if-nez p1, :cond_30

    .line 277
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 280
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "confirmRanging"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v1, "rangingCallback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    const-string p1, "deviceAddr"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string p1, "confirm"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0xd7

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_63

    const/4 v2, 0x1

    :cond_63
    return v2
.end method

.method public isMine(ILcom/samsung/android/mcf/CasterCallback;)Z
    .registers 3

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->isMyId(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z

    move-result p1

    return p1
.end method

.method public open()I
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "open"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public openMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6

    .line 293
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const-string v2, "openMessagingServer"

    if-eqz v0, :cond_18

    .line 298
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "Ignore - app can open only 1 Messaging server"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 301
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;-><init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    .line 303
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->getMyId()I

    move-result v0

    const-string v2, "serviceID"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "MessageCallback"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v0, 0xd9

    .line 308
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_4a

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    :cond_4a
    if-nez p1, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 8

    .line 131
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/AbstractClient;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "registerAdvertiseData"

    if-eqz v0, :cond_11

    .line 133
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already registered"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 136
    :cond_11
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "scanMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_26

    .line 137
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - This API don\'t support Low_Latency Scan"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_26
    nop

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/discovery/McfScanData;->setTimeout(I)V

    .line 141
    invoke-virtual {p2, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 145
    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/mcf/AbstractClient;->putScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 149
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "deviceCallback"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p2, 0xcb

    .line 151
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_59

    .line 153
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/AbstractClient;->removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    :cond_59
    return p1
.end method

.method public registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 203
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "registerHandoverCallback"

    const-string v1, "already registered"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendHandoverResponse(Lcom/samsung/android/mcf/handover/McfHandoverData;Z)Z
    .registers 6

    .line 220
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 221
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "sendHandoverResponse"

    const-string v0, "Ignore - callback is null"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 225
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    const-string v2, "allow"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getConnectionType()I

    move-result p1

    const/16 p2, 0xcd

    invoke-virtual {p0, p2, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(IILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public sendResponseMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6

    .line 337
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "sendResponseMessage"

    if-nez v0, :cond_f

    .line 338
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not opened"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 341
    :cond_f
    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 342
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - callback is not matched"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 345
    :cond_1d
    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p2, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 347
    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 348
    iget-object p1, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mMcfMessageCallbackWrapper:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "MessageCallback"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0xdb

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .registers 4

    .line 251
    const/16 v0, 0xd8

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z

    move-result p1

    return p1
.end method

.method public startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 4

    .line 119
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->startAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p1

    return p1
.end method

.method public startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 4

    .line 190
    const/16 v0, 0xd3

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->startScan(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p1

    return p1
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 4

    .line 245
    const/16 v0, 0xd5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z

    move-result p1

    return p1
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 3

    .line 124
    const/16 v0, 0xc9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p1

    return p1
.end method

.method public stopHandover()Z
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 233
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, "stopHandover"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 236
    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->getMyId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v2

    const-string v4, "serviceID"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xce

    .line 238
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_2f

    move v1, v3

    :cond_2f
    return v1
.end method

.method public stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 3

    .line 195
    const/16 v0, 0xd4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p1

    return p1
.end method

.method public stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 3

    .line 256
    const/16 v0, 0xd6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 6

    .line 175
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    const-string v1, "unregisterAdvertiseData"

    if-nez v0, :cond_11

    .line 177
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "Ignore - not registered"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 180
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 183
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 184
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v0, 0xcc

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public unregisterHandoverCallback()V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-nez v0, :cond_11

    .line 213
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "unregisterHandoverCallback"

    const-string v2, "not registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/mcf/McfCasterImpl;->mCallback:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method

.method public updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 6

    .line 161
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/AbstractClient;->getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object p2

    const-string v0, "updateAdvertiseData"

    if-nez p2, :cond_11

    .line 163
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not registered"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_11
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "deviceCallback"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p2, 0xd2

    .line 170
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method
