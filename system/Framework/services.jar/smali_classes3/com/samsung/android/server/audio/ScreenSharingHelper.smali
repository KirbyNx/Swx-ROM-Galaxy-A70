.class public Lcom/samsung/android/server/audio/ScreenSharingHelper;
.super Ljava/lang/Object;
.source "ScreenSharingHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.ScreenSharingHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

.field private static sIsWifiDisplayConnected:Z

.field private static sSplitSoundEnabled:Z


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/audio/FrequentWorker<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDLNAEnabled:Z

.field private mIsPresentationMode:Z

.field private mIsSupportDisplayVolumeControl:Z

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private final mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSharingStateResumed:Z

.field private mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 50
    sput-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaFocusControl"    # Lcom/android/server/audio/MediaFocusControl;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 59
    new-instance v1, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    .line 97
    new-instance v1, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    .line 257
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 258
    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 119
    iput-object p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Lcom/android/server/audio/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)Lcom/samsung/android/server/audio/ScreenSharingHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaFocusControl"    # Lcom/android/server/audio/MediaFocusControl;

    .line 123
    sget-object v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;-><init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V

    sput-object v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 126
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    return-object v0
.end method

.method public static isAllowed(Landroid/media/AudioAttributes;)Z
    .registers 3
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 130
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 138
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static isSplitSoundEnabled()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    return v0
.end method

.method public static isWifiDisplayConnected()Z
    .registers 1

    .line 150
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    return v0
.end method

.method public static setSplitSoundEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 146
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 147
    return-void
.end method

.method public static setWifiDisplayConnected(Z)V
    .registers 1
    .param p0, "wifiDisplayConnected"    # Z

    .line 154
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    .line 155
    return-void
.end method


# virtual methods
.method public checkAndSetSplitSound(ZLandroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 6
    .param p1, "isExceptionalDevice"    # Z
    .param p2, "aa"    # Landroid/media/AudioAttributes;
    .param p3, "caller"    # Ljava/lang/String;

    .line 183
    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isAllowed(Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 184
    :cond_e
    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    if-nez p1, :cond_21

    const/4 v0, 0x3

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    goto :goto_24

    .line 188
    :cond_21
    invoke-static {v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 190
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_smart_view_split_sound_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 192
    :cond_3c
    return-void
.end method

.method public getLiveCaptionEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "odi_captions_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public isDLNAEnabled()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    return v0
.end method

.method public isScreenSharingStateResumed()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    return v0
.end method

.method public isSupportDisplayVolumeControl()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    return v0
.end method

.method public registerDeviceStatusListener(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    const-string v0, "l_smart_view_enable=true"

    .line 217
    .local v0, "param":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    if-eqz v1, :cond_32

    .line 218
    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 219
    .local v1, "wifiDisplay":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v1, :cond_32

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";support_voip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getConnectionMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 222
    const-string v3, "true"

    goto :goto_2b

    :cond_29
    const-string v3, "false"

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .end local v1    # "wifiDisplay":Landroid/hardware/display/SemWifiDisplay;
    :cond_32
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 228
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method public setDLNAEnabled(Z)V
    .registers 3
    .param p1, "DLNAEnabled"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 179
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    .line 180
    return-void
.end method

.method public setMirroingPolicyParameter(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 248
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    if-eqz v0, :cond_28

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    if-eqz v0, :cond_d

    .line 250
    :cond_c
    const/4 p1, 0x0

    .line 252
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_smart_view_mirroring_active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    if-eqz p1, :cond_1c

    const-string v1, "true"

    goto :goto_1e

    :cond_1c
    const-string v1, "false"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 255
    :cond_28
    return-void
.end method

.method public setScreenSharingStateResumed(Z)V
    .registers 2
    .param p1, "screenSharingStateResumed"    # Z

    .line 170
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 171
    return-void
.end method

.method public setSupportDisplayVolumeControl(Z)V
    .registers 2
    .param p1, "supportDisplayVolumeControl"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 163
    return-void
.end method

.method public tvVolumeShouldBeAdjusted(III)Z
    .registers 8
    .param p1, "stream"    # I
    .param p2, "flags"    # I
    .param p3, "device"    # I

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 196
    return v1

    .line 199
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 200
    return v2

    .line 203
    :cond_16
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1b

    .line 204
    return v2

    .line 207
    :cond_1b
    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 208
    return v1

    .line 211
    :cond_23
    const v3, 0x8000

    and-int/2addr v3, p3

    if-eqz v3, :cond_2c

    if-ne p1, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public unregisterDeviceStatusListener(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    const-string v0, "l_smart_view_enable=false"

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_smart_view_split_sound_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method
