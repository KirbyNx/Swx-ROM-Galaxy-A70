.class public final Lcom/android/server/display/DlnaController;
.super Ljava/lang/Object;
.source "DlnaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    }
.end annotation


# static fields
.field private static final DLNA_STADNBY_MODE:Ljava/lang/String; = "smart_mirroring_dlna_showing"

.field private static final MAX_VOLUME:I = 0x64

.field private static final MIN_VOLUME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DlnaController"


# instance fields
.field private mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

.field private mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

.field private mDlnaVolume:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDlnaVolumeMuted:Z

.field private mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mPlayerState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    .line 62
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 65
    new-instance v0, Lcom/android/server/display/ControllerUtils;

    invoke-direct {v0, p1}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/ControllerUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaDevice;)Lcom/android/server/display/DlnaDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;
    .param p1, "x1"    # Lcom/android/server/display/DlnaDevice;

    .line 42
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/DlnaController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DlnaController;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DlnaController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->isStandbyModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DlnaController;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DlnaController;->updateStandbyModePlayerState(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DlnaController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->requestStandbyModeReadyImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DlnaController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DlnaController;
    .param p1, "x1"    # Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 42
    iput-object p1, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    return-object p1
.end method

.method private createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;
    .registers 5
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;

    .line 219
    new-instance v0, Lcom/android/server/display/DlnaDevice;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v0, "dlnaDeviceInfo":Lcom/android/server/display/DlnaDevice;
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setConnectionState(I)V

    .line 221
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setPlayerType(I)V

    .line 222
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaSupportTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setDlnaSupportTypes(I)V

    .line 223
    return-object v0
.end method

.method private createSemDeviceInfo(Lcom/android/server/display/DlnaDevice;)Landroid/hardware/display/SemDeviceInfo;
    .registers 5
    .param p1, "dlnaDevice"    # Lcom/android/server/display/DlnaDevice;

    .line 227
    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/SemDeviceInfo;-><init>(ILjava/lang/String;)V

    .line 228
    .local v0, "semDeviceInfo":Landroid/hardware/display/SemDeviceInfo;
    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaPlayerType(I)V

    .line 231
    invoke-virtual {p1}, Lcom/android/server/display/DlnaDevice;->getDlnaSupportTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaSupportTypes(I)V

    .line 232
    return-object v0
.end method

.method private dlnaConnectionStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "connectionState"    # I

    .line 309
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 319
    const-string v0, "None"

    return-object v0

    .line 317
    :cond_e
    const-string v0, "Connecting"

    return-object v0

    .line 315
    :cond_11
    const-string v0, "Error"

    return-object v0

    .line 313
    :cond_14
    const-string v0, "Connected"

    return-object v0

    .line 311
    :cond_17
    const-string v0, "Not_connected"

    return-object v0
.end method

.method private dlnaPlayerTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "playerType"    # I

    .line 293
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 305
    const-string v0, "None"

    return-object v0

    .line 303
    :cond_e
    const-string v0, "Music_chn"

    return-object v0

    .line 301
    :cond_11
    const-string v0, "Music"

    return-object v0

    .line 299
    :cond_14
    const-string v0, "Image"

    return-object v0

    .line 297
    :cond_17
    const-string v0, "Video"

    return-object v0
.end method

.method private handleSendStatusChangeBroadcast(I)V
    .registers 4
    .param p1, "status"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DlnaController$3;-><init>(Lcom/android/server/display/DlnaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method private isStandbyModeOn()Z
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_mirroring_dlna_showing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method private requestStandbyModeReadyImage()Z
    .registers 5

    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 285
    .local v0, "NOT_CONNECTED_STATE":[I
    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 286
    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.DLNA_STANDBY_IMAGE_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 287
    const/4 v1, 0x1

    return v1

    .line 289
    :cond_1e
    const/4 v1, 0x0

    return v1

    :array_20
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 236
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DlnaController$2;-><init>(Lcom/android/server/display/DlnaController;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method private updateStandbyModePlayerState(II)Z
    .registers 10
    .param p1, "playerType"    # I
    .param p2, "connectionState"    # I

    .line 268
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, p2

    .line 270
    .local v2, "playerState":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    aget v4, v3, p1

    if-ne v4, v2, :cond_e

    .line 271
    return v1

    .line 272
    :cond_e
    aget v3, v3, p1

    const/4 v4, 0x3

    const-string v5, "DlnaController"

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1e

    if-ne v2, v6, :cond_1e

    .line 273
    const-string v0, "Abnormal connected state"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v1

    .line 277
    :cond_1e
    iget-object v3, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    aput v2, v3, p1

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    PlayerState [ Video :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    aget v1, v4, v1

    invoke-direct {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , Image : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    aget v1, v1, v6

    .line 279
    invoke-direct {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , Music :"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v6
.end method


# virtual methods
.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->createSemDeviceInfo(Lcom/android/server/display/DlnaDevice;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMaxVolume()I
    .registers 2

    .line 207
    const/16 v0, 0x64

    return v0
.end method

.method public getDeviceMinVolume()I
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4
    .param p1, "lastConnectedDevice"    # Landroid/hardware/display/SemDeviceInfo;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedDlnaDevice()Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    .line 152
    .local v0, "dlnaDevice":Lcom/android/server/display/DlnaDevice;
    if-eqz v0, :cond_21

    .line 153
    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    .line 156
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    .line 158
    :cond_21
    return-void
.end method

.method public isConnected()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/display/DlnaDevice;->getConnectionState()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isDeviceVolumeMuted()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    return v0
.end method

.method public requestConnect(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 5
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;

    .line 77
    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->isStandbyModeOn()Z

    move-result v0

    const-string v1, "DlnaController"

    if-eqz v0, :cond_f

    .line 78
    const-string/jumbo v0, "requestConnect, Standby Mode is already on"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnect, deviceInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_mirroring_dlna_showing"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/display/DlnaController;->setLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V

    .line 86
    invoke-direct {p0, v2}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    .line 87
    return-void
.end method

.method public requestDisconnect()V
    .registers 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDisconnect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DlnaController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_mirroring_dlna_showing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mPlayerState:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    .line 94
    invoke-direct {p0, v2}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    .line 95
    return-void
.end method

.method public sendDeviceVolumeKeyEvent(I)V
    .registers 4
    .param p1, "keyEvent"    # I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceVolumeKeyEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v1, p1}, Lcom/android/server/display/ControllerUtils;->keyEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DlnaController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DlnaController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DlnaController$1;-><init>(Lcom/android/server/display/DlnaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public setDeviceVolume(I)V
    .registers 5
    .param p1, "volume"    # I

    .line 184
    iput p1, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "minVol"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string/jumbo v0, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    iget v0, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    const-string v2, "curVol"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-boolean v0, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    const-string/jumbo v2, "isMute"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DlnaController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceVolume : volume = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DlnaController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public setDeviceVolumeMuted(Z)V
    .registers 5
    .param p1, "muted"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "minVol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string/jumbo v1, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget v1, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    const-string v2, "curVol"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-boolean v1, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    const-string/jumbo v2, "isMute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DlnaController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceVolumeMuted :  muted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DlnaController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DlnaController;->mDlnaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DlnaController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public setLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    .line 145
    .local v0, "desireDeviceInfo":Lcom/android/server/display/DlnaDevice;
    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedDlnaDevice(Lcom/android/server/display/DlnaDevice;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 146
    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 148
    :cond_11
    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/display/SemDeviceInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 98
    if-eqz p1, :cond_f3

    .line 99
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f3

    .line 100
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    goto/16 :goto_f3

    .line 104
    :cond_12
    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    if-nez v0, :cond_23

    .line 105
    new-instance v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v2

    invoke-direct {v0, p0, p2, v2}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mDlnaMonitor:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    .line 107
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState :: isStandbyModeOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->isStandbyModeOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getDlnaPlayerType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getDlnaConnectionState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/DlnaController;->dlnaConnectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v2, "DlnaController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->isStandbyModeOn()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_d3

    .line 112
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    if-eqz v0, :cond_f2

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/display/DlnaController;->updateStandbyModePlayerState(II)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 113
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    if-eqz v0, :cond_c7

    if-eq v0, v4, :cond_8f

    if-eq v0, v3, :cond_c7

    goto :goto_d2

    .line 115
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Player type changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DlnaDevice;->getPlayerType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/DlnaController;->dlnaPlayerTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setPlayerType(I)V

    .line 118
    goto :goto_d2

    .line 121
    :cond_c7
    invoke-direct {p0}, Lcom/android/server/display/DlnaController;->requestStandbyModeReadyImage()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 122
    iget-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DlnaDevice;->setPlayerType(I)V

    .line 124
    :cond_d2
    :goto_d2
    goto :goto_f2

    .line 128
    :cond_d3
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    if-eqz v0, :cond_eb

    if-eq v0, v4, :cond_de

    if-eq v0, v3, :cond_eb

    goto :goto_f2

    .line 130
    :cond_de
    invoke-direct {p0, p1}, Lcom/android/server/display/DlnaController;->createDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)Lcom/android/server/display/DlnaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/display/DlnaController;->setLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V

    .line 132
    invoke-direct {p0, v4}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    .line 133
    goto :goto_f2

    .line 136
    :cond_eb
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V

    .line 141
    :cond_f2
    :goto_f2
    return-void

    .line 101
    :cond_f3
    :goto_f3
    return-void
.end method
