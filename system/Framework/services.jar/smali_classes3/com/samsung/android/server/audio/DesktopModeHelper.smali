.class public Lcom/samsung/android/server/audio/DesktopModeHelper;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.DesktopModeHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;


# instance fields
.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDexConnectedState:Z

.field private mDexPadConnectedState:Z

.field private mDexState:Z

.field private mIsDesktopMode:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper$1;-><init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    .line 81
    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DesktopModeHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DesktopModeHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/server/audio/DesktopModeHelper;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    if-nez v1, :cond_e

    .line 87
    new-instance v1, Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 89
    :cond_e
    sget-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 85
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setDexParameter(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "dexValue"    # Ljava/lang/String;
    .param p2, "dexConnectedState"    # Z

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_dex_key;type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private setDexPolicyParameter(Ljava/lang/String;)V
    .registers 4
    .param p1, "dexValue"    # Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_dex_key;path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 180
    return-void
.end method


# virtual methods
.method public isDesktopMode()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return v0
.end method

.method public isDexConnectedState()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    return v0
.end method

.method public isDexPadConnectedState()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return v0
.end method

.method public registerListener()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string v1, "AS.DesktopModeHelper"

    if-eqz v0, :cond_11

    .line 94
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 95
    const-string v0, "DEX registration is successful"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 97
    :cond_11
    const-string v0, "DEX registration is failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    .line 102
    return-void
.end method

.method public restoreDexState()V
    .registers 3

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-eqz v0, :cond_7

    const-string v0, "dex"

    goto :goto_9

    :cond_7
    const-string v0, "none"

    :goto_9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    const-string v1, "station"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    const-string v1, "pad"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public setDexConnectedState(Z)V
    .registers 2
    .param p1, "dexConnectedState"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 127
    return-void
.end method

.method public setDexPadConnectedState(Z)V
    .registers 2
    .param p1, "dexPadConnectedState"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    .line 135
    return-void
.end method

.method public unRegisterListener()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    .line 109
    return-void
.end method

.method public updateDexConnectionState(II)V
    .registers 3
    .param p1, "currentDockState"    # I
    .param p2, "dockState"    # I

    .line 167
    return-void
.end method

.method public updateDexState()V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "audio_output_to_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    .local v0, "isAudioOutputToDisplay":Z
    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 114
    .local v1, "service":Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isDesktopModeAvailableEx(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3d

    if-nez v0, :cond_3d

    iget-boolean v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-nez v2, :cond_3d

    .line 115
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 116
    const-string v2, "dex"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The dex mode is available. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.DesktopModeHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3d
    return-void
.end method
