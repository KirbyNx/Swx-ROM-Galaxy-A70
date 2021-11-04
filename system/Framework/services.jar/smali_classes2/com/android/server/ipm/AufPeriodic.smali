.class public Lcom/android/server/ipm/AufPeriodic;
.super Landroid/app/job/JobService;
.source "AufPeriodic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-AufPeriodic"

.field private static mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

.field private static mContext:Landroid/content/Context;

.field private static mPredictAppLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation
.end field

.field private static mPredictor:Lcom/android/server/ipm/AufPredictor;

.field private static previousTime:J

.field private static sAufPeriodic:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 396
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/ipm/AufPeriodic;->previousTime:J

    .line 402
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ipm/AufPeriodic;

    .line 404
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/AufPeriodic;->sAufPeriodic:Landroid/content/ComponentName;

    .line 402
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 392
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 392
    sget-object v0, Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/ipm/AufPredictor;
    .registers 1

    .line 392
    sget-object v0, Lcom/android/server/ipm/AufPeriodic;->mPredictor:Lcom/android/server/ipm/AufPredictor;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/ipm/AufHitCalculation;
    .registers 1

    .line 392
    sget-object v0, Lcom/android/server/ipm/AufPeriodic;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .registers 1

    .line 392
    sget-object v0, Lcom/android/server/ipm/AufPeriodic;->mPredictAppLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 392
    sput-object p0, Lcom/android/server/ipm/AufPeriodic;->mPredictAppLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 460
    sput-object p0, Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;

    .line 461
    new-instance v0, Lcom/android/server/ipm/AufPredictor;

    sget-object v1, Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ipm/AufPredictor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ipm/AufPeriodic;->mPredictor:Lcom/android/server/ipm/AufPredictor;

    .line 462
    new-instance v0, Lcom/android/server/ipm/AufHitCalculation;

    sget-object v1, Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ipm/AufHitCalculation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ipm/AufPeriodic;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ipm/AufPeriodic;->mPredictAppLists:Ljava/util/ArrayList;

    .line 465
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 466
    .local v0, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/ipm/AufPeriodic;->sAufPeriodic:Landroid/content/ComponentName;

    const/16 v3, 0x264f

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 470
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 472
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 474
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 475
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 449
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;-><init>(Lcom/android/server/ipm/AufPeriodic;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 456
    const/4 v0, 0x0

    return v0
.end method
