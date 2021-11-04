.class public Lcom/samsung/android/server/audio/CoverHelper;
.super Ljava/lang/Object;
.source "CoverHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.CoverHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/CoverHelper;


# instance fields
.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mIsCoverSafetyVolume:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/CoverHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/server/audio/CoverHelper;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    if-nez v1, :cond_e

    .line 43
    new-instance v1, Lcom/samsung/android/server/audio/CoverHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/CoverHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    .line 45
    :cond_e
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isCoverOpen()Z
    .registers 3

    .line 49
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_COVER:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_16

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 52
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_16

    .line 53
    const/4 v1, 0x0

    return v1

    .line 56
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public isCoverSafetyVolume()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mIsCoverSafetyVolume:Z

    return v0
.end method

.method public setCoverSafetyVolume(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/CoverHelper;->mIsCoverSafetyVolume:Z

    .line 65
    return-void
.end method
