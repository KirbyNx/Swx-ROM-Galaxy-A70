.class Lcom/android/server/net/UrspService$UrspHandler;
.super Landroid/os/Handler;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 450
    iput-object p1, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    .line 451
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 452
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_fc

    .line 527
    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    goto/16 :goto_fb

    .line 519
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 520
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 522
    .local v1, "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    iget-object v2, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # invokes: Lcom/android/server/net/UrspService;->onSetUrspDnn(ILjava/util/List;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/net/UrspService;->access$100(Lcom/android/server/net/UrspService;ILjava/util/List;)V

    .line 523
    goto/16 :goto_fb

    .line 508
    .end local v0    # "type":I
    .end local v1    # "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :pswitch_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 509
    .restart local v0    # "type":I
    if-nez v0, :cond_fb

    .line 510
    iget-object v3, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v3}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/net/UrspCore;->getAllUrspRule()[I

    move-result-object v3

    .line 511
    .local v3, "uids":[I
    array-length v4, v3

    move v5, v2

    :goto_42
    if-ge v5, v4, :cond_54

    aget v6, v3, v5

    .line 512
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v7}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7, v1, v6}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 511
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 514
    .end local v3    # "uids":[I
    :cond_54
    goto/16 :goto_fb

    .line 487
    .end local v0    # "type":I
    :pswitch_56
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 488
    .restart local v0    # "type":I
    if-ne v0, v1, :cond_fb

    .line 489
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_60

    move v3, v1

    goto :goto_61

    :cond_60
    move v3, v2

    .line 490
    .local v3, "enabled":Z
    :goto_61
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [I

    .line 491
    .local v4, "uids":[I
    if-eqz v3, :cond_94

    .line 492
    array-length v5, v4

    move v6, v2

    :goto_69
    if-ge v6, v5, :cond_a8

    aget v7, v4, v6

    .line 493
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v7}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 494
    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v2, v7}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 496
    :cond_86
    iget-object v8, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v8}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8, v1, v7}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 492
    .end local v7    # "uid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 499
    :cond_94
    array-length v1, v4

    move v5, v2

    :goto_96
    if-ge v5, v1, :cond_a8

    aget v6, v4, v5

    .line 500
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v7}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7, v2, v6}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 499
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    .line 503
    .end local v3    # "enabled":Z
    .end local v4    # "uids":[I
    :cond_a8
    goto :goto_fb

    .line 470
    .end local v0    # "type":I
    :pswitch_a9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 471
    .restart local v0    # "type":I
    if-ne v0, v1, :cond_fb

    .line 472
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_b3

    move v3, v1

    goto :goto_b4

    :cond_b3
    move v3, v2

    .line 473
    .restart local v3    # "enabled":Z
    :goto_b4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 474
    .local v4, "uid":I
    if-eqz v3, :cond_e3

    .line 475
    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 476
    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v2, v4}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 478
    :cond_d7
    iget-object v5, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v5}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v2, v1, v4}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    goto :goto_ee

    .line 480
    :cond_e3
    iget-object v1, p0, Lcom/android/server/net/UrspService$UrspHandler;->this$0:Lcom/android/server/net/UrspService;

    # getter for: Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;
    invoke-static {v1}, Lcom/android/server/net/UrspService;->access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 482
    .end local v3    # "enabled":Z
    .end local v4    # "uid":I
    :goto_ee
    goto :goto_fb

    .line 463
    .end local v0    # "type":I
    :pswitch_ef
    const-string v0, "MSG_REQUEST_MDO_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 466
    goto :goto_fb

    .line 458
    :pswitch_f5
    const-string v0, "MSG_INIT_URSP_SERVICE"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 459
    nop

    .line 531
    :cond_fb
    :goto_fb
    return-void

    :pswitch_data_fc
    .packed-switch 0x2711
        :pswitch_f5
        :pswitch_ef
        :pswitch_a9
        :pswitch_56
        :pswitch_30
        :pswitch_23
    .end packed-switch
.end method
