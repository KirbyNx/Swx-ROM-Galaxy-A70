.class public Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sIsSdhmsSupported:Z

.field private static sIsVzwModel:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field private mIsStatusOverride:Z

.field private final mLock:Ljava/lang/Object;

.field final mService:Landroid/os/IThermalService$Stub;

.field private mStatus:I

.field private mTemperatureMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field final mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field private final mThermalEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThermalStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    const-class v0, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ThermalManagerService;->sIsSdhmsSupported:Z

    .line 117
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ThermalManagerService;->sSalesCode:Ljava/lang/String;

    .line 119
    sput-boolean v0, Lcom/android/server/power/ThermalManagerService;->sIsVzwModel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halWrapper"    # Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 89
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 329
    new-instance v0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 128
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ThermalManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/ThermalManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;
    .param p1, "x1"    # Landroid/os/IThermalEventListener;
    .param p2, "x2"    # Ljava/lang/Integer;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;
    .param p1, "x1"    # Landroid/os/IThermalStatusListener;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/ThermalManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 74
    sget-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ThermalManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;

    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/ThermalManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ThermalManagerService;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return p1
.end method

.method public static synthetic lambda$9JFHCKCwrnUIYoXDsqNamhlY5VU(Lcom/android/server/power/ThermalManagerService;Landroid/os/Temperature;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChangedCallback(Landroid/os/Temperature;)V

    return-void
.end method

.method static synthetic lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 5
    .param p0, "listener"    # Landroid/os/IThermalEventListener;
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 258
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 261
    goto :goto_c

    .line 259
    :catch_4
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 269
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 271
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_26

    .line 272
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 273
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalEventListener;

    .line 274
    .local v2, "listener":Landroid/os/IThermalEventListener;
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 275
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 276
    .local v3, "type":Ljava/lang/Integer;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1f

    .line 271
    .end local v2    # "listener":Landroid/os/IThermalEventListener;
    .end local v3    # "type":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 279
    .end local v1    # "i":I
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 280
    throw v1

    .line 279
    :cond_26
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 280
    nop

    .line 281
    const/16 v1, 0xab1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 282
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 281
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 283
    return-void
.end method

.method private notifyStatusListenersLocked()V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 206
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 207
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 208
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalStatusListener;

    .line 209
    .local v2, "listener":Landroid/os/IThermalStatusListener;
    invoke-direct {p0, v2}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    .line 206
    .end local v2    # "listener":Landroid/os/IThermalStatusListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 212
    .end local v1    # "i":I
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 213
    throw v1

    .line 212
    :cond_1e
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 213
    nop

    .line 214
    return-void
.end method

.method private onActivityManagerReady()V
    .registers 10

    .line 145
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->sSalesCode:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    .line 148
    const-string v1, "VZW"

    sget-object v4, Lcom/android/server/power/ThermalManagerService;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "VPP"

    sget-object v4, Lcom/android/server/power/ThermalManagerService;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v2

    :goto_21
    sput-boolean v1, Lcom/android/server/power/ThermalManagerService;->sIsVzwModel:Z

    .line 151
    :cond_23
    const-string/jumbo v1, "in_house"

    .line 152
    .local v1, "DISABLE_FEATURE":Ljava/lang/String;
    nop

    .line 153
    const-string/jumbo v4, "jdm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v2

    goto :goto_33

    :cond_32
    move v4, v3

    :goto_33
    sput-boolean v4, Lcom/android/server/power/ThermalManagerService;->sIsSdhmsSupported:Z

    .line 157
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    if-eqz v4, :cond_3b

    move v4, v2

    goto :goto_3c

    :cond_3b
    move v4, v3

    .line 158
    .local v4, "halConnected":Z
    :goto_3c
    if-nez v4, :cond_4a

    .line 159
    new-instance v5, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 160
    invoke-virtual {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v5

    move v4, v5

    .line 162
    :cond_4a
    if-nez v4, :cond_58

    .line 163
    new-instance v5, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 164
    invoke-virtual {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v5

    move v4, v5

    .line 166
    :cond_58
    if-nez v4, :cond_66

    .line 167
    new-instance v5, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    invoke-direct {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 168
    invoke-virtual {v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v5

    move v4, v5

    .line 170
    :cond_66
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    new-instance v6, Lcom/android/server/power/-$$Lambda$ThermalManagerService$9JFHCKCwrnUIYoXDsqNamhlY5VU;

    invoke-direct {v6, p0}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$9JFHCKCwrnUIYoXDsqNamhlY5VU;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V

    .line 171
    if-nez v4, :cond_7b

    .line 172
    sget-object v2, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v3, "No Thermal HAL service on this device"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v0

    return-void

    .line 175
    :cond_7b
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 178
    .local v6, "count":I
    if-nez v6, :cond_8e

    .line 179
    sget-object v7, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Thermal HAL reported invalid data, abort connection"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_8e
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8f
    if-ge v7, v6, :cond_9d

    .line 182
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Temperature;

    invoke-direct {p0, v8, v3}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 184
    .end local v7    # "i":I
    :cond_9d
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 185
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateSevereThresholds()V

    .line 186
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    .end local v1    # "DISABLE_FEATURE":Ljava/lang/String;
    .end local v4    # "halConnected":Z
    .end local v5    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    .end local v6    # "count":I
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method private onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;
    .param p2, "sendStatus"    # Z

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->shutdownIfNeeded(Landroid/os/Temperature;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    .line 310
    .local v1, "old":Landroid/os/Temperature;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_21

    .line 311
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    .line 313
    :cond_21
    if-eqz p2, :cond_26

    .line 314
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 316
    .end local v1    # "old":Landroid/os/Temperature;
    :cond_26
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private onTemperatureChangedCallback(Landroid/os/Temperature;)V
    .registers 5
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 323
    .local v0, "token":J
    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    nop

    .line 327
    return-void

    .line 325
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v2
.end method

.method private onTemperatureMapChangedLocked()V
    .registers 6

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "newStatus":I
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 219
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1f

    .line 220
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 221
    .local v3, "t":Landroid/os/Temperature;
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v0, :cond_1c

    .line 222
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 219
    .end local v3    # "t":Landroid/os/Temperature;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 226
    .end local v2    # "i":I
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v2, :cond_26

    .line 227
    invoke-direct {p0, v0}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    .line 229
    :cond_26
    return-void
.end method

.method private postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;
    .param p2, "listener"    # Landroid/os/IThermalEventListener;
    .param p3, "type"    # Ljava/lang/Integer;

    .line 253
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 254
    return-void

    .line 256
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;

    invoke-direct {v1, p2, p1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;-><init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 263
    .local v0, "thermalCallbackQueued":Z
    if-nez v0, :cond_23

    .line 264
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to queue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_23
    return-void
.end method

.method private postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/IThermalEventListener;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 240
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 242
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 243
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 246
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private postStatusListener(Landroid/os/IThermalStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IThermalStatusListener;

    .line 191
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;-><init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 198
    .local v0, "thermalCallbackQueued":Z
    if-nez v0, :cond_16

    .line 199
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to queue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_16
    return-void
.end method

.method private setStatusLocked(I)V
    .registers 3
    .param p1, "newStatus"    # I

    .line 232
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_9

    .line 233
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 234
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->notifyStatusListenersLocked()V

    .line 236
    :cond_9
    return-void
.end method

.method private shutdownIfNeeded(Landroid/os/Temperature;)V
    .registers 6
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 286
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_40

    sget-boolean v0, Lcom/android/server/power/ThermalManagerService;->sIsSdhmsSupported:Z

    if-nez v0, :cond_40

    sget-boolean v0, Lcom/android/server/power/ThermalManagerService;->sIsVzwModel:Z

    if-eqz v0, :cond_10

    goto :goto_40

    .line 289
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 290
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    const/4 v3, 0x1

    if-eq v1, v3, :cond_38

    const/4 v3, 0x2

    if-eq v1, v3, :cond_31

    const/4 v3, 0x3

    if-eq v1, v3, :cond_38

    const/16 v3, 0x9

    if-eq v1, v3, :cond_38

    goto :goto_3f

    .line 301
    :cond_31
    const-string/jumbo v1, "thermal,battery"

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    goto :goto_3f

    .line 298
    :cond_38
    const-string/jumbo v1, "thermal"

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 299
    nop

    .line 304
    :goto_3f
    return-void

    .line 287
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public synthetic lambda$postStatusListener$0$ThermalManagerService(Landroid/os/IThermalStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IThermalStatusListener;

    .line 193
    :try_start_0
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-interface {p1, v0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 196
    goto :goto_e

    .line 194
    :catch_6
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 139
    const/16 v0, 0x226

    if-ne p1, v0, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onActivityManagerReady()V

    .line 142
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    const-string/jumbo v1, "thermalservice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ThermalManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 135
    return-void
.end method
