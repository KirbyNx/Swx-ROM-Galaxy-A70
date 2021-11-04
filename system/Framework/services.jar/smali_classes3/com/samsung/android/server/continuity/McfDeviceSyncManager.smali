.class Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_McfDsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserHandle:Landroid/os/UserHandle;

.field private mDeviceSyncCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

.field private final mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

.field private final mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

.field private mIsValidState:Z

.field private mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;

.field private final mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

.field private mRemoteClipStateListener:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

.field private mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteClipStateListener:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    .line 334
    new-instance v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$4;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDeviceSyncCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    .line 48
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 49
    new-instance v0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/continuity/ContinuityCopyData;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Lcom/samsung/android/continuity/ContinuityCopyData;)Lcom/samsung/android/continuity/ContinuityCopyData;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
    .param p1, "x1"    # Lcom/samsung/android/continuity/ContinuityCopyData;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mLastestRemoteClip:Lcom/samsung/android/continuity/ContinuityCopyData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->start()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->bindMcf()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->replacedPackage()V

    return-void
.end method

.method private bindMcf()V
    .registers 7

    .line 260
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-nez v0, :cond_c

    .line 261
    const-string v0, "bindMcf - invalid state"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getServiceState()I

    move-result v0

    .line 266
    .local v0, "state":I
    if-eqz v0, :cond_29

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMcf - invalid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 271
    :cond_29
    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    new-instance v3, Lcom/samsung/android/server/continuity/-$$Lambda$McfDeviceSyncManager$ML0Cn0xuB7_60MO0Q5sUYh4pg6o;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/continuity/-$$Lambda$McfDeviceSyncManager$ML0Cn0xuB7_60MO0Q5sUYh4pg6o;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    iget-object v4, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->connectServiceAsUser(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;Landroid/os/UserHandle;)Z

    move-result v2

    .line 295
    .local v2, "ret":Z
    if-nez v2, :cond_46

    .line 296
    const-string v3, "bindMcf - failed!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    goto :goto_4b

    .line 299
    :cond_46
    const-string v3, "bindMcf - success"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_4b
    return-void
.end method

.method private replacedPackage()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->hasMessages(I)Z

    move-result v0

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    if-eqz v0, :cond_15

    .line 321
    const-string v0, "replacedPackage - remove unbind message"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessage(I)V

    .line 325
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 326
    const-string v0, "replacedPackage - has bind message"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 330
    :cond_24
    const-string v0, "replacedPackage"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    .line 332
    return-void
.end method

.method private start()V
    .registers 6

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    .line 80
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_10

    .line 81
    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    const-string v2, "start : userId is USER_NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 84
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    new-instance v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->start(ILcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 116
    if-eqz v1, :cond_2c

    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    .line 119
    :cond_2c
    return-void
.end method

.method private unbindMcf()V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->hasMessages(I)Z

    move-result v0

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    if-eqz v0, :cond_15

    .line 305
    const-string v0, "unbindMcf - remove bind message"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessage(I)V

    .line 309
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getServiceState()I

    move-result v0

    .line 310
    .local v0, "state":I
    if-nez v0, :cond_32

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindMcf - invalid state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 315
    :cond_32
    const-string v1, "unbindMcf"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->disconnectService()V

    .line 317
    return-void
.end method


# virtual methods
.method cancelDownload(Ljava/lang/String;)V
    .registers 4
    .param p1, "dataId"    # Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDownload - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->cancelDownload(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method getCurrentUserId()I
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_7

    .line 54
    const/16 v0, -0x2710

    return v0

    .line 56
    :cond_7
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    return v0
.end method

.method getNearbyDeviceCount(I)I
    .registers 5
    .param p1, "filterType"    # I

    .line 125
    const-string v0, "[MCF_DS_SYS]_McfDsManager"

    const-string v1, "getNearbyDeviceCount"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "filter":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_e

    .line 128
    const/4 v0, 0x1

    goto :goto_12

    .line 129
    :cond_e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 130
    const/4 v0, 0x2

    .line 134
    :goto_12
    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getNearbyDeviceCount(I)I

    move-result v2

    .line 135
    .local v2, "ret":I
    if-gtz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 132
    .end local v2    # "ret":I
    :cond_1d
    return v1
.end method

.method public synthetic lambda$bindMcf$0$McfDeviceSyncManager(I)V
    .registers 5
    .param p1, "svcState"    # I

    .line 272
    const/4 v0, 0x1

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    goto :goto_34

    .line 286
    :cond_f
    const-string v2, "bindMcf : SERVICE_STATE_AVAILABLE"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 288
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_34

    .line 282
    :cond_22
    const-string v0, "bindMcf : SERVICE_STATE_UNAVAILABLE"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    goto :goto_34

    .line 274
    :cond_28
    const-string v0, "bindMcf : SERVICE_STATE_CONNECTED"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    goto :goto_34

    .line 278
    :cond_2e
    const-string v0, "bindMcf : SERVICE_STATE_DISCONNECTED"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .line 293
    :cond_34
    :goto_34
    return-void
.end method

.method registerCachedRemoteListener()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteClipStateListener:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    if-eqz v0, :cond_16

    .line 171
    const-string v0, "[MCF_DS_SYS]_McfDsManager"

    const-string v1, "registerCachedRemoteListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteClipStateListener:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->registerRemoteClipStateListener(Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)V

    .line 174
    :cond_16
    return-void
.end method

.method registerRemoteCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getServiceState()I

    move-result v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1e

    .line 156
    const-string v0, "registerRemoteCopyListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteClipStateListener:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->registerRemoteClipStateListener(Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)V

    goto :goto_23

    .line 159
    :cond_1e
    const-string v0, "registerRemoteCopyListener - wait"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_23
    return-void
.end method

.method requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)Z
    .registers 5
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDownload - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->requestDownload(Ljava/lang/String;Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)Z

    move-result v0

    return v0
.end method

.method setLocalClip(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "clipBundle"    # Landroid/os/Bundle;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isContinuitySettingEnabled()Z

    move-result v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-nez v0, :cond_10

    .line 141
    const-string v0, "setLocalClip - setting false"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_10
    if-nez p1, :cond_21

    .line 145
    const-string v0, "setLocalClip - clear"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->remove()V

    .line 147
    return-void

    .line 149
    :cond_21
    const-string v0, "setLocalClip"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->update(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method startUser(Landroid/os/UserHandle;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "cachedCopyListener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_10

    .line 61
    const-string v0, "startUser - invalid request!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    .line 69
    return-void
.end method

.method stopUser()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->stop()V

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    .line 76
    return-void
.end method

.method unregisterRemoteCopyListener()V
    .registers 3

    .line 164
    const-string v0, "[MCF_DS_SYS]_McfDsManager"

    const-string v1, "unregisterRemoteCopyListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mRemoteCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->unregisterRemoteClipStateListener()V

    .line 167
    return-void
.end method
