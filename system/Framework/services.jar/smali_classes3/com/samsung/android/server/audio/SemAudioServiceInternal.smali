.class public Lcom/samsung/android/server/audio/SemAudioServiceInternal;
.super Ljava/lang/Object;
.source "SemAudioServiceInternal.java"


# instance fields
.field private mAudioService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/audio/AudioService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method


# virtual methods
.method public getAppDevice(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 91
    .local v0, "audioService":Lcom/android/server/audio/AudioService;
    if-nez v0, :cond_c

    .line 92
    const/4 v1, 0x0

    return v1

    .line 94
    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result v1

    return v1
.end method

.method public getUidListUsingAudio()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 48
    .local v0, "audioService":Lcom/android/server/audio/AudioService;
    if-nez v0, :cond_f

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 52
    :cond_f
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 54
    .local v1, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .line 55
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurationsInternal()Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "playbackList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x2710

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 58
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    .line 59
    .local v6, "uid":I
    if-le v6, v5, :cond_45

    .line 60
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_3e

    .line 61
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 64
    :cond_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v6    # "uid":I
    :cond_45
    goto :goto_1d

    .line 68
    :cond_46
    nop

    .line 69
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getActiveRecordingConfigurationsInternal()Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "recorderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioRecordingConfiguration;

    .line 72
    .local v6, "arc":Landroid/media/AudioRecordingConfiguration;
    invoke-virtual {v6}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v7

    .line 73
    .local v7, "uid":I
    if-le v7, v5, :cond_68

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v6    # "arc":Landroid/media/AudioRecordingConfiguration;
    .end local v7    # "uid":I
    :cond_68
    goto :goto_4f

    .line 78
    :cond_69
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 79
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6d
    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService;->isUsingAudio(I)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 81
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_6d

    .line 85
    :cond_87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method
