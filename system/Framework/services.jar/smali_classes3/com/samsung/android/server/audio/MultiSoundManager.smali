.class public Lcom/samsung/android/server/audio/MultiSoundManager;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;,
        Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;,
        Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;,
        Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64

.field private static final ID_HEADUP_NOTIFICATION:I = 0x3ed

.field private static final ID_NOTIFICATION:I = 0x3ec

.field private static final MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "AudioCore_Notification"

.field private static final TAG:Ljava/lang/String; = "AS.MultiSoundManager"

.field private static final sLastSetDeviceToNativeLock:Ljava/lang/Object;

.field private static sLastSetDeviceToNativeTime:J


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

.field private final mMultiSoundLock:Ljava/lang/Object;

.field private mNm:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field private mVolumeTable:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    .line 71
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/high16 v1, 0x4000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    .line 91
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "multiSoundInterface"    # Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    .param p3, "audioHandler"    # Landroid/os/Handler;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 123
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 124
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 128
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->makeVolumeTable()V

    .line 130
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    .line 131
    iput-object p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 133
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    return-object v0
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 995
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 996
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    return v3

    .line 1000
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    throw v2

    .line 997
    :catch_17
    move-exception v2

    .line 1000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    nop

    .line 1002
    const/4 v2, 0x0

    return v2
.end method

.method private isSpeakerOut(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 439
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getCurrentMediaDevice()I

    move-result v0

    .line 440
    .local v0, "musicStreamDevice":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 442
    .local v1, "currentIsSpeaker":Z
    :goto_f
    iget-boolean v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v4, :cond_14

    .line 443
    return v1

    .line 447
    :cond_14
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v4

    .line 448
    .local v4, "multiSoundDevice":I
    if-nez v4, :cond_1b

    .line 449
    return v1

    .line 452
    :cond_1b
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    return v2
.end method

.method static synthetic lambda$setDeviceToNative$0(Lcom/samsung/android/media/AudioParameter;)V
    .registers 2
    .param p0, "param"    # Lcom/samsung/android/media/AudioParameter;

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method

.method private makeVolumeTable()V
    .registers 8

    .line 139
    const/16 v0, 0x65

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 141
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x64

    aput v1, v0, v2

    .line 144
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2e

    .line 145
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x3fec000000000000L    # -5.0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 147
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private resetByEnableDisable()V
    .registers 8

    .line 175
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "resetByEnableDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v1, :cond_1f

    .line 179
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_1e

    .line 180
    :catch_15
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException - registerProcessObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    goto :goto_32

    .line 186
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29

    .line 190
    goto :goto_32

    .line 187
    :catch_29
    move-exception v1

    .line 188
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException - unregisterProcessObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 196
    .local v0, "curDevice":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 198
    .local v3, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_5a

    .line 199
    goto :goto_46

    .line 202
    :cond_5a
    iget-boolean v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v4, :cond_72

    const v4, 0x8000

    if-eq v0, v4, :cond_72

    .line 203
    iget v4, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v4

    .line 204
    .local v4, "appDevice":I
    if-eq v0, v4, :cond_72

    .line 205
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v6, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v5, v6}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    .line 209
    .end local v4    # "appDevice":I
    :cond_72
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v5, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v4, v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateFocusRequester(I)V

    .line 210
    .end local v3    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    goto :goto_46

    .line 212
    :cond_7a
    invoke-direct {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    .line 213
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 982
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 983
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 986
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    nop

    .line 990
    return-void

    .line 988
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    throw v2
.end method

.method private sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "exceptPackages"    # [Ljava/lang/String;

    .line 928
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 930
    .local v4, "ident":J
    :try_start_a
    iget-object v0, v1, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_ec

    .line 932
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    nop

    .line 934
    iget-object v6, v1, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6, v2}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, "activityList":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "send intent except "

    const-string v11, "sendBecomingNoisyIntentToUnpinApps to "

    const-string v12, "AS.MultiSoundManager"

    if-eqz v9, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 938
    .local v9, "resolveinfo":Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x0

    .line 939
    .local v13, "except":Z
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v14, :cond_3b

    goto :goto_23

    .line 941
    :cond_3b
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 942
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_46

    goto :goto_23

    .line 944
    :cond_46
    array-length v15, v3

    :goto_47
    if-ge v7, v15, :cond_6c

    move-object/from16 v16, v0

    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    aget-object v0, v3, v7

    .line 945
    .local v0, "exceptPkg":Ljava/lang/String;
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_67

    .line 946
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v13, 0x1

    .line 948
    goto :goto_6e

    .line 944
    .end local v0    # "exceptPkg":Ljava/lang/String;
    :cond_67
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    goto :goto_47

    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6c
    move-object/from16 v16, v0

    .line 952
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_6e
    if-eqz v13, :cond_74

    move-object/from16 v0, v16

    const/4 v7, 0x0

    goto :goto_23

    .line 954
    :cond_74
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v9    # "resolveinfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "except":Z
    .end local v14    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    const/4 v7, 0x0

    goto :goto_23

    .line 961
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_98
    move-object/from16 v16, v0

    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    array-length v0, v6

    const/4 v7, 0x0

    :goto_9c
    if-ge v7, v0, :cond_eb

    aget-object v8, v6, v7

    .line 962
    .local v8, "activityName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 963
    .local v9, "except":Z
    if-eqz v8, :cond_e8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_aa

    goto :goto_e8

    .line 965
    :cond_aa
    array-length v13, v3

    const/4 v14, 0x0

    :goto_ac
    if-ge v14, v13, :cond_cd

    aget-object v15, v3, v14

    .line 966
    .local v15, "exceptPkg":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ca

    .line 967
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v9, 0x1

    .line 969
    goto :goto_cd

    .line 965
    .end local v15    # "exceptPkg":Ljava/lang/String;
    :cond_ca
    add-int/lit8 v14, v14, 0x1

    goto :goto_ac

    .line 973
    :cond_cd
    :goto_cd
    if-eqz v9, :cond_d0

    goto :goto_e8

    .line 975
    :cond_d0
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 977
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .end local v8    # "activityName":Ljava/lang/String;
    .end local v9    # "except":Z
    :cond_e8
    :goto_e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c

    .line 979
    :cond_eb
    return-void

    .line 932
    .end local v6    # "activityList":[Ljava/lang/String;
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_ec
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    throw v0
.end method

.method private setDeviceToNative(III)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "device"    # I
    .param p3, "delay"    # I

    .line 646
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 647
    const-string v1, "l_multi_sound_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 648
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 649
    const-string v1, "device"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 652
    .local v0, "param":Lcom/samsung/android/media/AudioParameter;
    sget-object v1, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    .line 654
    .local v2, "time":J
    sget-wide v4, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_30

    .line 655
    sget-wide v4, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    const-wide/16 v6, 0x1e

    add-long v2, v4, v6

    .line 657
    :cond_30
    sput-wide v2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    .line 658
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/server/audio/-$$Lambda$MultiSoundManager$M2NNmmwir5EhEKwMClzea7RnU30;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/audio/-$$Lambda$MultiSoundManager$M2NNmmwir5EhEKwMClzea7RnU30;-><init>(Lcom/samsung/android/media/AudioParameter;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 659
    nop

    .end local v2    # "time":J
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_3f

    throw v2
.end method

.method private setStateToNative()V
    .registers 4

    .line 636
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 639
    goto :goto_1d

    .line 637
    :catch_6
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Thread.sleep() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.MultiSoundManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_multi_sound_key;enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 643
    return-void
.end method


# virtual methods
.method public clearHeadUpNotification()V
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 805
    return-void
.end method

.method public clearNotification()V
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 753
    return-void
.end method

.method public disable()V
    .registers 3

    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 161
    return-void

    .line 164
    :cond_5
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->clearNotification()V

    .line 168
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 602
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMultiSound, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_121

    .line 607
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 608
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 609
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 610
    .local v3, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const-string v4, ""

    .line 612
    .local v4, "packageName":Ljava/lang/String;
    :try_start_48
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_57

    move-object v4, v5

    .line 615
    goto :goto_58

    .line 613
    :catch_57
    move-exception v5

    .line 616
    :goto_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), device=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 617
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    .end local v3    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_34

    .line 620
    :cond_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current Default Device: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    .line 621
    invoke-interface {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getCurrentMediaDevice()I

    move-result v2

    .line 620
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Pin Device: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Pin App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    const-string v1, "  SEC_AUDIO_MULTI_SOUND=true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const-string v1, "  SEC_AUDIO_SUPPORT_D2D=true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    const-string v2, "com.samsung.android.oneconnect"

    invoke-interface {v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->isInstalledApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 627
    const-string v1, "  Smart Things=install"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    :cond_116
    const-string v1, "  mPreventOverheatState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 632
    return-void

    .line 605
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    :catchall_121
    move-exception v1

    :try_start_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v1
.end method

.method public enable()V
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v0, :cond_5

    .line 151
    return-void

    .line 153
    :cond_5
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->showNotification()V

    .line 157
    return-void
.end method

.method public getAppDevice(I)I
    .registers 6
    .param p1, "uid"    # I

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "device":I
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 301
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v0

    .line 306
    const v1, 0x8000

    if-ne v0, v1, :cond_24

    .line 307
    return v0

    .line 310
    :cond_24
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v1, :cond_6a

    .line 311
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    .line 312
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getCurrentMediaDevice()I

    move-result v1

    .line 313
    .local v1, "cur_device":I
    sget-object v2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 314
    move v0, v1

    goto :goto_69

    .line 316
    :cond_3f
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getConnectedDevice()I

    move-result v2

    .line 317
    .local v2, "connected_device":I
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_4c

    .line 318
    const/16 v0, 0x4000

    goto :goto_69

    .line 319
    :cond_4c
    const/high16 v3, 0x4000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_54

    .line 321
    const/high16 v0, 0x4000000

    goto :goto_69

    .line 322
    :cond_54
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5a

    .line 324
    const/4 v0, 0x4

    goto :goto_69

    .line 325
    :cond_5a
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_61

    .line 327
    const/16 v0, 0x8

    goto :goto_69

    .line 328
    :cond_61
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_68

    .line 330
    const/16 v0, 0x400

    goto :goto_69

    .line 332
    :cond_68
    const/4 v0, 0x2

    .line 335
    .end local v1    # "cur_device":I
    .end local v2    # "connected_device":I
    :goto_69
    goto :goto_6b

    .line 337
    :cond_6a
    const/4 v0, 0x0

    .line 339
    :cond_6b
    :goto_6b
    return v0

    .line 303
    :cond_6c
    return v0
.end method

.method public getAppDevice(IZ)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "forced"    # Z

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "device":I
    if-eqz p2, :cond_21

    .line 288
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 289
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v0

    goto :goto_25

    .line 292
    :cond_21
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v0

    .line 294
    :cond_25
    :goto_25
    return v0
.end method

.method public getAppVolume(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 381
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 383
    .local v1, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    if-eqz v1, :cond_17

    .line 384
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v2

    monitor-exit v0

    return v2

    .line 387
    :cond_17
    const/16 v2, 0x64

    monitor-exit v0

    return v2

    .line 388
    .end local v1    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getAppVolumeFloat(I)F
    .registers 7
    .param p1, "uid"    # I

    .line 392
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 394
    .local v1, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/high16 v2, 0x3f800000    # 1.0f

    .line 395
    .local v2, "volume":F
    if-eqz v1, :cond_1c

    .line 396
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v4

    aget v3, v3, v4

    move v2, v3

    .line 399
    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 400
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->needLimitVolumeForApp(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 401
    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->isSpeakerOut(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 402
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    # getter for: Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F
    invoke-static {v3}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->access$200(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 405
    :cond_31
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->isShouldMute()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 406
    const/4 v2, 0x0

    .line 409
    :cond_3a
    monitor-exit v0

    return v2

    .line 410
    .end local v1    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    .end local v2    # "volume":F
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public getDeviceMultiSoundUsingActually()I
    .registers 6

    .line 542
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 543
    return v1

    .line 546
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 547
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 548
    .local v3, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_29

    .line 549
    goto :goto_15

    .line 552
    :cond_29
    iget v4, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-static {v4}, Lcom/samsung/android/server/audio/AudioHelper;->isUsingAudioForUid(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 553
    iget v1, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v1

    return v1

    .line 555
    .end local v3    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    :cond_38
    goto :goto_15

    .line 556
    :cond_39
    return v1
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .registers 14
    .param p1, "device"    # I

    .line 488
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_b

    .line 490
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 492
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 493
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 494
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 495
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v5

    if-eq v5, p1, :cond_32

    .line 496
    goto :goto_15

    .line 499
    :cond_32
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v5, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "packages":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v7, v5, v6

    .line 501
    .local v7, "multiSoundPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v8}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getMultiSoundAppFromSetting()Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "multiSoundAppInSetting":Ljava/lang/String;
    array-length v9, v5

    :goto_42
    if-ge v6, v9, :cond_51

    aget-object v10, v5, v6

    .line 505
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_67

    if-eqz v11, :cond_4e

    .line 506
    move-object v7, v10

    .line 507
    goto :goto_51

    .line 504
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 512
    :cond_51
    :goto_51
    :try_start_51
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v6, v7}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_59
    .catchall {:try_start_51 .. :try_end_57} :catchall_67

    :try_start_57
    monitor-exit v0

    return-object v2

    .line 513
    :catch_59
    move-exception v6

    .line 514
    .local v6, "e":Ljava/lang/Exception;
    const-string v9, "AS.MultiSoundManager"

    const-string v10, "not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    .end local v4    # "uid":I
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "multiSoundPackage":Ljava/lang/String;
    .end local v8    # "multiSoundAppInSetting":Ljava/lang/String;
    goto :goto_15

    .line 517
    :cond_63
    const-string v2, ""

    monitor-exit v0

    return-object v2

    .line 518
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_67

    throw v1
.end method

.method public getPinDevice()I
    .registers 7

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "device":I
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_6

    return v0

    .line 470
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 472
    .local v3, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_29

    .line 473
    goto :goto_15

    .line 476
    :cond_29
    iget v4, v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v4

    .line 477
    .local v4, "appDevice":I
    if-eqz v4, :cond_38

    const v5, 0x8000

    if-eq v4, v5, :cond_38

    .line 479
    move v0, v4

    .line 480
    goto :goto_39

    .line 482
    .end local v3    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    .end local v4    # "appDevice":I
    :cond_38
    goto :goto_15

    .line 484
    :cond_39
    :goto_39
    return v0
.end method

.method public getPinPackageName(I)[Ljava/lang/String;
    .registers 9
    .param p1, "device"    # I

    .line 560
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 563
    .local v3, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_42

    if-ne v4, p1, :cond_39

    .line 565
    :try_start_25
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_31
    .catchall {:try_start_25 .. :try_end_2f} :catchall_42

    :try_start_2f
    monitor-exit v0

    return-object v2

    .line 566
    :catch_31
    move-exception v4

    .line 567
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "AS.MultiSoundManager"

    const-string v6, "not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v3    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_39
    goto :goto_12

    .line 571
    :cond_3a
    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 572
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getPreventOverheatState()Z
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    # getter for: Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->access$300(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)Z

    move-result v0

    return v0
.end method

.method public isAppMute(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;->INSTANCE:Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;

    .line 433
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 434
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    .line 432
    return v1

    .line 435
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public isEnabled()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    return v0
.end method

.method public removeItem(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 590
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 592
    const-string v1, "AS.MultiSoundManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeItem, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 595
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 597
    :cond_35
    monitor-exit v0

    return v2

    .line 598
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public resetByAudioServerDied()V
    .registers 9

    .line 576
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_3
    const-string v1, "AS.MultiSoundManager"

    const-string v2, "resetByAudioServerDied"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 580
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 581
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 582
    .local v4, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 583
    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 584
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    .end local v4    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    goto :goto_14

    .line 585
    :cond_3b
    invoke-direct {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    .line 586
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public resetPinDevice()V
    .registers 7

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 528
    .local v2, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_23

    .line 529
    goto :goto_f

    .line 531
    :cond_23
    iget v4, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppDevice(IIZ)V

    .line 532
    .end local v2    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    goto :goto_f

    .line 533
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->disable()V

    .line 534
    return-void
.end method

.method public sendBecomingNoisyIntentToUnpinApps(I)V
    .registers 7
    .param p1, "device"    # I

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBecomingNoisyIntentToUnpinApps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.MultiSoundManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v0

    .line 908
    .local v0, "pinDevice":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinPackageName(I)[Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "pinPackageName":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 913
    const/4 v3, 0x1

    const-string v4, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    :cond_3a
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 917
    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 919
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    :cond_4c
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public sendBecomingNoisyToPinnedApp(I)V
    .registers 7
    .param p1, "device"    # I

    .line 456
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 458
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 460
    .local v2, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    iget v3, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v3

    if-ne v3, p1, :cond_2f

    .line 461
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v4, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    .line 463
    .end local v2    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    :cond_2f
    goto :goto_14

    .line 464
    :cond_30
    return-void
.end method

.method public setAppDevice(IIZ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "device"    # I
    .param p3, "shouldShowNotification"    # Z

    .line 216
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 217
    .local v0, "curDevice":I
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    const-string v3, "setAppDevice"

    invoke-interface {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 219
    const-string v2, "AS.MultiSoundManager"

    const-string v3, "setAppDevice: permission error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v1

    return-void

    .line 222
    :cond_1b
    sget-object v2, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 223
    const-string v2, "AS.MultiSoundManager"

    const-string v3, "setAppDevice: unsupported device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v1

    return-void

    .line 227
    :cond_30
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 229
    .local v2, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-ne v4, p2, :cond_4e

    .line 230
    const-string v3, "AS.MultiSoundManager"

    const-string v4, "same device pin."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v1

    return-void

    .line 233
    :cond_4e
    sget-object v4, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 234
    const/4 v0, 0x2

    .line 236
    :cond_5b
    const/4 v4, 0x0

    if-eqz p2, :cond_cd

    const v5, 0x8000

    if-eq p2, v5, :cond_cd

    .line 239
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 240
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6d
    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 241
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    move-object v2, v9

    .line 243
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v9

    if-eqz v9, :cond_6d

    .line 244
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v9

    if-ne v9, v5, :cond_8d

    .line 245
    goto :goto_6d

    .line 248
    :cond_8d
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v9

    if-eq p1, v9, :cond_cc

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "delay":I
    iget-boolean v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v5, :cond_a5

    if-eq p2, v0, :cond_a5

    .line 251
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    .line 252
    const/16 v3, 0xc8

    .line 254
    :cond_a5
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    .line 255
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    invoke-direct {p0, v5, v4, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 256
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateFocusRequester(I)V

    .line 257
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 258
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 262
    .end local v3    # "delay":I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;"
    :cond_cc
    goto :goto_6d

    .line 266
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;>;>;"
    :cond_cd
    :goto_cd
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    move-object v2, v3

    .line 267
    if-nez v2, :cond_e5

    .line 268
    new-instance v3, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/16 v5, 0x64

    invoke-direct {v3, p1, p2, v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    move-object v2, v3

    goto :goto_e8

    .line 270
    :cond_e5
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    .line 273
    :goto_e8
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 274
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_101

    .line 276
    :cond_f8
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_101
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 279
    .end local v2    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_8 .. :try_end_105} :catchall_113

    .line 280
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v1, :cond_112

    if-ne p2, v0, :cond_112

    if-eqz p3, :cond_112

    .line 281
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->showHeadUpNotification(I)V

    .line 283
    :cond_112
    return-void

    .line 279
    :catchall_113
    move-exception v2

    :try_start_114
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v2
.end method

.method public setAppMute(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "shouldMute"    # Z

    .line 414
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 416
    .local v1, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    if-nez v1, :cond_1a

    .line 417
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v2, p1, v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    move-object v1, v2

    .line 419
    :cond_1a
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setShouldMute(Z)V

    .line 421
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 422
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 424
    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v1    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    .line 427
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 428
    return-void

    .line 426
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public setAppVolume(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .line 343
    const/16 v0, 0x64

    if-gt p2, v0, :cond_4a

    if-gez p2, :cond_7

    goto :goto_4a

    .line 348
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 351
    .local v2, "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    const/4 v3, 0x0

    .line 352
    .local v3, "remove":Z
    if-nez v2, :cond_25

    .line 353
    if-ne p2, v0, :cond_1d

    .line 354
    monitor-exit v1

    return-void

    .line 356
    :cond_1d
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    move-object v2, v0

    goto :goto_2d

    .line 358
    :cond_25
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    .line 359
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v0

    move v3, v0

    .line 362
    :goto_2d
    if-eqz v3, :cond_39

    .line 363
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 365
    :cond_39
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v2    # "item":Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
    .end local v3    # "remove":Z
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_47

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 369
    return-void

    .line 367
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 344
    :cond_4a
    :goto_4a
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "setAppVolume: Invalid volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public setAppVolumeToNative(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 372
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    # getter for: Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I
    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->access$100(Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;)I

    move-result v0

    if-ne v0, p1, :cond_10

    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 375
    :cond_10
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 377
    :goto_17
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public setLimitedVolumeForOverheat()V
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setLimitedVolumeForOverheat()V

    .line 668
    return-void
.end method

.method public setPreventOverheatState(I)V
    .registers 3
    .param p1, "device"    # I

    .line 675
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setDevice(I)V

    .line 676
    return-void
.end method

.method public setPreventOverheatState(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .line 663
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setState(IZ)V

    .line 664
    return-void
.end method

.method public showHeadUpNotification(II)V
    .registers 15
    .param p1, "device"    # I
    .param p2, "priorityDevice"    # I

    .line 756
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 757
    .local v1, "list":[Landroid/media/AudioDeviceInfo;
    const-string v2, ""

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "deviceName":[Ljava/lang/String;
    new-array v3, v0, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 760
    .local v3, "deviceType":[I
    sget-object v6, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    aget v7, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    aget v7, v3, v5

    .line 761
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 762
    return-void

    .line 765
    :cond_30
    const/4 v6, 0x0

    .local v6, "deviceNum":I
    :goto_31
    array-length v7, v3

    if-ge v6, v7, :cond_7e

    .line 766
    aget v7, v3, v6

    if-eq v7, v0, :cond_6b

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5b

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5b

    .line 775
    array-length v7, v1

    move v8, v4

    :goto_41
    if-ge v8, v7, :cond_7b

    aget-object v9, v1, v8

    .line 776
    .local v9, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    move-result v10

    aget v11, v3, v6

    if-ne v10, v11, :cond_58

    .line 777
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 778
    goto :goto_7b

    .line 775
    .end local v9    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 772
    :cond_5b
    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040517

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 773
    goto :goto_7b

    .line 768
    :cond_6b
    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040720

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 769
    nop

    .line 765
    :cond_7b
    :goto_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 783
    .end local v6    # "deviceNum":I
    :cond_7e
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v7, 0x104070c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aget-object v8, v2, v4

    aput-object v8, v7, v5

    aget-object v8, v2, v5

    aput-object v8, v7, v0

    .line 783
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 785
    .local v6, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.audio.headup.changedevice"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x8000000

    invoke-static {v7, v5, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 788
    .local v7, "pi":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v10, "AudioCore_Notification"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 790
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x10809f7

    .line 791
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v10, 0x104070d

    .line 792
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 793
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 794
    invoke-virtual {v9, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 795
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 796
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v8, 0x104070a

    .line 797
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 798
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 800
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v5, 0x3ed

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 801
    return-void
.end method

.method public showNotification()V
    .registers 13

    .line 691
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_5

    .line 692
    return-void

    .line 695
    :cond_5
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 696
    .local v0, "curDevice":I
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v1

    .line 698
    .local v1, "pinnedDevice":I
    if-eqz v1, :cond_ff

    if-ne v0, v1, :cond_14

    goto/16 :goto_ff

    .line 702
    :cond_14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.Launch_Setting"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v2, "launchSettingIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.setting.multisound"

    const-string v4, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 708
    .local v3, "piSetting":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.TurnOff_MultiSound"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v4, "turnOffIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 711
    .local v6, "piTurnOff":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v9, "AudioCore_Notification"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 714
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eq v1, v8, :cond_8b

    const/16 v8, 0x8

    if-eq v1, v8, :cond_8b

    const/16 v8, 0x80

    if-eq v1, v8, :cond_79

    const/16 v8, 0x4000

    if-eq v1, v8, :cond_67

    const/high16 v8, 0x4000000

    if-eq v1, v8, :cond_67

    .line 730
    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v10, 0x1040711

    new-array v9, v9, [Ljava/lang/Object;

    .line 731
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v5

    .line 730
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "contents":Ljava/lang/String;
    goto :goto_9d

    .line 726
    .end local v8    # "contents":Ljava/lang/String;
    :cond_67
    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v10, 0x1040712

    new-array v9, v9, [Ljava/lang/Object;

    .line 727
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v5

    .line 726
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 728
    .restart local v8    # "contents":Ljava/lang/String;
    goto :goto_9d

    .line 721
    .end local v8    # "contents":Ljava/lang/String;
    :cond_79
    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v10, 0x104070f

    new-array v9, v9, [Ljava/lang/Object;

    .line 722
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v5

    .line 721
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 723
    .restart local v8    # "contents":Ljava/lang/String;
    goto :goto_9d

    .line 717
    .end local v8    # "contents":Ljava/lang/String;
    :cond_8b
    iget-object v8, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v10, 0x1040710

    new-array v9, v9, [Ljava/lang/Object;

    .line 718
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v5

    .line 717
    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 719
    .restart local v8    # "contents":Ljava/lang/String;
    nop

    .line 734
    :goto_9d
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v11, 0x1040713

    .line 735
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x10809f7

    .line 736
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 737
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 738
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v9, 0x0

    .line 739
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 740
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 742
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104070e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 741
    const v10, 0x1080078

    invoke-virtual {v5, v10, v9, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 745
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1040714

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 744
    invoke-virtual {v5, v10, v9, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 748
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v9, 0x3ec

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 749
    return-void

    .line 699
    .end local v2    # "launchSettingIntent":Landroid/content/Intent;
    .end local v3    # "piSetting":Landroid/app/PendingIntent;
    .end local v4    # "turnOffIntent":Landroid/content/Intent;
    .end local v6    # "piTurnOff":Landroid/app/PendingIntent;
    .end local v7    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "contents":Ljava/lang/String;
    :cond_ff
    :goto_ff
    return-void
.end method

.method public showToast()V
    .registers 6

    .line 808
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 809
    .local v0, "ToastContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 810
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040713

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 809
    const v3, 0x1040707

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 812
    return-void
.end method

.method public updateAudioServiceNotificationChannel()V
    .registers 5

    .line 679
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const-string v1, "AudioCore_Notification"

    if-eqz v0, :cond_9

    .line 680
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 683
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 684
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040720

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 687
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 688
    return-void
.end method
