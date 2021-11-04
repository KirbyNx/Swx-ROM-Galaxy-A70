.class public Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;
.super Ljava/lang/Object;
.source "MediaKeyEventSessionListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.MediaButtonListener"


# instance fields
.field private mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

.field private mCurMediaKeyEventSessionPackage:Ljava/lang/String;

.field private mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/samsung/android/server/audio/-$$Lambda$MediaKeyEventSessionListener$jv8m1UPW-bfGxHDILxPElTxbVq4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/-$$Lambda$MediaKeyEventSessionListener$jv8m1UPW-bfGxHDILxPElTxbVq4;-><init>(Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    return-void
.end method


# virtual methods
.method public addOnMediaKeyEventSessionChangedListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 36
    .local v0, "msm":Landroid/media/session/MediaSessionManager;
    if-nez v0, :cond_b

    .line 37
    return-void

    .line 39
    :cond_b
    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 40
    return-void
.end method

.method public getCurMediaKeyEventSession()Landroid/media/session/MediaSession$Token;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getCurMediaKeyEventSessionPackage()Ljava/lang/String;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$new$0$MediaKeyEventSessionListener(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mCurMediaKeyEventSessionPackage:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mCurMediaKeyEventSession:Landroid/media/session/MediaSession$Token;

    .line 29
    const-string v1, "AS.MediaButtonListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediabutton Session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 31
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public removeMediaKeyEventSessionChangedListener(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 57
    .local v0, "msm":Landroid/media/session/MediaSessionManager;
    if-nez v0, :cond_b

    .line 58
    return-void

    .line 60
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/MediaKeyEventSessionListener;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 61
    return-void
.end method
