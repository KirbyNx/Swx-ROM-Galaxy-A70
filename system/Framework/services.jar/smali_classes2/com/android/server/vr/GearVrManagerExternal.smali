.class public Lcom/android/server/vr/GearVrManagerExternal;
.super Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;,
        Lcom/android/server/vr/GearVrManagerExternal$VRRecord;,
        Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final MESSAGE_HMT_EVENT_CHANGED:I = 0x2

.field private static final MESSAGE_NOTIFY_VR_ACTIVITY_CHANGED:I = 0x4

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x1

.field private static final MESSAGE_VR_MODE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GearVrManagerExternal"


# instance fields
.field private connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field private final mGearVrHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/vr/GearVrManagerService;

.field private mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/vr/GearVrManagerService;

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal;

    .line 32
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vr/GearVrManagerExternal;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal;

    .line 32
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal;

    .line 32
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    return-object v0
.end method

.method private cleanUpVrService()V
    .registers 12

    .line 303
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    .line 304
    .local v0, "isDock":Z
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    .line 305
    .local v1, "isVrMode":Z
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v2

    .line 306
    .local v2, "isPersistentVrMode":Z
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v3}, Lcom/android/server/vr/GearVrManagerService;->isDeveloperMode()Z

    move-result v3

    .line 307
    .local v3, "isDeveloperMode":Z
    const-string v4, " isPersistentVrMode="

    const-string v5, " isDeveloperMode="

    const-string v6, " isVrMode="

    const-string v7, "GearVrManagerExternal"

    const/4 v8, 0x1

    if-nez v0, :cond_5c

    if-nez v1, :cond_5c

    if-nez v2, :cond_5c

    if-nez v3, :cond_5c

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanUp VrService isDock="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8f

    .line 312
    :cond_5c
    iget-object v9, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 313
    iget-object v9, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUp VrService cancelled. isDock="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_8f
    :goto_8f
    return-void
.end method

.method private connect()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    const-string v0, "com.samsung.android.hmt.vrsvc"

    const-string v1, "GearVrManagerExternal"

    const-string v2, "connect()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->ensureNotOnThread()V

    .line 145
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 146
    const-string v0, "VrService unavailable."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_1a
    new-instance v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Lcom/android/server/vr/GearVrManagerExternal$1;)V

    .line 152
    .local v2, "vrRecord":Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 155
    .local v4, "ident":J
    :try_start_24
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, "result":I
    if-nez v6, :cond_57

    .line 157
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v8, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const-string v0, "connect() bindService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    const v8, 0x4000001

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2, v8, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    .line 163
    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_6b

    .line 164
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect() check signatures failed. result="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_24 .. :try_end_6b} :catchall_c6

    .line 167
    .end local v6    # "result":I
    :goto_6b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    nop

    .line 170
    iget-boolean v0, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-nez v0, :cond_7b

    .line 171
    const-string v0, "connect() Unable to bind VRSystemService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    goto :goto_c5

    .line 174
    :cond_7b
    const-string v0, "connect() Take iGearVrManagerExternalService... start"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 177
    :try_start_82
    iget-object v0, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/IGearVrManagerExternalService;

    # setter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2, v0}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$202(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    .line 178
    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 179
    const-string v0, "connect() Take iGearVrManagerExternalService... ok!"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_9c} :catch_bc

    .line 182
    :try_start_9c
    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a8} :catch_a9
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a8} :catch_bc

    .line 186
    :goto_a8
    goto :goto_bb

    .line 183
    :catch_a9
    move-exception v0

    .line 184
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_aa
    const-string v3, "The VRConnection died unexpectedly."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_a8

    .line 188
    :cond_b3
    const-string v0, "connect() iGearVrManagerExternalService is null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_bb} :catch_bc

    .line 195
    :goto_bb
    goto :goto_c5

    .line 192
    :catch_bc
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "connect() Take iGearVrManagerExternalService... InterruptedException!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    .line 198
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c5
    return-void

    .line 167
    :catchall_c6
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw v0
.end method

.method private disconnect()V
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const-string v1, "GearVrManagerExternal"

    if-nez v0, :cond_c

    .line 203
    const-string v0, "disconnect() already stopped."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() mBound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVRRecord="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " iGearVrManagerExternalService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 211
    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    :try_start_49
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 216
    const-string v2, "disconnect() unlinkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 218
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # setter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2, v0}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$202(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :try_end_6b
    .catch Ljava/util/NoSuchElementException; {:try_start_49 .. :try_end_6b} :catch_6c

    .line 222
    :cond_6b
    goto :goto_6d

    .line 220
    :catch_6c
    move-exception v2

    .line 223
    :goto_6d
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-eqz v2, :cond_81

    .line 224
    const-string v2, "disconnect() unbindService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 228
    :cond_81
    return-void
.end method

.method private ensureNotOnThread()V
    .registers 4

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 232
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_17

    .line 233
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your fg thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_17
    :goto_17
    return-void
.end method

.method private getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .registers 5

    .line 112
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_47

    .line 115
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_e} :catch_6b
    .catchall {:try_start_1 .. :try_end_e} :catchall_64

    .line 118
    :try_start_e
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_25

    .line 119
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    .line 121
    :cond_25
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v2, :cond_2c

    .line 122
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->connect()V

    .line 124
    :cond_2c
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v2, :cond_37

    .line 126
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_44

    .line 135
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 126
    return-object v0

    .line 129
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_44

    .line 135
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 129
    return-object v2

    .line 131
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    :try_start_46
    throw v2

    .line 113
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    :cond_47
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many requests. connectionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    throw v1
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_64} :catch_6b
    .catchall {:try_start_46 .. :try_end_64} :catchall_64

    .line 135
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    :catchall_64
    move-exception v0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 136
    throw v0

    .line 132
    :catch_6b
    move-exception v1

    .line 135
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 136
    nop

    .line 137
    return-object v0
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I
    .registers 14
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I
    .param p5, "pid"    # I

    .line 321
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 325
    .local v0, "result":[I
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 326
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_17

    .line 327
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_1e
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    move-object v0, v2

    .line 332
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 333
    nop

    .line 334
    return-object v0

    .line 332
    :catchall_1c
    move-exception v1

    goto :goto_25

    .line 329
    :catch_1e
    move-exception v1

    .line 330
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "result":[I
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "cpu":I
    .end local p4    # "gpu":I
    .end local p5    # "pid":I
    throw v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1c

    .line 332
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "result":[I
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "cpu":I
    .restart local p4    # "gpu":I
    .restart local p5    # "pid":I
    :goto_25
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 333
    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_cc

    if-nez v1, :cond_6b

    .line 559
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->connect()V

    .line 560
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-eqz v1, :cond_53

    .line 561
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$500(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_14} :catch_5e
    .catchall {:try_start_7 .. :try_end_14} :catchall_5c

    if-eqz v1, :cond_4d

    .line 563
    :try_start_16
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 564
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 565
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$500(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_2b
    .catchall {:try_start_16 .. :try_end_25} :catchall_29

    .line 569
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_5e
    .catchall {:try_start_25 .. :try_end_28} :catchall_5c

    .line 570
    :goto_28
    goto :goto_58

    .line 569
    :catchall_29
    move-exception v1

    goto :goto_48

    .line 566
    :catch_2b
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_29

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    goto :goto_28

    :goto_48
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 570
    nop

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    throw v1

    .line 572
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_4d
    const-string v1, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 575
    :cond_53
    const-string v1, "  mVRRecord=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_58} :catch_5e
    .catchall {:try_start_44 .. :try_end_58} :catchall_5c

    .line 580
    :goto_58
    :try_start_58
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_cc

    goto :goto_65

    :catchall_5c
    move-exception v1

    goto :goto_66

    .line 577
    :catch_5e
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_5c

    .line 580
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_62
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    .line 581
    :goto_65
    goto :goto_ca

    .line 580
    :goto_66
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    .line 581
    nop

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    throw v1

    .line 583
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVRRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$500(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_8c
    .catchall {:try_start_62 .. :try_end_8c} :catchall_cc

    if-eqz v1, :cond_c5

    .line 586
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 587
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 588
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->access$500(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9d} :catch_a3
    .catchall {:try_start_8e .. :try_end_9d} :catchall_a1

    .line 592
    :try_start_9d
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_cc

    .line 593
    :goto_a0
    goto :goto_ca

    .line 592
    :catchall_a1
    move-exception v1

    goto :goto_c0

    .line 589
    :catch_a3
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_a1

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_bc
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    goto :goto_a0

    :goto_c0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 593
    nop

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    throw v1

    .line 595
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_c5
    const-string v1, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    :goto_ca
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_bc .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 434
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_9

    .line 435
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_10
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 440
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_e
    move-exception v0

    goto :goto_17

    .line 437
    :catch_10
    move-exception v0

    .line 438
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "method":Ljava/lang/String;
    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 440
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "pid":I
    .restart local p2    # "uid":I
    .restart local p3    # "method":Ljava/lang/String;
    :goto_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 441
    throw v0
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 446
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 447
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_9

    .line 448
    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_10
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 453
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 454
    nop

    .line 455
    return-void

    .line 453
    :catchall_e
    move-exception v0

    goto :goto_17

    .line 450
    :catch_10
    move-exception v0

    .line 451
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "method":Ljava/lang/String;
    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 453
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "method":Ljava/lang/String;
    :goto_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 454
    throw v0
.end method

.method public getPowerLevelState()I
    .registers 4

    .line 401
    const/4 v0, -0x1

    .line 404
    .local v0, "result":I
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 405
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_c

    .line 406
    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getPowerLevelState()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    move v0, v2

    .line 411
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_c
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 412
    nop

    .line 414
    return v0

    .line 411
    :catchall_11
    move-exception v1

    goto :goto_1a

    .line 408
    :catch_13
    move-exception v1

    .line 409
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_14
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "result":I
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    throw v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 411
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "result":I
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    :goto_1a
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 412
    throw v1
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "option"    # Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "result":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 371
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_c

    .line 373
    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    move-object v0, v2

    .line 378
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_c
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 379
    nop

    .line 380
    return-object v0

    .line 378
    :catchall_11
    move-exception v1

    goto :goto_1a

    .line 375
    :catch_13
    move-exception v1

    .line 376
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_14
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "option":Ljava/lang/String;
    throw v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 378
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "option":Ljava/lang/String;
    :goto_1a
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 379
    throw v1
.end method

.method public handleHmtEventChanged(II)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "type"    # I

    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 469
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_9

    .line 470
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->notifyHmtEventChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_10
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 475
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 476
    nop

    .line 477
    return-void

    .line 475
    :catchall_e
    move-exception v0

    goto :goto_17

    .line 472
    :catch_10
    move-exception v0

    .line 473
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "event":I
    .end local p2    # "type":I
    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 475
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "event":I
    .restart local p2    # "type":I
    :goto_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 476
    throw v0
.end method

.method public handleNotifyVrActivityFocusChanged(Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;)V
    .registers 9
    .param p1, "vrActivityRecord"    # Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 529
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_14

    .line 530
    iget v2, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->xrFlags:I

    iget-object v3, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->userId:I

    iget-object v5, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->callingPackage:Landroid/content/ComponentName;

    iget v6, p1, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->displayId:I

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->notifyXrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_1b
    .catchall {:try_start_0 .. :try_end_14} :catchall_19

    .line 535
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_14
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 536
    nop

    .line 537
    return-void

    .line 535
    :catchall_19
    move-exception v0

    goto :goto_22

    .line 532
    :catch_1b
    move-exception v0

    .line 533
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "vrActivityRecord":Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
    throw v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 535
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "vrActivityRecord":Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
    :goto_22
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 536
    throw v0
.end method

.method public handleVrMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 485
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 486
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_9

    .line 487
    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setVrMode(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_10
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 492
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :catchall_e
    move-exception v0

    goto :goto_17

    .line 489
    :catch_10
    move-exception v0

    .line 490
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "enabled":Z
    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 492
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "enabled":Z
    :goto_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 493
    throw v0
.end method

.method public notifyDeviceEventChanged(I)V
    .registers 4
    .param p1, "event"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyHmtEventChanged(II)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "type"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    return-void
.end method

.method public notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .registers 7
    .param p1, "xrFlags"    # I
    .param p2, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyXrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V
    .registers 13
    .param p1, "xrFlags"    # I
    .param p2, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "displayId"    # I

    .line 522
    new-instance v6, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;-><init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V

    .line 523
    .local v0, "vrActivityRecord":Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "result":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 341
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_c

    .line 342
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    move v0, v2

    .line 347
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_c
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 348
    nop

    .line 349
    return v0

    .line 347
    :catchall_11
    move-exception v1

    goto :goto_1a

    .line 344
    :catch_13
    move-exception v1

    .line 345
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_14
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 347
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    :goto_1a
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 348
    throw v1
.end method

.method public retrieveEnableFrequencyLevels()[I
    .registers 4

    .line 384
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 388
    .local v0, "result":[I
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 389
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_11

    .line 390
    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->retrieveEnableFrequencyLevels()[I

    move-result-object v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_18
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    move-object v0, v2

    .line 395
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_11
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 396
    nop

    .line 397
    return-object v0

    .line 395
    :catchall_16
    move-exception v1

    goto :goto_1f

    .line 392
    :catch_18
    move-exception v1

    .line 393
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_19
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "result":[I
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    throw v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    .line 395
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "result":[I
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 396
    throw v1
.end method

.method public setRelayMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 355
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 356
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_9

    .line 358
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_10
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 363
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_e
    move-exception v0

    goto :goto_17

    .line 360
    :catch_10
    move-exception v0

    .line 361
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "option":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    .line 363
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "option":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :goto_17
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 364
    throw v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 420
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_e

    .line 421
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_16
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    .line 426
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 421
    return v1

    .line 426
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_e
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 427
    nop

    .line 428
    const/4 v0, 0x0

    return v0

    .line 426
    :catchall_14
    move-exception v0

    goto :goto_1d

    .line 423
    :catch_16
    move-exception v0

    .line 424
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    .end local p4    # "priority":I
    throw v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_14

    .line 426
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerExternal;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "pid":I
    .restart local p3    # "tid":I
    .restart local p4    # "priority":I
    :goto_1d
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->cleanUpVrService()V

    .line 427
    throw v0
.end method

.method public setVrMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 480
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method

.method public startVrHome()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startVrRecents()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startWaitActivity(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
