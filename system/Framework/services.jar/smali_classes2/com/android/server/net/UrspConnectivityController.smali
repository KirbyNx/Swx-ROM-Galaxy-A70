.class public final Lcom/android/server/net/UrspConnectivityController;
.super Landroid/os/Handler;
.source "UrspConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;,
        Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;,
        Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_RELEASE_DEFAULT_CONNECTION:I = 0x2712

.field private static final MSG_REQUEST_DEFAULT_CONNECTION:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "UrspConnectivity"

.field private static final VDBG:Z = true


# instance fields
.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field public mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mUrspConnListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    .line 70
    const-string/jumbo v0, "start UrspConnectivityController"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/android/server/net/UrspConnectivityController;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspConnectivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 76
    .local v1, "mLooper":Landroid/os/Looper;
    if-eqz v1, :cond_2a

    .line 77
    new-instance v2, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;-><init>(Lcom/android/server/net/UrspConnectivityController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    goto :goto_30

    .line 79
    :cond_2a
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspConnectivityController;->logn(Ljava/lang/String;)V

    .line 81
    :goto_30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 82
    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspConnectivityController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/UrspConnectivityController;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->setRequestNetwork(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspConnectivityController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/UrspConnectivityController;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->setStopNetwork(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/UrspConnectivityController;IILandroid/net/Network;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/UrspConnectivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/Network;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 167
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 169
    :cond_10
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkCapability(I)I
    .registers 3
    .param p1, "networkType"    # I

    .line 253
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 261
    const/16 v0, 0xc

    return v0

    .line 258
    :cond_6
    const/16 v0, 0x1b

    return v0
.end method

.method private getNetworkTransport(I)I
    .registers 3
    .param p1, "networkType"    # I

    .line 266
    nop

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 308
    const-string v0, "UrspConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 313
    const-string v0, "UrspConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private declared-synchronized sendUrspConnBroadcast(IILandroid/net/Network;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "netId"    # I
    .param p3, "network"    # Landroid/net/Network;

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 150
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " send Ursp Conn broadcast, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_38

    .line 152
    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IUrspConnectionListener;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3f

    .line 153
    .local v2, "listener":Landroid/net/IUrspConnectionListener;
    if-eqz v2, :cond_35

    .line 155
    :try_start_28
    invoke-interface {v2, p1, p2, p3}, Landroid/net/IUrspConnectionListener;->onDataConnectionStateChanged(IILandroid/net/Network;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3f

    .line 159
    goto :goto_35

    .line 156
    .end local p0    # "this":Lcom/android/server/net/UrspConnectivityController;
    :catch_2c
    move-exception v3

    .line 157
    .local v3, "ignored":Landroid/os/RemoteException;
    :try_start_2d
    const-string v4, "Ursp Conn broadcast exception"

    invoke-static {v4}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v2    # "listener":Landroid/net/IUrspConnectionListener;
    .end local v3    # "ignored":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 162
    .end local v1    # "i":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3f

    .line 163
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "length":I
    .end local p1    # "type":I
    .end local p2    # "netId":I
    .end local p3    # "network":Landroid/net/Network;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setRequestNetwork(I)V
    .registers 8
    .param p1, "type"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequestNetwork - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_58

    .line 176
    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_26

    .line 177
    const-string v0, "Mdo already registered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_96

    .line 179
    :cond_26
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 181
    .local v1, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkTransport(I)I

    move-result v2

    .line 182
    .local v2, "transport":I
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkCapability(I)I

    move-result v3

    .line 183
    .local v3, "capability":I
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 184
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 188
    .local v4, "request":Landroid/net/NetworkRequest;
    new-instance v5, Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;

    invoke-direct {v5, p0, v0}, Lcom/android/server/net/UrspConnectivityController$NetworkRequestCallback;-><init>(Lcom/android/server/net/UrspConnectivityController;Lcom/android/server/net/UrspConnectivityController$1;)V

    iput-object v5, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 190
    :try_start_4a
    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 194
    goto :goto_57

    .line 191
    :catch_4e
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Mdo requestNetwork fail"

    invoke-static {v5}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "transport":I
    .end local v3    # "capability":I
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :goto_57
    goto :goto_96

    .line 197
    :cond_58
    const/4 v1, 0x1

    if-ne p1, v1, :cond_96

    .line 198
    iget-object v1, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_65

    .line 199
    const-string v0, "Foc already registered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_96

    .line 201
    :cond_65
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 203
    .restart local v1    # "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkTransport(I)I

    move-result v2

    .line 204
    .restart local v2    # "transport":I
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController;->getNetworkCapability(I)I

    move-result v3

    .line 205
    .restart local v3    # "capability":I
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 206
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 207
    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 210
    .restart local v4    # "request":Landroid/net/NetworkRequest;
    new-instance v5, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;

    invoke-direct {v5, p0, v0}, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;-><init>(Lcom/android/server/net/UrspConnectivityController;Lcom/android/server/net/UrspConnectivityController$1;)V

    iput-object v5, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 212
    :try_start_89
    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 216
    goto :goto_96

    .line 213
    :catch_8d
    move-exception v0

    .line 214
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Foc requestNetwork fail"

    invoke-static {v5}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "transport":I
    .end local v3    # "capability":I
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_96
    :goto_96
    return-void
.end method

.method private setStopNetwork(I)V
    .registers 8
    .param p1, "type"    # I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStopNetwork - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 223
    const-string v0, "Unregister network callback exception"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    .line 224
    iget-object v3, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_37

    .line 225
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 227
    .local v3, "mConnMgr":Landroid/net/ConnectivityManager;
    :try_start_27
    iget-object v4, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 228
    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mMdoNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 229
    invoke-direct {p0, v1, v1, v2}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_31} :catch_32

    .line 232
    goto :goto_36

    .line 230
    :catch_32
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 233
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mConnMgr":Landroid/net/ConnectivityManager;
    :goto_36
    goto :goto_5d

    .line 234
    :cond_37
    const-string v0, "Mdo already unregistered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 236
    :cond_3d
    const/4 v3, 0x1

    if-ne p1, v3, :cond_5d

    .line 237
    iget-object v4, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v4, :cond_58

    .line 238
    invoke-direct {p0}, Lcom/android/server/net/UrspConnectivityController;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v4

    .line 240
    .local v4, "mConnMgr":Landroid/net/ConnectivityManager;
    :try_start_48
    iget-object v5, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 241
    iput-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mFocNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 242
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_52} :catch_53

    .line 245
    goto :goto_57

    .line 243
    :catch_53
    move-exception v1

    .line 244
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 246
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "mConnMgr":Landroid/net/ConnectivityManager;
    :goto_57
    goto :goto_5d

    .line 247
    :cond_58
    const-string v0, "Foc already unregistered."

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 250
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 86
    const-string v0, "bindConnectivityManager Called"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->logn(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mConnManager:Landroid/net/IConnectivityManager;

    .line 88
    return-void
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspConnectionListener;

    .line 139
    const-string/jumbo v0, "register mUrspConnListener"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 141
    return-void
.end method

.method public requestConnection(ZII)V
    .registers 7
    .param p1, "apply"    # Z
    .param p2, "networkType"    # I
    .param p3, "uid"    # I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requesetConnection - apply: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x2711

    const/16 v1, 0x2712

    if-nez p2, :cond_41

    .line 126
    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 128
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 129
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_56

    .line 130
    :cond_41
    const/4 v2, 0x1

    if-ne p2, v2, :cond_56

    .line 131
    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 132
    .restart local v0    # "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 133
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_57

    .line 130
    .end local v0    # "msg":Landroid/os/Message;
    :cond_56
    :goto_56
    nop

    .line 136
    :goto_57
    return-void
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspConnectionListener;

    .line 144
    const-string/jumbo v0, "unregister mUrspConnListener"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController;->mUrspConnListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 146
    return-void
.end method
