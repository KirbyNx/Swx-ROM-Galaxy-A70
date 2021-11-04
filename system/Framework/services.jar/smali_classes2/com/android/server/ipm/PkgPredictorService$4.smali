.class Lcom/android/server/ipm/PkgPredictorService$4;
.super Landroid/content/BroadcastReceiver;
.source "PkgPredictorService.java"


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

    .line 312
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v2, "PkgPredictorService"

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date changed recved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1e
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " enabled = "

    if-nez v1, :cond_88

    .line 319
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_88

    .line 327
    :cond_31
    const-string v1, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 329
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v1, :cond_65

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$600()Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 331
    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$800(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 332
    :cond_53
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 333
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 334
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_d1

    .line 336
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sendMessage mBootupBoosterNum = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 337
    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 320
    :cond_88
    :goto_88
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v1, :cond_af

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$600()Z

    move-result v1

    if-nez v1, :cond_af

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 321
    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$800(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 322
    :cond_a2
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const-string v2, "Time changed"

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleBoosterPeriodPreload(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/PkgPredictorService;->access$900(Lcom/android/server/ipm/PkgPredictorService;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleNapTrainningTrigger()V
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$1000(Lcom/android/server/ipm/PkgPredictorService;)V

    goto :goto_d1

    .line 325
    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduled mBootupBoosterNum = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$4;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_d1
    :goto_d1
    return-void
.end method
