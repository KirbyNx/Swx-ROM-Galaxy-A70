.class public Lcom/samsung/android/server/audio/AudioGameManager;
.super Ljava/lang/Object;
.source "AudioGameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioGameManager"

.field private static final mMaxGameIdx:I = 0x100


# instance fields
.field private mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

.field private final mContext:Landroid/content/Context;

.field private mSemGameManager:Lcom/samsung/android/game/SemGameManager;

.field private mUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;-><init>(Lcom/samsung/android/server/audio/AudioGameManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->start()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/AudioGameManager;)Lcom/samsung/android/game/SemGameManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/AudioGameManager;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/audio/AudioGameManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/AudioGameManager;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/audio/AudioGameManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/AudioGameManager;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addGameUid(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "setParamToNative"    # Z

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    if-eqz p2, :cond_1d

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 58
    :cond_1d
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public deleteGameUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    .local v1, "deleteUid":Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 68
    .end local v1    # "deleteUid":Ljava/lang/Object;
    :cond_1b
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public isGamePackager(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_d
    const-string v1, "dolbygametest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_13} :catch_17

    if-eqz v1, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    return v0

    .line 94
    :catch_17
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalStateException;
    return v0
.end method

.method public setParamGameUidList()V
    .registers 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "gameParamKeyValue":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    const-string v1, "g_game_uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 77
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 79
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 81
    :try_start_2d
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    .local v3, "uid":I
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    nop

    .end local v3    # "uid":I
    goto :goto_33

    .line 85
    :cond_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_5f

    .line 87
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioGameManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 89
    return-void

    .line 85
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method
