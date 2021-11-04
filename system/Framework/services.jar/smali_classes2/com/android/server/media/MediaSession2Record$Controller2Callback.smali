.class Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSession2Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSession2Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/MediaSession2Record;
    .param p2, "x1"    # Lcom/android/server/media/MediaSession2Record$1;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 6
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "allowedCommands"    # Landroid/media/Session2CommandGroup;

    .line 177
    # getter for: Lcom/android/server/media/MediaSession2Record;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;
    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession2Record"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2a
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_31
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->access$402(Lcom/android/server/media/MediaSession2Record;Z)Z

    .line 182
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_44

    .line 183
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 184
    return-void

    .line 182
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/MediaController2;

    .line 188
    # getter for: Lcom/android/server/media/MediaSession2Record;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;
    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession2Record"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_29
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSession2Record;->access$402(Lcom/android/server/media/MediaSession2Record;Z)Z

    .line 193
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3c

    .line 194
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 195
    return-void

    .line 193
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .registers 5
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "playbackActive"    # Z

    .line 199
    # getter for: Lcom/android/server/media/MediaSession2Record;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playback active changed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;
    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession2Record"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2b
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    # getter for: Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V

    .line 204
    return-void
.end method
