.class final Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;
.super Lcom/samsung/android/hardware/display/ILowRefreshRateToken$Stub;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LowRefreshRateTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1377
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ILowRefreshRateToken$Stub;-><init>()V

    .line 1378
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mToken:Landroid/os/IBinder;

    .line 1379
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mTag:Ljava/lang/String;

    .line 1380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mAcquireTime:J

    .line 1381
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;

    .line 1371
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 1393
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1394
    const v1, 0x13af12

    const/4 v2, 0x2

    :try_start_b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mTag:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "binderDied"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1395
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # invokes: Lcom/android/server/display/DisplayModeDirector;->removeLowRefreshRateTokenLocked(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V
    invoke-static {v1, p0}, Lcom/android/server/display/DisplayModeDirector;->access$1600(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V

    .line 1396
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v1
.end method

.method public release()V
    .registers 6

    .line 1385
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1386
    const v1, 0x13af12

    const/4 v2, 0x2

    :try_start_b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mTag:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "release"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1387
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # invokes: Lcom/android/server/display/DisplayModeDirector;->removeLowRefreshRateTokenLocked(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V
    invoke-static {v1, p0}, Lcom/android/server/display/DisplayModeDirector;->access$1600(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V

    .line 1388
    monitor-exit v0

    .line 1389
    return-void

    .line 1388
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ LowRefreshRateTokenImpl -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mAcquireTime:J

    .line 1401
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    return-object v0
.end method
