.class Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
.super Ljava/lang/Object;
.source "GearVrManagerExternal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRRecord"
.end annotation


# instance fields
.field private iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

.field private mBinder:Landroid/os/IBinder;

.field public mBound:Z

.field public mConnected:Z

.field public q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/vr/IGearVrManagerExternalService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Lcom/android/server/vr/GearVrManagerExternal$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/vr/GearVrManagerExternal;
    .param p2, "x1"    # Lcom/android/server/vr/GearVrManagerExternal$1;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;-><init>(Lcom/android/server/vr/GearVrManagerExternal;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 237
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    .param p1, "x1"    # Lcom/samsung/android/vr/IGearVrManagerExternalService;

    .line 237
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 237
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 250
    const-string v0, "GearVrManagerExternal"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 252
    :try_start_e
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$400(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v1

    if-ne v1, p0, :cond_1c

    .line 253
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # invokes: Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    goto :goto_23

    .line 255
    :cond_1c
    const-string v1, "GearVrManagerExternal"

    const-string v2, "binderDied() ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_23
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected() mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    .line 265
    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$400(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "GearVrManagerExternal"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$400(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v0

    if-ne v0, p0, :cond_56

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    if-nez v0, :cond_56

    .line 269
    const/4 v0, 0x1

    :try_start_46
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    .line 270
    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;

    .line 271
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_53} :catch_54

    goto :goto_55

    .line 272
    :catch_54
    move-exception v0

    .line 274
    :goto_55
    goto :goto_64

    .line 276
    :cond_56
    const-string/jumbo v0, "onServiceConnected() ignored."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_5c
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_62} :catch_63

    .line 281
    goto :goto_64

    .line 279
    :catch_63
    move-exception v0

    .line 283
    :goto_64
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 287
    const-string v0, "GearVrManagerExternal"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 289
    :try_start_f
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$400(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v1

    if-ne v1, p0, :cond_1d

    .line 290
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # invokes: Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    goto :goto_25

    .line 292
    :cond_1d
    const-string v1, "GearVrManagerExternal"

    const-string/jumbo v2, "onServiceDisconnected() ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_25
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1
.end method
