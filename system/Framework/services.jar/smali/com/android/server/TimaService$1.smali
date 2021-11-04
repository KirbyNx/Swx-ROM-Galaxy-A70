.class Lcom/android/server/TimaService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/TimaService;

    .line 2444
    iput-object p1, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2448
    const-string v0, "TimaService"

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2451
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver - action:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v2, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v2}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_75

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    if-eqz v2, :cond_60

    :try_start_24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2456
    .local v4, "token":J
    iget-object v2, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isZeroModel()Z
    invoke-static {v2}, Lcom/android/server/TimaService;->access$300(Lcom/android/server/TimaService;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2457
    iget-object v2, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->notifyKapEnabled()V
    invoke-static {v2}, Lcom/android/server/TimaService;->access$400(Lcom/android/server/TimaService;)V

    .line 2460
    :cond_3b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2461
    .local v2, "kapIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2462
    const-string v6, "com.samsung.klmsagent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2463
    const-string v6, "KAP_LICENSE_STATUS_REQUEST"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2464
    iget-object v6, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2465
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    .end local v2    # "kapIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_60
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2469
    const-string/jumbo v2, "received ACTION_BOOT_COMPLETED, start new thread"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    new-instance v0, Lcom/android/server/TimaService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1$1;-><init>(Lcom/android/server/TimaService$1;)V

    .line 2481
    invoke-virtual {v0}, Lcom/android/server/TimaService$1$1;->start()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_74} :catch_75

    .line 2485
    .end local v1    # "action":Ljava/lang/String;
    :cond_74
    goto :goto_79

    .line 2483
    :catch_75
    move-exception v0

    .line 2484
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    return-void
.end method
