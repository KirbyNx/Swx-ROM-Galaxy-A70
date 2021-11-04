.class Lcom/android/server/ipm/PkgPredictorService$2;
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

    .line 257
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v2, "PkgPredictorService"

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media_Scan finished recved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1e
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->mFirstTriggeredAfterBooting:Z

    if-nez v1, :cond_94

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 264
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->mFirstTriggeredAfterBooting:Z

    .line 265
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v1, :cond_70

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$600()Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 268
    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$800(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 269
    :cond_52
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const-string v2, "Media scan finished"

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleBoosterPeriodPreload(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/PkgPredictorService;->access$900(Lcom/android/server/ipm/PkgPredictorService;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleNapTrainningTrigger()V
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$1000(Lcom/android/server/ipm/PkgPredictorService;)V

    .line 271
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 272
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 273
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_94

    .line 275
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not sendMessage mBootupBoosterNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$2;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_94
    :goto_94
    return-void
.end method
