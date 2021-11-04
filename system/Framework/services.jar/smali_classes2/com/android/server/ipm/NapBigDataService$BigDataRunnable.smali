.class Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;
.super Ljava/lang/Object;
.source "NapBigDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapBigDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDataRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/ipm/NapBigDataService;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/NapBigDataService;Landroid/app/job/JobParameters;)V
    .registers 3
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 466
    iput-object p1, p0, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;->this$0:Lcom/android/server/ipm/NapBigDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 468
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 472
    # getter for: Lcom/android/server/ipm/NapBigDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PkgPredictorService-NapBigDataService"

    if-nez v0, :cond_e

    .line 473
    const-string v0, "context == null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 478
    :cond_e
    # getter for: Lcom/android/server/ipm/NapBigDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->access$000()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/ipm/BigData;->SendBigData(Landroid/content/Context;Z)Z

    move-result v0

    .line 479
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1f

    .line 480
    const-string v2, "Send bigdata successfuly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 482
    :cond_1f
    const-string v2, "Failed to send bigdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_24
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->savePkgAccuracyMap()V

    .line 488
    iget-object v1, p0, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;->this$0:Lcom/android/server/ipm/NapBigDataService;

    iget-object v2, p0, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ipm/NapBigDataService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 489
    return-void
.end method
