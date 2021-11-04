.class Lcom/android/server/media/BluetoothRouteProvider;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HEARING_AID_ROUTE_ID_PREFIX:Ljava/lang/String; = "HEARING_AID_"

.field private static final TAG:Ljava/lang/String; = "BTRouteProvider"

.field private static sInstance:Lcom/android/server/media/BluetoothRouteProvider;


# instance fields
.field mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field final mActiveRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mBluetoothRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mEventReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

.field private final mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

.field private final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-string v0, "BTRouteProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p3, "listener"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    .line 100
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    iput-object p3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    .line 103
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    .line 105
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveRoutesWithType(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p1, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p1, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;

    .line 54
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/BluetoothRouteProvider;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;

    .line 54
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;

    .line 54
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    return-void
.end method

.method private addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 363
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active hearing aid devices. device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1a
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 369
    .local v0, "activeBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    invoke-direct {p0, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 373
    .local v2, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 374
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 375
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 376
    invoke-direct {p0, v2}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 378
    .end local v2    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_66
    goto :goto_33

    .line 379
    :cond_67
    return-void
.end method

.method private addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 4
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 329
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1c
    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_31

    .line 335
    :cond_27
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 336
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void

    .line 333
    :cond_31
    :goto_31
    return-void
.end method

.method private addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "eventReceiver"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;

    .line 160
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private buildBluetoothRoutes()V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    return-void

    .line 168
    :cond_a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 169
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_11

    return-void

    .line 171
    :cond_11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 172
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 173
    invoke-direct {p0, v2}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v3

    .line 174
    .local v3, "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lez v4, :cond_3c

    .line 175
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_3c
    goto :goto_15

    .line 179
    :cond_3d
    return-void
.end method

.method private clearActiveDevices()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    .line 157
    :cond_8
    return-void
.end method

.method private clearActiveRoutesWithType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 349
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing active routes with type. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1a
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;>;"
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 355
    .local v1, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v2

    if-ne v2, p1, :cond_3b

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 357
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 359
    .end local v1    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_3b
    goto :goto_20

    .line 360
    :cond_3c
    return-void
.end method

.method private createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 272
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    .line 273
    .local v0, "newBtRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iput-object p1, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 275
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "routeId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "deviceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 278
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    :cond_27
    const/16 v3, 0x8

    .line 281
    .local v3, "type":I
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    .line 282
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 283
    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 285
    :cond_45
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v4, :cond_73

    .line 286
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 287
    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v6, 0x15

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEARING_AID_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    const/16 v3, 0x17

    .line 294
    :cond_73
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 295
    const-string v6, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 296
    const-string v6, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    const/4 v6, 0x0

    .line 297
    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 299
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 300
    invoke-virtual {v4, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    .line 302
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 303
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 305
    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    const-class v0, Lcom/android/server/media/BluetoothRouteProvider;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;

    if-nez v1, :cond_1d

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_21

    .line 90
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_16

    .line 91
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 93
    :cond_16
    :try_start_16
    new-instance v2, Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/media/BluetoothRouteProvider;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V

    sput-object v2, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;

    .line 95
    .end local v1    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1d
    sget-object v1, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object v1

    .line 84
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "listener":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyBluetoothRoutesUpdated()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    if-eqz v0, :cond_b

    .line 267
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated(Ljava/util/List;)V

    .line 269
    :cond_b
    return-void
.end method

.method private removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .registers 4
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 340
    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1c
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    .line 346
    :cond_28
    return-void
.end method

.method private setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V
    .registers 7
    .param p1, "btRoute"    # Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .param p2, "state"    # I

    .line 310
    if-nez p1, :cond_b

    .line 311
    const-string v0, "BTRouteProvider"

    const-string/jumbo v1, "setRouteConnectionState: route shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 314
    :cond_b
    iget-object v0, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 315
    return-void

    .line 318
    :cond_14
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 319
    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 320
    .local v0, "builder":Landroid/media/MediaRoute2Info$Builder;
    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 322
    const/4 v1, 0x2

    if-ne p2, v1, :cond_37

    .line 323
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 325
    :cond_37
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 326
    return-void
.end method


# virtual methods
.method findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .registers 6
    .param p1, "routeId"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 221
    return-object v0

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 224
    .local v2, "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 225
    return-object v2

    .line 227
    .end local v2    # "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_27
    goto :goto_e

    .line 228
    :cond_28
    return-object v0
.end method

.method getAllBluetoothRoutes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    .line 203
    .local v2, "selectedRoute":Landroid/media/MediaRoute2Info;
    if-eqz v2, :cond_1a

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1a
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 210
    .local v4, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 211
    goto :goto_24

    .line 213
    :cond_3d
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v4    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_24

    .line 216
    :cond_4c
    return-object v0
.end method

.method getSelectedRoute()Landroid/media/MediaRoute2Info;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_15

    :cond_a
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    :goto_15
    return-object v0
.end method

.method getTransferableRoutes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 192
    .local v2, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    .end local v2    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_a

    .line 194
    :cond_1c
    return-object v0
.end method

.method public start()V
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 109
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 112
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 114
    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    .line 115
    .local v0, "deviceStateChangedReceiver":Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
    const-string v2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 116
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 117
    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 119
    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    .line 122
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .registers 6
    .param p1, "routeId"    # Ljava/lang/String;

    .line 133
    if-nez p1, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveDevices()V

    .line 135
    return-void

    .line 138
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v0

    .line 140
    .local v0, "btRouteInfo":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    if-nez v0, :cond_24

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferTo: Unknown route. ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTRouteProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 145
    :cond_24
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2e

    .line 146
    iget-object v2, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 148
    :cond_2e
    return-void
.end method

.method public updateVolumeForDevices(II)Z
    .registers 9
    .param p1, "devices"    # I
    .param p2, "volume"    # I

    .line 238
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 239
    const/16 v0, 0x17

    .local v0, "routeType":I
    goto :goto_e

    .line 240
    .end local v0    # "routeType":I
    :cond_8
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_49

    .line 243
    const/16 v0, 0x8

    .line 247
    .restart local v0    # "routeType":I
    :goto_e
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "shouldNotify":Z
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 251
    .local v3, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    iget-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v4

    if-eq v4, v0, :cond_2f

    .line 252
    goto :goto_1a

    .line 254
    :cond_2f
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    iget-object v5, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v4, v5}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 255
    invoke-virtual {v4, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    .line 257
    const/4 v1, 0x1

    .line 258
    .end local v3    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    goto :goto_1a

    .line 259
    :cond_42
    if-eqz v1, :cond_47

    .line 260
    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    .line 262
    :cond_47
    const/4 v2, 0x1

    return v2

    .line 245
    .end local v0    # "routeType":I
    .end local v1    # "shouldNotify":Z
    :cond_49
    const/4 v0, 0x0

    return v0
.end method
