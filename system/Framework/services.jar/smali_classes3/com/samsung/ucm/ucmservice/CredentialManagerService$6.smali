.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 479
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 482
    const-string v0, "The exception occurs "

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside mRefreshReceiver onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 485
    const-string v2, "onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_29
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 490
    goto :goto_46

    .line 488
    :catch_2f
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_46
    :try_start_46
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerHALService()I

    move-result v2

    .line 493
    .local v2, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerHALService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_60

    .line 496
    nop

    .end local v2    # "ret":I
    goto :goto_77

    .line 494
    :catch_60
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_77
    :try_start_77
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runSefTestForEseCommTA()V
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 499
    const-string v2, "runSefTestForEseCommTA executed."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_82

    goto :goto_99

    .line 500
    :catch_82
    move-exception v2

    .line 501
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_99
    goto :goto_d9

    .line 504
    :cond_9a
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 505
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 506
    const-string v0, "Already UPSM is enabled nothing to do"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 508
    :cond_b4
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1502(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z

    .line 509
    const-string v0, "Already UPSM disabled -> enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 512
    :cond_c0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 513
    const-string v0, "Already UPSM enabled -> disabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1502(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z

    .line 519
    :cond_d9
    :goto_d9
    return-void
.end method
