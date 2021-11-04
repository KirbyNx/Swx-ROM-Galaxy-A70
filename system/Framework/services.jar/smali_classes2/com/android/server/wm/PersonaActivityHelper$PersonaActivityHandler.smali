.class Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;
.super Landroid/os/Handler;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PersonaActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaActivityHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaActivityHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 543
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 544
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 545
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/wm/ActivityRecord;I)Ljava/lang/Boolean;
    .registers 3
    .param p0, "x$0"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "x$1"    # I

    .line 567
    # invokes: Lcom/android/server/wm/PersonaActivityHelper;->isActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z
    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->access$300(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 548
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_cc

    goto/16 :goto_ca

    .line 614
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 615
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    # invokes: Lcom/android/server/wm/PersonaActivityHelper;->lockSecureFolderIfNecessary(Lcom/android/server/wm/ActivityRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/wm/PersonaActivityHelper;->access$200(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_ca

    .line 600
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 602
    .local v0, "mSecureFolderId":I
    :try_start_15
    const-string/jumbo v2, "trust"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v2

    .line 603
    .local v2, "trustManager":Landroid/app/trust/ITrustManager;
    if-eqz v2, :cond_26

    .line 604
    invoke-interface {v2, v0, v1}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V

    goto :goto_2d

    .line 606
    :cond_26
    const-string v1, "PersonaActivityHandler"

    const-string v3, "device lock failed. trustmanager may be null."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_2e

    .line 610
    .end local v2    # "trustManager":Landroid/app/trust/ITrustManager;
    :goto_2d
    goto :goto_32

    .line 608
    :catch_2e
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    .end local v0    # "mSecureFolderId":I
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    goto/16 :goto_ca

    .line 588
    :pswitch_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 589
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 590
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "isHomeActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 591
    .local v2, "isHomeActivity":Z
    const-string v3, "componentName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "componentName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v4, "i":Landroid/content/Intent;
    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string/jumbo v5, "isHomeActivity"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    const-string v5, "componentName"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v5, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v5, v5, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 598
    .end local v0    # "userId":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isHomeActivity":Z
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v4    # "i":Landroid/content/Intent;
    goto :goto_ca

    .line 556
    :pswitch_69
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v0, :cond_70

    goto :goto_ca

    .line 557
    :cond_70
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 558
    .local v0, "userHandle":I
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v2, v2, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 559
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v3, v3, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "displayNdx":I
    :goto_85
    if-ltz v3, :cond_9e

    .line 560
    iget-object v4, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v4, v4, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 561
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_9b

    .line 562
    new-instance v5, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$AzR0rz9y-R7cU-A92DbtL62n7z8;-><init>(Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;I)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/DisplayContent;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 559
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_9b
    add-int/lit8 v3, v3, -0x1

    goto :goto_85

    .line 584
    .end local v3    # "displayNdx":I
    :cond_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_79 .. :try_end_9f} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 585
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    # invokes: Lcom/android/server/wm/PersonaActivityHelper;->removeMinimizedFreeformTaskExplicitly(I)V
    invoke-static {v1, v0}, Lcom/android/server/wm/PersonaActivityHelper;->access$100(Lcom/android/server/wm/PersonaActivityHelper;I)V

    .line 586
    .end local v0    # "userHandle":I
    goto :goto_ca

    .line 584
    .restart local v0    # "userHandle":I
    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 550
    .end local v0    # "userHandle":I
    :pswitch_ae
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v1, v1, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const v2, 0x10405c2

    .line 552
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 553
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 550
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 554
    nop

    .line 618
    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x259
        :pswitch_ae
        :pswitch_69
        :pswitch_34
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method public synthetic lambda$handleMessage$1$PersonaActivityHelper$PersonaActivityHandler(ILcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "t"    # Lcom/android/server/wm/Task;

    .line 563
    if-nez p2, :cond_3

    .line 564
    return-void

    .line 566
    :cond_3
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 568
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 566
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 569
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    move-result v1

    .line 570
    .local v1, "isTaskNeedToRemoved":Z
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 571
    if-eqz v1, :cond_4f

    .line 573
    :try_start_1c
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 574
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/wm/Task;->setUnminimizedWhenRestored(Z)V

    .line 576
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v2, v2, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->semRemoveTask(II)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    .line 579
    goto :goto_4f

    .line 577
    :catch_38
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to removeTask exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaActivityHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4f
    :goto_4f
    return-void
.end method
