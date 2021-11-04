.class public abstract Lcom/samsung/android/mcf/AbstractClient;
.super Ljava/lang/Object;
.source "AbstractClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppId:I

.field public final mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mMcfService:Lcom/samsung/android/mcf/IMcfService;

.field public final mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field public final mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;",
            "Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Lcom/samsung/android/mcf/AbstractClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$1;-><init>(Lcom/samsung/android/mcf/AbstractClient;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    .line 57
    iput p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    .line 58
    iput-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 59
    iput-object p4, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 60
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p3, p4

    const-string p2, "%d_%s"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/AbstractClient;)Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "close"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$StatusListener;->onClosed(Lcom/samsung/android/mcf/AbstractClient;)V

    return-void
.end method

.method public abstract closeInternal()V
.end method

.method public getAccessPermission(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 314
    iget p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    shl-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p1

    goto :goto_b

    .line 0
    :cond_9
    const/16 v0, -0x3e7

    .line 314
    :goto_b
    return v0
.end method

.method public getAccessPermission(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 322
    iget p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    shl-int/lit8 p1, p1, 0x10

    goto :goto_9

    .line 0
    :cond_8
    const/4 p1, 0x0

    .line 322
    :goto_9
    if-ne p2, v0, :cond_e

    .line 325
    iget p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    or-int/2addr p1, p2

    :cond_e
    return p1
.end method

.method public getBleServiceId(ZZ)I
    .registers 4

    .line 307
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMyId()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    return v0
.end method

.method public getRangingCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    return-object p1
.end method

.method public getScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    return-object p1
.end method

.method public invalidateService()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    return-void
.end method

.method public isMyId(I)Z
    .registers 3

    .line 67
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public isNetworkEnabled(I)Z
    .registers 6

    .line 112
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(IILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 113
    :goto_b
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "isNetworkEnabled"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public synthetic lambda$showDebugToast$0$AbstractClient(Ljava/lang/String;)V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public abstract open()I
.end method

.method public putScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeScanCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendMessage(IILandroid/os/Bundle;)I
    .registers 8

    .line 335
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, -0x1

    const-string v2, "sendMessage"

    if-nez v0, :cond_f

    .line 336
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Service is invalid"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 340
    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 341
    iput p1, v0, Landroid/os/Message;->what:I

    .line 342
    iget v3, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    const/16 v3, -0x3e7

    if-eq p2, v3, :cond_1f

    .line 344
    iput p2, v0, Landroid/os/Message;->arg2:I

    :cond_1f
    if-nez p3, :cond_26

    .line 349
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_26
    const p2, 0xf4e15

    .line 352
    const-string v3, "verCode"

    invoke-virtual {p3, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    :try_start_30
    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    invoke-interface {p2, v0}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_36} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_5a

    :catch_37
    move-exception p2

    .line 359
    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    return v1
.end method

.method public sendMessage(ILandroid/os/Bundle;)I
    .registers 4

    .line 331
    const/16 v0, -0x3e7

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(IILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public setAntennaPairSelection(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .registers 8

    .line 238
    const-string v0, "setAntennaPairSelection"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    if-ltz p3, :cond_4d

    const/4 v1, 0x2

    if-le p3, v1, :cond_10

    goto :goto_4d

    .line 248
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez p2, :cond_22

    .line 250
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 253
    :cond_22
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v1, "rangingCallback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 257
    const-string p2, "rangingAntennaPairSelection"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2

    .line 244
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid antennaPairSelection = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .registers 4

    .line 79
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 83
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/-$$Lambda$AbstractClient$9gF48dF4MGWKO5GjS3-HXTY1SoY;-><init>(Lcom/samsung/android/mcf/AbstractClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string v1, "startAdvertise"

    if-eqz v0, :cond_15

    .line 174
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 177
    :cond_15
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    const v2, 0x36ee80

    if-gt v0, v2, :cond_28

    .line 178
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_28
    nop

    .line 179
    const-string v0, "Advertise-Timout is set too long, please check it again"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->showDebugToast(Ljava/lang/String;)V

    .line 182
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "advertiseCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_57

    .line 191
    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    return p1
.end method

.method public startScan(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7

    .line 136
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string v1, "startScan"

    if-eqz v0, :cond_15

    .line 138
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 141
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_3e

    .line 150
    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return p1
.end method

.method public startUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 8

    .line 213
    const-string v0, "startUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 217
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-eqz v1, :cond_1c

    .line 220
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 224
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBleSID()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "rangingCallback"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 230
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_49

    .line 232
    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    if-nez p1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2
.end method

.method public stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string v1, "stopAdvertise"

    if-nez v0, :cond_15

    .line 201
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not start"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 204
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "advertiseCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public stopAllAdvertise(I)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->stopAdvertise(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    goto :goto_a

    .line 294
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public stopAllScan(I)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 284
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    goto :goto_a

    .line 286
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public stopAllUWBRanging(I)V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    .line 300
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    goto :goto_a

    .line 302
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public stopScan(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7

    .line 157
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string v1, "stopScan"

    if-nez v0, :cond_15

    .line 159
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not start"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 163
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mDeviceDiscoverCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 167
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public stopUWBRanging(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 8

    .line 263
    const-string v0, "stopUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 267
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez v1, :cond_1c

    .line 269
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - not started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 272
    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->mUWBRangingCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 276
    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v0

    const-string v3, "serviceID"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "rangingCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_46

    const/4 v2, 0x1

    :cond_46
    return v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/mcf/AbstractClient;->mAppId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "%s [#0x%s, %s]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
