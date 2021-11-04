.class Lcom/android/server/ipm/PkgPredictorService$9;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 443
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$9;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 446
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_23

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 447
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$9;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleNapTrainningTrigger()V
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$1000(Lcom/android/server/ipm/PkgPredictorService;)V

    .line 448
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 449
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 450
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$9;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    .end local v0    # "msg":Landroid/os/Message;
    :cond_23
    return-void
.end method
