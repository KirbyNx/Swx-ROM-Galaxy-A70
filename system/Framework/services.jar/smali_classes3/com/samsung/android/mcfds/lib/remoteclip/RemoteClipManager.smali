.class public Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;
.super Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.source "RemoteClipManager.java"


# static fields
.field public static final DOWNLOAD_REASON_CANCELED:I = 0x2

.field public static final DOWNLOAD_REASON_FAILED:I = 0x1

.field public static final DOWNLOAD_REASON_INVALID_REQUEST:I = 0x3

.field public static final DOWNLOAD_REASON_SUCCESS:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;)V
    .registers 3
    .param p1, "coreInterface"    # Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 21
    const-string v0, "[MCF_DS_LIB]_RemoteClipManager"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager;-><init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .registers 4
    .param p1, "remoteClipId"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 81
    return-void

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "rclip_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    .line 88
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    .line 89
    return-void
.end method

.method public registerRemoteClipStateListener(Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "registerRemoteClipStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 28
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    .line 29
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 30
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    .line 31
    return-void

    .line 33
    :cond_25
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->addPendingMessage(Landroid/os/Message;)V

    .line 34
    return-void
.end method

.method public remove()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    .line 62
    return-void

    .line 64
    :cond_18
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->removePendingMessageByCommand(I)V

    .line 65
    return-void
.end method

.method public requestDownload(Ljava/lang/String;Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)Z
    .registers 7
    .param p1, "remoteClipId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 69
    return v1

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v2, "requestDownload"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p2}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "CALLBACK"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    const-string v2, "rclip_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 v2, 0x68

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    .line 76
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method public start()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendPendingMessages()V

    .line 98
    return-void
.end method

.method public stop()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public unregisterRemoteClipStateListener()V
    .registers 3

    .line 37
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    .line 38
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    .line 40
    return-void

    .line 42
    :cond_11
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->removePendingMessageByCommand(I)V

    .line 43
    return-void
.end method

.method public update(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "clipBundle"    # Landroid/os/Bundle;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    .line 49
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 50
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->sendMessage(Landroid/os/Message;)I

    .line 51
    return-void

    .line 53
    :cond_17
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->removePendingMessageByCommand(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->addPendingMessage(Landroid/os/Message;)V

    .line 55
    return-void
.end method
