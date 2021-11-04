.class Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;
.super Ljava/lang/Object;
.source "ChimeraStandbyBucketCollectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectorRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field private ruuning:Z

.field final synthetic this$0:Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 26
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->this$0:Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->ruuning:Z

    .line 27
    iput-object p2, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 32
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->ruuning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 33
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->getScreenOff()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 35
    nop

    .line 36
    const-string v0, "PkgPredictorService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/PkgPredictorService;

    .line 37
    .local v0, "predictor":Lcom/android/server/ipm/PkgPredictorService;
    const-string v2, "ChimeraStandbyBucketCollectorService"

    if-eqz v0, :cond_2e

    .line 38
    const-wide v3, 0x9a7ec800L

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ipm/PkgPredictorService;->trim(J)V

    .line 40
    invoke-virtual {v0}, Lcom/android/server/ipm/PkgPredictorService;->collectStandbyBucketForChimera()V

    .line 41
    const-string v3, "Collect StandbyBucket job is finished..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 43
    :cond_2e
    const-string v3, "get package predictor service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_33
    iput-boolean v1, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->ruuning:Z

    .line 46
    .end local v0    # "predictor":Lcom/android/server/ipm/PkgPredictorService;
    goto :goto_0

    .line 48
    :cond_36
    const-wide/32 v0, 0xea60

    :try_start_39
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 52
    :goto_3c
    goto :goto_0

    .line 49
    :catch_3d
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_3c

    .line 55
    :cond_42
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->this$0:Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 56
    return-void
.end method
