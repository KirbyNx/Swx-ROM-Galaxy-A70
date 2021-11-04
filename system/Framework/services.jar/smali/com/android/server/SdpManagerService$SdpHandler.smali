.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4542
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    .line 4543
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4544
    const-string v0, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {p1, v0}, Lcom/android/server/SdpManagerService;->access$4300(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    .line 4546
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 4549
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const-string v1, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->access$4300(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    .line 4550
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "userId"

    const-string v2, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_110

    :pswitch_12
    goto/16 :goto_10f

    .line 4659
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 4660
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_10f

    .line 4661
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4662
    .local v1, "userId":I
    const-string v2, "engineId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4663
    .local v2, "engineId":I
    const-string/jumbo v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4665
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleSendBroadcastForStateChange(III)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/SdpManagerService;->access$5200(Lcom/android/server/SdpManagerService;III)V

    .line 4666
    .end local v1    # "userId":I
    .end local v2    # "engineId":I
    .end local v3    # "state":I
    goto/16 :goto_10f

    .line 4644
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4646
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10f

    .line 4647
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4648
    .restart local v1    # "userId":I
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4649
    .local v3, "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v3, :cond_54

    .line 4650
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 4651
    const-string v4, "Enforce change password"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    .line 4655
    .end local v1    # "userId":I
    .end local v3    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    :cond_54
    goto/16 :goto_10f

    .line 4629
    .end local v0    # "obj":Ljava/lang/Object;
    :pswitch_56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4631
    .restart local v0    # "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10f

    .line 4632
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4633
    .restart local v1    # "userId":I
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4634
    .restart local v3    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v3, :cond_78

    .line 4635
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 4636
    const-string v4, "Legacy reset password"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    .line 4640
    .end local v1    # "userId":I
    .end local v3    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    :cond_78
    goto/16 :goto_10f

    .line 4613
    .end local v0    # "obj":Ljava/lang/Object;
    :pswitch_7a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4615
    .restart local v0    # "obj":Ljava/lang/Object;
    if-eqz v0, :cond_10f

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10f

    .line 4616
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4617
    .restart local v1    # "userId":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    .line 4618
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4619
    .restart local v3    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v3, :cond_a4

    .line 4620
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 4621
    const/4 v4, 0x0

    const-string v5, "Legacy reset timeout"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    .line 4625
    .end local v1    # "userId":I
    .end local v3    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    :cond_a4
    goto :goto_10f

    .line 4606
    .end local v0    # "obj":Ljava/lang/Object;
    :pswitch_a5
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleDeviceOwnerCleared()V
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5100(Lcom/android/server/SdpManagerService;)V

    .line 4607
    goto :goto_10f

    .line 4601
    :pswitch_ab
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4602
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleCleanupUser(I)V
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$5000(Lcom/android/server/SdpManagerService;I)V

    .line 4603
    goto :goto_10f

    .line 4593
    .end local v0    # "userId":I
    :pswitch_b3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4594
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleStartUser(I)V
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$4900(Lcom/android/server/SdpManagerService;I)V

    .line 4595
    goto :goto_10f

    .line 4588
    .end local v0    # "userId":I
    :pswitch_bb
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4589
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$4800(Lcom/android/server/SdpManagerService;I)V

    .line 4590
    goto :goto_10f

    .line 4583
    .end local v0    # "userId":I
    :pswitch_c3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4584
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handleUserAdded(I)V
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$4700(Lcom/android/server/SdpManagerService;I)V

    .line 4585
    goto :goto_10f

    .line 4573
    .end local v0    # "userId":I
    :pswitch_cb
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 4574
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_10f

    .line 4575
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4576
    .restart local v1    # "userId":I
    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4578
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->handlePackageRemoved(Ljava/lang/String;I)V
    invoke-static {v3, v2, v1}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V

    .line 4579
    .end local v1    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_10f

    .line 4567
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_e6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4568
    .local v0, "userId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4569
    .local v1, "order":I
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    .line 4570
    goto :goto_10f

    .line 4562
    .end local v0    # "userId":I
    .end local v1    # "order":I
    :pswitch_f0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4563
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 4564
    goto :goto_10f

    .line 4552
    .end local v0    # "userId":I
    :pswitch_f8
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->isSupportedDevice()Z
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4400(Lcom/android/server/SdpManagerService;)Z

    move-result v0

    if-nez v0, :cond_101

    .line 4553
    return-void

    .line 4555
    :cond_101
    const-string v0, "SdpManagerService.Handler"

    const-string/jumbo v1, "received MSG_SYSTEM_READY. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->onSystemReady()V
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4500(Lcom/android/server/SdpManagerService;)V

    .line 4559
    nop

    .line 4672
    :cond_10f
    :goto_10f
    return-void

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_f0
        :pswitch_e6
        :pswitch_cb
        :pswitch_c3
        :pswitch_bb
        :pswitch_b3
        :pswitch_12
        :pswitch_ab
        :pswitch_a5
        :pswitch_12
        :pswitch_7a
        :pswitch_56
        :pswitch_32
        :pswitch_14
    .end packed-switch
.end method
