.class public Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;
.super Landroid/app/job/JobService;
.source "ChimeraStandbyBucketCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChimeraStandbyBucketCollectorService"

.field private static sSBCollectorService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;->sSBCollectorService:Landroid/content/ComponentName;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const-string v0, "ChimeraStandbyBucketCollectorService"

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 72
    .local v1, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;->sSBCollectorService:Landroid/content/ComponentName;

    const/16 v4, 0x26ac

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 75
    const-wide/32 v3, 0x5265c00

    const-wide/32 v5, 0x4f1a00

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 76
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 81
    .local v2, "job":Landroid/app/job/JobInfo;
    :try_start_2b
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 82
    const-string v3, "Collect StandbyBucket job..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    .line 85
    goto :goto_4d

    .line 83
    :catch_34
    move-exception v3

    .line 84
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collect StandbyBucket has exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService$CollectorRunnable;-><init>(Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 67
    const/4 v0, 0x0

    return v0
.end method
