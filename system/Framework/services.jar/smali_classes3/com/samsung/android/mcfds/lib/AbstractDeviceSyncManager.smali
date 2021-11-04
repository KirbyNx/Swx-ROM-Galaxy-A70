.class public abstract Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
    }
.end annotation


# static fields
.field private static final MCFDS_ACTION_START:Ljava/lang/String; = "com.samsung.android.mcfds.ACTION_START"

.field private static final MCFDS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds"

.field private static final MCFDS_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds.McfDeviceSyncService"

.field public static final SERVICE_STATE_AVAILABLE:I = 0x5

.field public static final SERVICE_STATE_CONNECTED:I = 0x3

.field public static final SERVICE_STATE_DISCONNECTED:I = 0x1

.field public static final SERVICE_STATE_NONE:I = 0x0

.field public static final SERVICE_STATE_REQUESTED:I = 0x2

.field public static final SERVICE_STATE_UNAVAILABLE:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "[MCF_DS_LIB]_DeviceSyncManager"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

.field private mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

.field private mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

.field private mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceState:I

.field private final mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 136
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    .line 234
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    .line 21
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
    .param p1, "x1"    # Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
    .param p1, "x1"    # I

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->registerServiceStateListener()V

    return-void
.end method

.method private notifyStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    if-eqz v0, :cond_7

    .line 256
    invoke-interface {v0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;->onStateChanged(I)V

    .line 258
    :cond_7
    return-void
.end method

.method private registerServiceStateListener()V
    .registers 4

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    invoke-interface {v1}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v2, 0xa

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    .line 130
    return-void
.end method

.method private unregisterServiceStateListener()V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    .line 134
    return-void
.end method


# virtual methods
.method protected abstract bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
.end method

.method public connectService(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;)Z
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    .line 192
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectService : invalid request "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v2

    .line 197
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.mcfds"

    const-string v5, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caller"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 201
    const-string v3, "connectService : success"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    .line 203
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    .line 204
    return v2

    .line 207
    :cond_51
    const-string v2, "connectService : failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x0

    return v1
.end method

.method public connectServiceAsUser(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;Landroid/os/UserHandle;)Z
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 170
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const/4 v1, 0x1

    const-string v2, "[MCF_DS_LIB]_DeviceSyncManager"

    if-eqz v0, :cond_1e

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectServiceAsUser : invalid request "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v1

    .line 175
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.mcfds"

    const-string v5, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caller"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p2, v0, v3}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectServiceAsUser : success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    .line 181
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    .line 182
    return v1

    .line 185
    :cond_62
    const-string v1, "connectService : failed"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    return v1
.end method

.method public disconnectService()V
    .registers 4

    .line 212
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_c

    .line 213
    const-string v0, "disconnectService : invalid request"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 217
    :cond_c
    const-string v0, "disconnectService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->unregisterServiceStateListener()V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 221
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 224
    goto :goto_25

    .line 222
    :catch_1f
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "disconnectService : IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 227
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    .line 228
    return-void
.end method

.method public getNearbyDeviceCount(I)I
    .registers 5
    .param p1, "feature"    # I

    .line 56
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "getNearbyDeviceCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_INPUT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v2, 0x3e8

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getServiceState()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return v0
.end method

.method public registerDeviceCallback(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    .line 64
    new-instance v0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    .line 65
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "registerDeviceStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    .line 69
    return-void
.end method

.method protected start()V
    .registers 1

    .line 160
    return-void
.end method

.method protected stop()V
    .registers 1

    .line 164
    return-void
.end method

.method public unregisterDeviceCallback()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    if-nez v0, :cond_5

    .line 73
    return-void

    .line 75
    :cond_5
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "unregisterDeviceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mDeviceSyncCallbackWrapper:Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;

    .line 80
    return-void
.end method
