.class Lcom/android/server/ipm/PkgPredictorService$1;
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

    .line 224
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen receive a broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1e
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_64

    .line 244
    :cond_2f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 245
    const/4 v1, 0x1

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$302(Z)Z

    .line 246
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/NapPreloadController;->stopPreloading()V

    .line 247
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 248
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 249
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_63

    .line 250
    :cond_56
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 251
    const/4 v1, 0x0

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$302(Z)Z

    goto :goto_9f

    .line 250
    :cond_63
    :goto_63
    goto :goto_9f

    .line 230
    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/Collector;->saveRecords()V

    .line 231
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$100(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPredictor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/NapPredictor;->save()V

    .line 232
    const-string v1, "1"

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 233
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget-object v1, v1, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    if-eqz v1, :cond_8b

    .line 234
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget-object v1, v1, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    invoke-virtual {v1}, Lcom/android/server/ipm/DexPreloader;->launchedPkgDbOperation()V

    .line 237
    :cond_8b
    invoke-static {}, Lcom/android/server/ipm/DBManager;->destroyInstance()V

    .line 239
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 240
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 241
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/AufHitCalculation;->updateHitCount()V

    .line 253
    :cond_9f
    :goto_9f
    return-void
.end method
