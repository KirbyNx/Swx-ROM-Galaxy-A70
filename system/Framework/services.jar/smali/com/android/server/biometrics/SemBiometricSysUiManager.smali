.class public Lcom/android/server/biometrics/SemBiometricSysUiManager;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/samsung/android/biometrics/SemBiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;,
        Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    }
.end annotation


# static fields
.field private static final BINDING_TIMEOUT_INTERVAL:I = 0xbb8

.field private static final MAX_SESSION_COUNT:I = 0xa

.field public static final SYSUI_CONNECTION_ERROR_REASON_BIND_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BiometricSysUiManager"

.field private static final TIME_UNBIND:I = 0xfa0

.field private static sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Landroid/os/HandlerExecutor;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mIsWaitingForConnection:Z

.field private final mPendingCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnableHandleBindTimeout:Ljava/lang/Runnable;

.field private mRunnableHandleUnbind:Ljava/lang/Runnable;

.field private final mSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

.field private mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    .line 553
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 102
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->get()Lcom/android/server/biometrics/Utils$BioBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/SemBiometricSysUiManager;II[B)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiDismissedEvent(II[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 24
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiTouchEvent(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiEvent(III)V

    return-void
.end method

.method private bind()V
    .registers 7

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string v3, "com.samsung.android.biometrics.app.setting.BiometricsUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_41

    .line 220
    :try_start_12
    const-string v1, "BiometricSysUiManager"

    const-string v2, "bind: started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-eqz v1, :cond_1f

    .line 222
    monitor-exit p0

    return-void

    .line 224
    :cond_1f
    const v1, 0x24000001

    .line 229
    .local v1, "bindFlags":I
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_28

    .line 230
    or-int/lit8 v1, v1, 0x2

    .line 232
    :cond_28
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 234
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    nop

    .end local v1    # "bindFlags":I
    monitor-exit p0

    .line 239
    goto :goto_60

    .line 235
    :catchall_3e
    move-exception v1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_3e

    .end local v0    # "i":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_start_40
    throw v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 236
    .restart local v0    # "i":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :catch_41
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricSysUiManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method private cleanup()V
    .registers 3

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected static declared-synchronized createInstance(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter v0

    .line 96
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-nez v1, :cond_e

    .line 97
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 99
    :cond_e
    monitor-exit v0

    return-void

    .line 95
    .end local p0    # "context":Landroid/content/Context;
    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .registers 5
    .param p1, "id"    # I

    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 119
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 120
    return-object v1

    .line 122
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :cond_19
    goto :goto_6

    .line 123
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private findSessionToken(Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .registers 5
    .param p1, "token"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 128
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$500(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 129
    return-object v1

    .line 131
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :cond_1d
    goto :goto_6

    .line 132
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get()Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    return-object v0
.end method

.method private handleRequest(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 199
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-eqz v0, :cond_9

    .line 201
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 203
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    if-eqz v0, :cond_1e

    .line 204
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_19

    .line 205
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "handleRequest: Add pending list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1e
    :goto_1e
    monitor-exit p0

    .line 212
    return-void

    .line 211
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private notifySysUiDismissedEvent(II[B)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "reason"    # I
    .param p3, "credentialAttestation"    # [B

    .line 500
    monitor-enter p0

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 503
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_start_13
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_28

    if-eqz p1, :cond_21

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_28

    .line 504
    :cond_21
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onDismissed(I[B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    .line 508
    :cond_28
    goto :goto_45

    .line 506
    :catch_29
    move-exception v2

    .line 507
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "BiometricSysUiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySysUiDismissedEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    goto :goto_7

    .line 510
    :cond_46
    monitor-exit p0

    .line 511
    return-void

    .line 510
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private notifySysUiErrorEvent(III)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "error"    # I
    .param p3, "code"    # I

    .line 486
    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 489
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_start_13
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_28

    if-eqz p1, :cond_21

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_28

    .line 490
    :cond_21
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onError(II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    .line 494
    :cond_28
    goto :goto_45

    .line 492
    :catch_29
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "BiometricSysUiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySysUiErrorEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    goto :goto_7

    .line 496
    :cond_46
    monitor-exit p0

    .line 497
    return-void

    .line 496
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private notifySysUiEvent(III)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I

    .line 514
    monitor-enter p0

    .line 515
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_54

    .line 517
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_start_13
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_34

    if-eqz p1, :cond_21

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_34

    .line 518
    :cond_21
    const/16 v2, 0x3e9

    if-eq p2, v2, :cond_2d

    .line 523
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onEvent(II)V

    goto :goto_34

    .line 520
    :cond_2d
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTryAgainPressed(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_35
    .catchall {:try_start_13 .. :try_end_34} :catchall_54

    .line 529
    :cond_34
    :goto_34
    goto :goto_51

    .line 527
    :catch_35
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v3, "BiometricSysUiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySysUiEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    goto :goto_7

    .line 531
    :cond_52
    monitor-exit p0

    .line 532
    return-void

    .line 531
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_54

    throw v0
.end method

.method private notifySysUiTouchEvent(II)V
    .registers 9
    .param p1, "sId"    # I
    .param p2, "event"    # I

    .line 472
    monitor-enter p0

    .line 473
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_48

    .line 475
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :try_start_13
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    if-eqz v2, :cond_28

    if-eqz p1, :cond_21

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v2

    if-ne p1, v2, :cond_28

    .line 476
    :cond_21
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;->onTouchEvent(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_48

    .line 480
    :cond_28
    goto :goto_45

    .line 478
    :catch_29
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "BiometricSysUiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySysUiTouchEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    goto :goto_7

    .line 482
    :cond_46
    monitor-exit p0

    .line 483
    return-void

    .line 482
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private printSessionClient()V
    .registers 5

    .line 136
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 138
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session Client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricSysUiManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    goto :goto_a

    .line 141
    :cond_31
    return-void
.end method

.method private runPendingCommand()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$-CPlOSQ3r8AulQjprerFGwhRyyI;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$-CPlOSQ3r8AulQjprerFGwhRyyI;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method private sendConnectionError(I)V
    .registers 4
    .param p1, "err"    # I

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendConnectionError: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$KPulMEh8725VldV58PoDhin9408;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$KPulMEh8725VldV58PoDhin9408;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method private unBind()V
    .registers 5

    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "unBind: started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5b

    if-eqz v0, :cond_34

    .line 248
    :try_start_d
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_5b

    .line 251
    goto :goto_34

    .line 249
    :catch_18
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19
    const-string v1, "BiometricSysUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_5b

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a
    .catchall {:try_start_34 .. :try_end_39} :catchall_5b

    .line 257
    goto :goto_56

    .line 255
    :catch_3a
    move-exception v0

    .line 256
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v1, "BiometricSysUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_56
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 259
    monitor-exit p0

    .line 260
    return-void

    .line 259
    :catchall_5b
    move-exception v0

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_5b

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 319
    const-string v0, "BiometricSysUiManager"

    const-string v1, "binderDied: handle error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$NGmwHpAd4grYGPM9DFnXxFM5NWM;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$NGmwHpAd4grYGPM9DFnXxFM5NWM;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public cancelUnbind()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public closeSession(I)V
    .registers 7
    .param p1, "sessionId"    # I

    .line 178
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSession: sessionId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1f
    monitor-enter p0

    .line 182
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 183
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    if-eqz v0, :cond_43

    .line 184
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->destroy()V

    .line 186
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-eqz v1, :cond_43

    .line 187
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_43
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 191
    .end local v0    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public hide(III)V
    .registers 5
    .param p1, "sId"    # I
    .param p2, "reason"    # I
    .param p3, "flag"    # I

    .line 356
    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    .line 372
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public synthetic lambda$binderDied$1$SemBiometricSysUiManager()V
    .registers 3

    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 322
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 323
    return-void
.end method

.method public synthetic lambda$hide$3$SemBiometricSysUiManager(III)V
    .registers 9
    .param p1, "sId"    # I
    .param p2, "reason"    # I
    .param p3, "flag"    # I

    .line 357
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string/jumbo v1, "hide: "

    const-string v2, "BiometricSysUiManager"

    if-eqz v0, :cond_29

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 361
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    if-nez v0, :cond_45

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide: No exist ID, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_45
    :try_start_45
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->hideBiometricDialog(III)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    .line 370
    goto :goto_66

    .line 367
    :catch_4b
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 371
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method public synthetic lambda$onAuthenticated$4$SemBiometricSysUiManager(IZLjava/lang/String;)V
    .registers 9
    .param p1, "sId"    # I
    .param p2, "authenticated"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;

    .line 378
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 379
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated: No exist ID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 384
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricAuthenticated(IZLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 387
    goto :goto_3e

    .line 385
    :catch_24
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public synthetic lambda$onBiometricError$6$SemBiometricSysUiManager(IIILjava/lang/String;)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "errCode"    # I
    .param p3, "vendorCode"    # I
    .param p4, "error"    # Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 420
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBiometricError: No exist ID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 425
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricError(IIILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 428
    goto :goto_3e

    .line 426
    :catch_24
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBiometricError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public synthetic lambda$onBiometricHelp$5$SemBiometricSysUiManager(IIILjava/lang/String;)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "helpCode"    # I
    .param p3, "vendorCode"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 397
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "BiometricSysUiManager"

    if-eqz v0, :cond_20

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBiometricHelp: session Id = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 401
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    if-nez v0, :cond_3c

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBiometricHelp: No exist ID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 406
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->onBiometricHelp(IIILjava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    .line 409
    goto :goto_5c

    .line 407
    :catch_42
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBiometricHelp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void
.end method

.method public synthetic lambda$runPendingCommand$0$SemBiometricSysUiManager()V
    .registers 3

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 266
    .local v1, "p":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 267
    .end local v1    # "p":Ljava/lang/Runnable;
    goto :goto_7

    .line 268
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public synthetic lambda$sendCommand$7$SemBiometricSysUiManager(IIILandroid/os/Bundle;)V
    .registers 10
    .param p1, "sId"    # I
    .param p2, "command"    # I
    .param p3, "code"    # I
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 437
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v0

    .line 438
    .local v0, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    const-string v1, "BiometricSysUiManager"

    if-nez v0, :cond_1e

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCommand: No exist ID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 443
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 446
    goto :goto_3e

    .line 444
    :catch_24
    move-exception v2

    .line 445
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public synthetic lambda$sendCommandIfSessionExist$8$SemBiometricSysUiManager(IILandroid/os/Bundle;)V
    .registers 8
    .param p1, "command"    # I
    .param p2, "code"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .line 453
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "BiometricSysUiManager"

    if-eqz v0, :cond_11

    .line 454
    const-string/jumbo v0, "sendCommandIfSessionExist: No exist Session"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 458
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->sendCommand(IIILandroid/os/Bundle;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    .line 461
    goto :goto_32

    .line 459
    :catch_18
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCommandIfSessionExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public synthetic lambda$sendConnectionError$9$SemBiometricSysUiManager(I)V
    .registers 4
    .param p1, "err"    # I

    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    return-void
.end method

.method public synthetic lambda$show$2$SemBiometricSysUiManager(IIZILjava/lang/String;JLandroid/os/Bundle;)V
    .registers 26
    .param p1, "sId"    # I
    .param p2, "type"    # I
    .param p3, "requireConfirmation"    # Z
    .param p4, "userId"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opId"    # J
    .param p8, "b"    # Landroid/os/Bundle;

    .line 334
    move-object/from16 v1, p0

    move/from16 v12, p1

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string/jumbo v13, "show: "

    const-string v14, "BiometricSysUiManager"

    if-eqz v0, :cond_4a

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 334
    :cond_4a
    move/from16 v15, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v9, p5

    move-wide/from16 v7, p6

    .line 338
    :goto_54
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v16

    .line 339
    .local v16, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    if-nez v16, :cond_70

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: No exist ID, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 344
    :cond_70
    :try_start_70
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    iget-object v6, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p8

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;J)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_85} :catch_86

    .line 349
    goto :goto_a1

    .line 346
    :catch_86
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a1
    return-void
.end method

.method public onAuthenticated(IZLjava/lang/String;)V
    .registers 5
    .param p1, "sId"    # I
    .param p2, "authenticated"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;

    .line 377
    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IZLjava/lang/String;)V

    .line 389
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public onBiometricError(IIILjava/lang/String;)V
    .registers 12
    .param p1, "sId"    # I
    .param p2, "errCode"    # I
    .param p3, "vendorCode"    # I
    .param p4, "error"    # Ljava/lang/String;

    .line 418
    new-instance v6, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$qaElgWf0AJ14zcmXwKaDxeKCdYo;

    .local v6, "r":Ljava/lang/Runnable;
    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$qaElgWf0AJ14zcmXwKaDxeKCdYo;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILjava/lang/String;)V

    .line 430
    invoke-direct {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public onBiometricHelp(IIILjava/lang/String;)V
    .registers 12
    .param p1, "sId"    # I
    .param p2, "helpCode"    # I
    .param p3, "vendorCode"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 395
    new-instance v6, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;

    .local v6, "r":Ljava/lang/Runnable;
    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILjava/lang/String;)V

    .line 412
    invoke-direct {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 276
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1b
    monitor-enter p0

    .line 280
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleBindTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    .line 283
    invoke-static {p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    .line 284
    if-nez v1, :cond_3f

    .line 285
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "onServiceConnected: failed "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    .line 287
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_68

    return-void

    .line 290
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_47
    .catchall {:try_start_3f .. :try_end_46} :catchall_68

    .line 293
    goto :goto_63

    .line 291
    :catch_47
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v1, "BiometricSysUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->runPendingCommand()V

    .line 295
    monitor-exit p0

    .line 297
    return-void

    .line 295
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 301
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1d
    monitor-enter p0

    .line 306
    const/4 v0, 0x0

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-eqz v1, :cond_2c

    .line 307
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    invoke-interface {v1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2f
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2d

    .line 311
    :cond_2c
    goto :goto_4b

    .line 314
    :catchall_2d
    move-exception v0

    goto :goto_54

    .line 309
    :catch_2f
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v2, "BiometricSysUiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4b
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cleanup()V

    .line 314
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_2d

    throw v0
.end method

.method public openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I
    .registers 8
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .param p3, "listener"    # Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 144
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_23
    const/4 v0, 0x0

    if-nez p1, :cond_2f

    .line 148
    const-string v1, "BiometricSysUiManager"

    const-string/jumbo v2, "openSession: token is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0

    .line 151
    :cond_2f
    monitor-enter p0

    .line 152
    :try_start_30
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mRunnableHandleUnbind:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionToken(Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object v1

    .line 154
    .local v1, "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    if-nez v1, :cond_66

    .line 155
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;-><init>(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)V

    move-object v1, v2

    .line 156
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_6e

    .line 158
    const-string v2, "BiometricSysUiManager"

    const-string/jumbo v3, "openSession: too many session list"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 160
    .local v0, "temp":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->destroy()V

    .line 161
    .end local v0    # "temp":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    goto :goto_6e

    .line 163
    :cond_66
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v2, "openSession: exist token"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_6e
    :goto_6e
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z

    if-nez v0, :cond_82

    .line 166
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsWaitingForConnection:Z

    if-eqz v0, :cond_7f

    .line 167
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v2, "openSession: waiting for service connection"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 169
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 172
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->printSessionClient()V

    .line 173
    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I
    invoke-static {v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 174
    .end local v1    # "s":Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
    :catchall_8b
    move-exception v0

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_30 .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method public sendCommand(IIILandroid/os/Bundle;)V
    .registers 12
    .param p1, "sId"    # I
    .param p2, "command"    # I
    .param p3, "code"    # I
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 436
    new-instance v6, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$Cy9O892y2G-qEEct35vSaP9VU-Q;

    .local v6, "r":Ljava/lang/Runnable;
    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$Cy9O892y2G-qEEct35vSaP9VU-Q;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V

    .line 448
    invoke-direct {p0, v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method public sendCommandIfSessionExist(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "command"    # I
    .param p2, "code"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .line 452
    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    .line 463
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method

.method public show(IILandroid/os/Bundle;)V
    .registers 13
    .param p1, "sId"    # I
    .param p2, "type"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 327
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;J)V

    .line 328
    return-void
.end method

.method public show(IILandroid/os/Bundle;ZILjava/lang/String;J)V
    .registers 20
    .param p1, "sId"    # I
    .param p2, "type"    # I
    .param p3, "b"    # Landroid/os/Bundle;
    .param p4, "requireConfirmation"    # Z
    .param p5, "userId"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "opId"    # J

    .line 333
    new-instance v10, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;

    .local v10, "r":Ljava/lang/Runnable;
    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;)V

    .line 351
    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method
