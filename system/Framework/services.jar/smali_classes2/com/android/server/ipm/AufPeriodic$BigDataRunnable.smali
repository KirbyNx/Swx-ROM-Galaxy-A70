.class Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;
.super Ljava/lang/Object;
.source "AufPeriodic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/AufPeriodic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDataRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/ipm/AufPeriodic;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/AufPeriodic;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 409
    iput-object p1, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->this$0:Lcom/android/server/ipm/AufPeriodic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 411
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 415
    # getter for: Lcom/android/server/ipm/AufPeriodic;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$000()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "PkgPredictorService-AufPeriodic"

    if-nez v0, :cond_16

    .line 416
    const-string v0, "context == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->this$0:Lcom/android/server/ipm/AufPeriodic;

    iget-object v2, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ipm/AufPeriodic;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 418
    return-void

    .line 420
    :cond_16
    const-string/jumbo v0, "start run()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    # getter for: Lcom/android/server/ipm/AufPeriodic;->mPredictor:Lcom/android/server/ipm/AufPredictor;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$100()Lcom/android/server/ipm/AufPredictor;

    move-result-object v0

    if-eqz v0, :cond_5f

    # getter for: Lcom/android/server/ipm/AufPeriodic;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$200()Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 424
    const-string/jumbo v0, "requestPrediction using job sheduler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->pps:Lcom/android/server/ipm/PkgPredictorService;

    if-eqz v0, :cond_37

    .line 428
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->pps:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v0}, Lcom/android/server/ipm/PkgPredictorService;->saveRemainRecords()V

    .line 431
    :cond_37
    const-wide/16 v2, 0x7d0

    :try_start_39
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 434
    goto :goto_41

    .line 432
    :catch_3d
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 435
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_41
    # getter for: Lcom/android/server/ipm/AufPeriodic;->mPredictor:Lcom/android/server/ipm/AufPredictor;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$100()Lcom/android/server/ipm/AufPredictor;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/ipm/AufPredictor;->AppPredict(I)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/android/server/ipm/AufPeriodic;->mPredictAppLists:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/ipm/AufPeriodic;->access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 436
    # getter for: Lcom/android/server/ipm/AufPeriodic;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$200()Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v0

    # getter for: Lcom/android/server/ipm/AufPeriodic;->mPredictAppLists:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ipm/AufHitCalculation;->updatePredictApplists(Ljava/util/ArrayList;)V

    .line 437
    # getter for: Lcom/android/server/ipm/AufPeriodic;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {}, Lcom/android/server/ipm/AufPeriodic;->access$200()Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/AufHitCalculation;->updateHitCount()V

    goto :goto_64

    .line 439
    :cond_5f
    const-string v0, "get AufPredictor & AufHitCalculation Class failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_64
    iget-object v0, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->this$0:Lcom/android/server/ipm/AufPeriodic;

    iget-object v2, p0, Lcom/android/server/ipm/AufPeriodic$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ipm/AufPeriodic;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 442
    return-void
.end method
