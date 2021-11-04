.class Lcom/android/server/ipm/PkgPredictorService$5;
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

    .line 345
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$5;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v2, "PkgPredictorService"

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPM changed recved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1e
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 352
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$600()Z

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$5;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 353
    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$5;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$800(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 354
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 355
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_5e

    .line 356
    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 357
    .local v2, "KPMLevel":I
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 358
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 359
    const/16 v4, 0x8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 360
    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService$5;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    .end local v2    # "KPMLevel":I
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_63

    .line 362
    :cond_5e
    const-string v3, "Not scheduled BootupBooster, KPM Bundle Extras is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :goto_63
    goto :goto_88

    .line 365
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduled KPM mBootupBoosterNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$5;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_88
    :goto_88
    return-void
.end method
