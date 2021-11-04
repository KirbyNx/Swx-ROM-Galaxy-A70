.class Lcom/android/server/ipm/PkgPredictorService$6;
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

    .line 372
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v2, "PkgPredictorService"

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear DB recved: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1e
    const-string v1, "com.samsung.CLEAR_AUF_DB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_62

    .line 379
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_37

    .line 381
    const-string v3, "CLEAR_AUF_DB intent has invalid extra"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 382
    :cond_37
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 383
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1100(Lcom/android/server/ipm/PkgPredictorService;I)V

    goto :goto_84

    .line 384
    :cond_45
    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 385
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V
    invoke-static {v2, v4}, Lcom/android/server/ipm/PkgPredictorService;->access$1100(Lcom/android/server/ipm/PkgPredictorService;I)V

    goto :goto_84

    .line 386
    :cond_53
    const-string/jumbo v2, "reset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 387
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->clearDB()V
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$1200(Lcom/android/server/ipm/PkgPredictorService;)V

    goto :goto_84

    .line 389
    .end local v1    # "type":Ljava/lang/String;
    :cond_62
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 390
    const/4 v1, -0x1

    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 391
    .local v1, "mReason":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7b

    .line 392
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V
    invoke-static {v2, v4}, Lcom/android/server/ipm/PkgPredictorService;->access$1100(Lcom/android/server/ipm/PkgPredictorService;I)V

    goto :goto_85

    .line 393
    :cond_7b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_85

    .line 394
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$6;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1100(Lcom/android/server/ipm/PkgPredictorService;I)V

    goto :goto_85

    .line 389
    .end local v1    # "mReason":I
    :cond_84
    :goto_84
    nop

    .line 397
    :cond_85
    :goto_85
    return-void
.end method
