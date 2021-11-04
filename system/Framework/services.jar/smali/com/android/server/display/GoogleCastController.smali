.class public final Lcom/android/server/display/GoogleCastController;
.super Ljava/lang/Object;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/GoogleCastController$Listener;
    }
.end annotation


# static fields
.field private static final CONNECTED_STATE:I = 0x1

.field private static final DISCONNECTED_STATE:I = 0x0

.field private static final GOOGLE_CAST_ROUTE_TYPE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GoogleCastController"


# instance fields
.field private mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

.field private mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

.field private final mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/GoogleCastController$Listener;

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/GoogleCastController$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/GoogleCastController$Listener;
    .param p4, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/android/server/display/GoogleCastController$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/GoogleCastController$4;-><init>(Lcom/android/server/display/GoogleCastController;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 51
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;

    .line 54
    iput-object p4, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 55
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    .line 56
    new-instance v0, Lcom/android/server/display/ControllerUtils;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    .line 57
    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/GoogleCastController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .line 32
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/GoogleCastController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/GoogleCastController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/GoogleCastController;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method private broadcastGoogleCastState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastGCastState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 117
    return-void
.end method

.method private handleConnectionStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/GoogleCastController$1;-><init>(Lcom/android/server/display/GoogleCastController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method private sendRemoteDisplayStateChangeEvent(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "event"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/GoogleCastController$2;-><init>(Lcom/android/server/display/GoogleCastController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method private sendWifiDisplayPlayStateChangedEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendWifiDisplayPlayStateChangedEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/GoogleCastController$3;-><init>(Lcom/android/server/display/GoogleCastController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method private setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "device"    # Landroid/media/MediaRouter$RouteInfo;

    .line 105
    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "setLastConnectedGoogleCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedGoogleCast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 107
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 109
    :cond_1d
    return-void
.end method


# virtual methods
.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getActiveDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method public getLastConnectedGoogleCast(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4
    .param p1, "lastConnectedDevice"    # Landroid/hardware/display/SemDeviceInfo;

    .line 75
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedGoogleCast()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "googleCast":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 77
    invoke-virtual {p1, v0}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    .line 80
    :cond_13
    return-void
.end method

.method public isConnected()Z
    .registers 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    return v2
.end method

.method public requestDeviceConnect(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 5
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDeviceConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    .line 63
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 64
    return-void
.end method

.method public requestDeviceDisconnect()V
    .registers 4

    .line 67
    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "requestDeviceDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    .line 69
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_26

    .line 70
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 72
    :cond_26
    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleCastController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    .line 85
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/GoogleCastController;->sendRemoteDisplayStateChangeEvent(II)V

    .line 86
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/GoogleCastController;->sendWifiDisplayPlayStateChangedEvent(I)V

    .line 87
    return-void
.end method
