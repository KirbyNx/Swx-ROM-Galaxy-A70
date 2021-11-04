.class final Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;
.super Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken$Stub;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefreshRateMaxLimitTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mRefreshRate:I

.field private final mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "refreshRate"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 1316
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken$Stub;-><init>()V

    .line 1317
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mToken:Landroid/os/IBinder;

    .line 1318
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mTag:Ljava/lang/String;

    .line 1319
    iput p3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mRefreshRate:I

    .line 1320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mAcquireTime:J

    .line 1321
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    .line 1309
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    .line 1309
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mRefreshRate:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1333
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # invokes: Lcom/android/server/display/DisplayModeDirector;->removeRefreshRateMaxLimitTokenLocked(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V
    invoke-static {v1, p0}, Lcom/android/server/display/DisplayModeDirector;->access$1300(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V

    .line 1334
    monitor-exit v0

    .line 1335
    return-void

    .line 1334
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public release()V
    .registers 3

    .line 1325
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1326
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # invokes: Lcom/android/server/display/DisplayModeDirector;->removeRefreshRateMaxLimitTokenLocked(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V
    invoke-static {v1, p0}, Lcom/android/server/display/DisplayModeDirector;->access$1300(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V

    .line 1327
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ RefreshRateMaxLimitTokenImpl -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RefreshRate ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], acquire at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mAcquireTime:J

    .line 1340
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    return-object v0
.end method
