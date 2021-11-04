.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.super Ljava/lang/Thread;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;,
        Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    }
.end annotation


# static fields
.field public static final EVENT_SESSION_COMPLETE:I = 0x3

.field public static final EVENT_SESSION_STARTED:I = 0x2

.field public static final EVENT_SESSION_STARTING:I = 0x1

.field public static final EVENT_SESSION_STOPPED:I = 0x4

.field public static final MSG_CONNECTIVITY_CONNECT:I = 0x7

.field public static final MSG_CONNECTIVITY_CONNECTED:I = 0x8

.field public static final MSG_CONNECTIVITY_DISCONNECTED:I = 0x9

.field public static final MSG_CONNECTIVITY_OFF:I = 0x4

.field public static final MSG_CONNECTIVITY_ON:I = 0x3

.field public static final MSG_CONNECTIVITY_READY:I = 0x2

.field public static final MSG_CONNECTIVITY_SET_CONNECTION:I = 0x1

.field public static final MSG_CONNECTIVITY_TURNING_OFF:I = 0x5

.field public static final MSG_SESSION_REQUEST_TEAR_DOWN:I = 0xd

.field public static final MSG_SESSION_START:I = 0xb

.field public static final MSG_SESSION_STOP:I = 0xc

.field public static final MSG_SESSION_TIMEOUT:I = 0xe

.field public static final SESSION_NONE:I = 0x7

.field public static final SESSION_STATE_ERROR:I = 0x6

.field public static final SESSION_STATE_READY:I = 0x1

.field public static final SESSION_STATE_STARTED:I = 0x3

.field public static final SESSION_STATE_STARTING:I = 0x2

.field public static final SESSION_STATE_STOPPED:I = 0x5

.field public static final SESSION_STATE_STOPPING:I = 0x4

.field private static final SESSION_TIMEOUT:I = 0x9c40

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true

.field private static final WAITING_FOR_CONNECTIVITY_OFF:I = 0x3

.field private static final WAITING_FOR_CONNECTIVITY_OFF_WHILE_STOPPING:I = 0x2

.field private static final WAITING_FOR_CONNECTIVITY_ON:I = 0x4

.field private static final WAITING_FOR_CONNECTIVITY_ON_WHILE_SETUP:I = 0x5

.field private static final WAITING_RECEIVED_START_WHILE_STOPPING:I = 0x1


# instance fields
.field private current_hall:I

.field private mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

.field protected mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

.field private mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInternalState:I

.field public mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

.field private mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

.field private mSessionState:I

.field private mSessionThread:Ljava/lang/Thread;

.field private mState:I

.field private mStateLock:Ljava/lang/Object;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mTurnedOffWhileRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestPackage"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 244
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionState:I

    .line 64
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 81
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 83
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 114
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 245
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    .line 246
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 247
    invoke-virtual {v0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setRequestPackage(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setConnectivityType(I)V

    .line 249
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 20
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Z

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 20
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    return p1
.end method

.method private connect()V
    .registers 3

    .line 493
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_c

    .line 495
    return-void

    .line 497
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->connect()V

    .line 498
    return-void
.end method

.method private convertMsg(I)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # I

    .line 215
    packed-switch p1, :pswitch_data_2a

    .line 241
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 239
    :pswitch_5
    const-string v0, "MSG_SESSION_TIMEOUT"

    return-object v0

    .line 237
    :pswitch_8
    const-string v0, "MSG_SESSION_REQUEST_TEAR_DOWN"

    return-object v0

    .line 235
    :pswitch_b
    const-string v0, "MSG_SESSION_STOP"

    return-object v0

    .line 233
    :pswitch_e
    const-string v0, "MSG_SESSION_START"

    return-object v0

    .line 231
    :pswitch_11
    const-string v0, "MSG_CONNECTIVITY_DISCONNECTED"

    return-object v0

    .line 229
    :pswitch_14
    const-string v0, "MSG_CONNECTIVITY_CONNECTED"

    return-object v0

    .line 227
    :pswitch_17
    const-string v0, "MSG_CONNECTIVITY_CONNECT"

    return-object v0

    .line 225
    :pswitch_1a
    const-string v0, "MSG_CONNECTIVITY_TURNING_OFF"

    return-object v0

    .line 223
    :pswitch_1d
    const-string v0, "MSG_CONNECTIVITY_OFF"

    return-object v0

    .line 221
    :pswitch_20
    const-string v0, "MSG_CONNECTIVITY_ON"

    return-object v0

    .line 219
    :pswitch_23
    const-string v0, "MSG_CONNECTIVITY_READY"

    return-object v0

    .line 217
    :pswitch_26
    const-string v0, "MSG_CONNECTIVITY_SET_CONNECTION"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_3
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestPackage"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 253
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private disconnect()V
    .registers 3

    .line 501
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_c

    .line 503
    return-void

    .line 505
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->disconnect()V

    .line 506
    return-void
.end method

.method private handleSetConnection()V
    .registers 4

    .line 387
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleSetConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_1a

    .line 389
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mAuthenticator is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 391
    return-void

    .line 392
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    .line 393
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "session is stopped!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 397
    :cond_2a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection()V

    .line 398
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 401
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_78

    .line 403
    :cond_4e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_64

    .line 404
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    goto :goto_78

    .line 407
    :cond_64
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v2, "enable fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 409
    invoke-direct {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 410
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 413
    :goto_78
    return-void
.end method

.method private handleStartSession()V
    .registers 5

    .line 358
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStartSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    .line 361
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t start session, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    .line 363
    return-void

    .line 366
    :cond_2d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 367
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_38

    .line 368
    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 370
    :cond_38
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_54

    .line 371
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 372
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getConnectivityType()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    .line 374
    .local v0, "authenticator":Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    :try_start_49
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 377
    goto :goto_53

    .line 375
    :catch_4f
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 378
    .end local v0    # "authenticator":Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_53
    goto :goto_61

    .line 379
    :cond_54
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v2, "authenticator is not null, so initialize interrupt parameter"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setInterrupt(Z)V

    .line 383
    :goto_61
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    .line 384
    return-void
.end method

.method private handleStopSession(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 297
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStopSession, force? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_53

    .line 300
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waiting for session thread to terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_23
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_2c

    .line 304
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onInterrupted()V

    .line 305
    :cond_2c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 306
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 307
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "Thread is still running.. force stop session!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 p1, 0x1

    .line 310
    :cond_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_46} :catch_47

    .line 313
    goto :goto_4b

    .line 311
    :catch_47
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_4b
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "session thread is terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_53
    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eqz p1, :cond_65

    .line 318
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_78

    .line 320
    :cond_65
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 321
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "session will be restarted.. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 323
    return-void

    .line 325
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v2, 0x4

    if-eqz v0, :cond_80

    .line 326
    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 327
    :cond_80
    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_e3

    .line 330
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 331
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 332
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result v0

    .line 333
    .local v0, "isEnabled":Z
    if-eqz v0, :cond_c4

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 335
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    if-nez p1, :cond_e3

    .line 337
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waiting for connectivity off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 339
    return-void

    .line 341
    :cond_c4
    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v3, :cond_c9

    goto :goto_e3

    .line 343
    :cond_c9
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 344
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "waiting for connectivity on"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-nez p1, :cond_e3

    .line 346
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 347
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    return-void

    .line 352
    .end local v0    # "isEnabled":Z
    :cond_e3
    :goto_e3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method

.method private handleTearDown()V
    .registers 3

    .line 416
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleTearDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x5

    if-eqz v0, :cond_1f

    .line 420
    :try_start_d
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendEndCommand()V

    .line 421
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    .line 425
    goto :goto_1a

    .line 423
    :catch_16
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->close()V

    .line 429
    :cond_1f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_32

    .line 430
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 431
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 434
    :cond_32
    invoke-direct {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 436
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_3d

    .line 437
    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 439
    :cond_3d
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 440
    return-void
.end method

.method private replayAuthfail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 447
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 448
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_d

    .line 449
    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 450
    :cond_d
    return-void
.end method

.method private setAuthenticator(Landroid/content/Context;Lcom/samsung/accessory/manager/authentication/Authenticator;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticator"    # Lcom/samsung/accessory/manager/authentication/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 486
    if-eqz p2, :cond_5

    .line 489
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 490
    return-void

    .line 487
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authenticator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setState(I)V
    .registers 6
    .param p1, "state"    # I

    .line 265
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-direct {p0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private startAuthChall()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-nez v0, :cond_6

    .line 477
    const/4 v0, 0x0

    return v0

    .line 480
    :cond_6
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    .line 482
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 509
    const-string v0, " Current AuthenticationSession state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  internal state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectAfterEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 517
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 518
    :cond_7a
    return-void
.end method

.method public getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    return-object v0
.end method

.method public getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivityType()I

    move-result v0

    return v0
.end method

.method public getCurrentHall()I
    .registers 2

    .line 261
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    return v0
.end method

.method public getSessionState()I
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    monitor-exit v0

    return v1

    .line 111
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public run()V
    .registers 4

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startAuthChall()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 458
    goto :goto_8

    .line 456
    :catch_4
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->disconnect()V

    .line 461
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 462
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 463
    :cond_13
    invoke-direct {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 465
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    if-eqz v0, :cond_3a

    .line 466
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTurnedOffWhileRunning ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 471
    :cond_3a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    if-eqz v0, :cond_42

    .line 472
    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 473
    :cond_42
    return-void
.end method

.method public setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 97
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 98
    return-void
.end method

.method public setCurrentHall(I)V
    .registers 2
    .param p1, "hall"    # I

    .line 257
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->current_hall:I

    .line 258
    return-void
.end method

.method public setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 93
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 94
    return-void
.end method

.method public declared-synchronized startSession()V
    .registers 5

    monitor-enter p0

    .line 272
    :try_start_1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_35

    .line 275
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string v1, "Create handler thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SAAuthentication Session Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 277
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 279
    const/16 v1, 0xe

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    .end local p0    # "this":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :cond_35
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 286
    monitor-exit p0

    return-void

    .line 271
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .registers 3

    monitor-enter p0

    .line 289
    :try_start_1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 294
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
