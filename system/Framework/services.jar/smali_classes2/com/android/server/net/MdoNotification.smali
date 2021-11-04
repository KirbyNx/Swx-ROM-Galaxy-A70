.class public Lcom/android/server/net/MdoNotification;
.super Ljava/lang/Object;
.source "MdoNotification.java"

# interfaces
.implements Lcom/android/server/net/IUrspNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/MdoNotification$MsgHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MdoNotification"


# instance fields
.field private mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsBtConnected:Z

.field private mIsEthernetConnected:Z

.field private mIsNotiShown:Z

.field private mIsWifiConnected:Z

.field private mUm:Landroid/net/IUrspManager;

.field private mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IUrspManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urspManager"    # Landroid/net/IUrspManager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/server/net/MdoNotification$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$1;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 80
    new-instance v0, Lcom/android/server/net/MdoNotification$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$2;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 98
    new-instance v0, Lcom/android/server/net/MdoNotification$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoNotification$3;-><init>(Lcom/android/server/net/MdoNotification;)V

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 117
    iput-object p1, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    .line 119
    const-string v0, "MdoNotification"

    const-string v1, "create MdoNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoNotification;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoNotification;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/net/MdoNotification;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoNotification;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/net/MdoNotification;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/MdoNotification;

    .line 48
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->update()V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 136
    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 139
    :cond_10
    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private update()V
    .registers 20

    .line 143
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 145
    .local v2, "count":I
    const/4 v3, 0x0

    :try_start_4
    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v0, v3}, Landroid/net/IUrspManager;->getAllUrspRule(I)[I

    move-result-object v0

    array-length v0, v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move v2, v0

    goto :goto_e

    .line 146
    :catch_d
    move-exception v0

    :goto_e
    nop

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update() count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MdoNotification"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    .line 151
    const-string/jumbo v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/NotificationManager;

    .line 153
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-nez v5, :cond_3b

    .line 154
    const-string/jumbo v0, "update() notificationManager is null."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 158
    :cond_3b
    const v6, 0x104063e

    .line 161
    .local v6, "id":I
    :try_start_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update() netId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v7, v3}, Landroid/net/IUrspManager;->getUrspNetId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mIsWifiConnected="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mUm:Landroid/net/IUrspManager;

    invoke-interface {v0, v3}, Landroid/net/IUrspManager;->getUrspNetId(I)I

    move-result v0

    const v8, 0x104063e

    if-eqz v0, :cond_113

    iget-boolean v0, v1, Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z

    if-nez v0, :cond_7a

    iget-boolean v0, v1, Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z

    if-nez v0, :cond_7a

    iget-boolean v0, v1, Lcom/android/server/net/MdoNotification;->mIsBtConnected:Z

    if-eqz v0, :cond_113

    .line 163
    :cond_7a
    iget-object v0, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "title":Ljava/lang/String;
    const v10, 0x115001c

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    .line 165
    invoke-virtual {v0, v10, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "message":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v12, "notiIntent":Landroid/content/Intent;
    const-string v13, "com.samsung.android.intent.action.MOBILE_DATA_ONLY"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.Settings$MobileDataOnlyActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const v13, 0x10008000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    iget-object v13, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v15, v12

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 175
    .local v13, "pi":Landroid/app/PendingIntent;
    new-instance v14, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->MDO:Ljava/lang/String;

    invoke-direct {v14, v15, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v7, v14

    .line 176
    .local v7, "notiBuilder":Landroid/app/Notification$Builder;
    const v14, 0x1080561

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    move-object v15, v4

    const-wide/16 v3, 0x0

    .line 177
    invoke-virtual {v14, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 178
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 180
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 182
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 185
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 188
    iput-boolean v11, v1, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    .line 189
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v8, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 190
    const-string/jumbo v3, "update() notify"

    move-object v4, v15

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    nop

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v7    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "notiIntent":Landroid/content/Intent;
    .end local v13    # "pi":Landroid/app/PendingIntent;
    goto :goto_124

    .line 193
    :cond_113
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    .line 194
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v8, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 195
    const-string/jumbo v0, "update() cancel"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_122} :catch_123

    goto :goto_124

    .line 198
    :catch_123
    move-exception v0

    :goto_124
    nop

    .line 199
    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdoNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 126
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_18

    .line 127
    new-instance v3, Lcom/android/server/net/MdoNotification$MsgHandler;

    invoke-direct {v3, p0, v2}, Lcom/android/server/net/MdoNotification$MsgHandler;-><init>(Lcom/android/server/net/MdoNotification;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    goto :goto_1e

    .line 129
    :cond_18
    const-string/jumbo v3, "handlerThread.getLooper() returned null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_1e
    const-string/jumbo v3, "init MdoNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public startNotification()V
    .registers 5

    .line 203
    const-string v0, "MdoNotification"

    const-string/jumbo v1, "startNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 208
    goto :goto_13

    .line 207
    :catch_12
    move-exception v0

    .line 209
    :goto_13
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 210
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 211
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 209
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 215
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_3a

    .line 217
    goto :goto_3b

    .line 216
    :catch_3a
    move-exception v0

    .line 218
    :goto_3b
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 219
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 220
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 218
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 224
    :try_start_56
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_60

    .line 226
    goto :goto_61

    .line 225
    :catch_60
    move-exception v0

    .line 227
    :goto_61
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 228
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 229
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 233
    return-void
.end method

.method public stopNotification()V
    .registers 5

    .line 245
    const-string v0, "MdoNotification"

    const-string/jumbo v1, "stopNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/server/net/MdoNotification;->mContext:Landroid/content/Context;

    .line 248
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 250
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1c

    .line 251
    const-string/jumbo v2, "updateNotification() notificationManager is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNotification(): mIsNotiShown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v2, p0, Lcom/android/server/net/MdoNotification;->mIsNotiShown:Z

    if-eqz v2, :cond_40

    .line 258
    invoke-virtual {p0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 259
    const-string/jumbo v2, "stopNotification() cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_40
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 263
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mEthernetListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 264
    invoke-direct {p0}, Lcom/android/server/net/MdoNotification;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/MdoNotification;->mBtListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 265
    return-void
.end method

.method public updateNotification()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/server/net/MdoNotification;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    .end local v0    # "msg":Landroid/os/Message;
    :cond_c
    return-void
.end method
