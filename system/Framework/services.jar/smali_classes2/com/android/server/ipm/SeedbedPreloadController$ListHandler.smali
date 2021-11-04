.class Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;
.super Landroid/os/Handler;
.source "SeedbedPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedPreloadController;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/SeedbedPreloadController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 400
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    .line 401
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 406
    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$500()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedPreloadController;->access$200(Lcom/android/server/ipm/SeedbedPreloadController;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string/jumbo v2, "seedbed-SeedbedPreloadController"

    if-nez v0, :cond_23

    .line 407
    const-string/jumbo v0, "seedbed is shutdown"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->setSeedBedOff()V
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedPreloadController;->access$300(Lcom/android/server/ipm/SeedbedPreloadController;)V

    .line 409
    return-void

    .line 412
    :cond_23
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_35

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$100()I

    move-result v0

    if-nez v0, :cond_35

    .line 413
    const-string/jumbo v0, "seedbed slot cnt is 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 419
    :cond_35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c0

    :pswitch_3a
    goto/16 :goto_be

    .line 444
    :pswitch_3c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 445
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 446
    .local v1, "type":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->changePackageADJ(Ljava/lang/String;II)V
    invoke-static {v3, v2, v0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->access$1000(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V

    .line 449
    goto/16 :goto_be

    .line 459
    .end local v0    # "uid":I
    .end local v1    # "type":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :pswitch_4d
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->setKPMLevel(I)V
    invoke-static {v0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->access$1300(Lcom/android/server/ipm/SeedbedPreloadController;I)V

    .line 460
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->calcSeedbedLimitByKPMLevel()V
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedPreloadController;->access$1400(Lcom/android/server/ipm/SeedbedPreloadController;)V

    .line 461
    goto :goto_be

    .line 454
    :pswitch_5a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 455
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 456
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->processForegroundChanged(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->access$1200(Lcom/android/server/ipm/SeedbedPreloadController;II)V

    .line 457
    goto :goto_be

    .line 421
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :pswitch_64
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedPreloadController;->access$400(Lcom/android/server/ipm/SeedbedPreloadController;)Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAppInfoFromListsByUser(I)V

    .line 422
    goto :goto_be

    .line 451
    :pswitch_70
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->access$1100(Lcom/android/server/ipm/SeedbedPreloadController;Z)V

    .line 452
    goto :goto_be

    .line 438
    :pswitch_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 440
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 441
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->SeedBedListOut(Ljava/lang/String;II)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->access$900(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V

    .line 442
    goto :goto_be

    .line 424
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v2    # "type":I
    :pswitch_86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .restart local v0    # "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 426
    .restart local v1    # "uid":I
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 427
    .local v10, "userId":I
    sget-boolean v3, Lcom/android/server/ipm/PkgPredictorService;->mFirstTriggeredAfterBooting:Z

    if-eqz v3, :cond_b0

    .line 429
    :try_start_94
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->SeedBedListIn(Ljava/lang/String;II)V
    invoke-static {v3, v0, v1, v10}, Lcom/android/server/ipm/SeedbedPreloadController;->access$600(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_99} :catch_9a

    goto :goto_af

    .line 430
    :catch_9a
    move-exception v3

    .line 431
    .local v3, "ex":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send Broadcast intent for ACTION_PRELOAD_SEEDBED_SEND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :goto_af
    goto :goto_be

    .line 434
    :cond_b0
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    const/4 v4, 0x1

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$700()J

    move-result-wide v8

    move v5, v1

    move v6, v10

    move-object v7, v0

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/ipm/SeedbedPreloadController;->access$800(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;J)V

    .line 436
    nop

    .line 465
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v10    # "userId":I
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_86
        :pswitch_76
        :pswitch_70
        :pswitch_64
        :pswitch_5a
        :pswitch_4d
        :pswitch_3a
        :pswitch_3c
    .end packed-switch
.end method
