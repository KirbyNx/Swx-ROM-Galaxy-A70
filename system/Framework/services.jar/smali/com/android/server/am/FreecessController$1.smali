.class Lcom/android/server/am/FreecessController$1;
.super Landroid/app/IProcessObserver$Stub;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreecessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/FreecessController;

    .line 2981
    iput-object p1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 2984
    if-eqz p3, :cond_11

    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$200(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2985
    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    const-string v1, "FGActivity"

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 2988
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$300(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mIsCharging:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$400(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$200(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p3, :cond_2c

    goto :goto_74

    .line 2991
    :cond_2c
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2992
    const v1, 0x186a0

    if-lt p2, v1, :cond_35

    :goto_34
    goto :goto_3c

    :cond_35
    :try_start_35
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    goto :goto_34

    .line 2993
    :goto_3c
    iget-object v1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # invokes: Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    invoke-static {v1, p2}, Lcom/android/server/am/FreecessController;->access$500(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 2994
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_46

    monitor-exit v0

    return-void

    .line 2995
    :cond_46
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_56

    monitor-exit v0

    return-void

    .line 2997
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$600(Lcom/android/server/am/FreecessController;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2998
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/am/FreecessHandler;->sendUidIdleCheckMsg(ILjava/lang/String;)V

    goto :goto_6f

    .line 3000
    :cond_68
    iget-object v2, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    .line 3003
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_6f
    :goto_6f
    monitor-exit v0

    .line 3004
    return-void

    .line 3003
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_35 .. :try_end_73} :catchall_71

    throw v1

    .line 2989
    :cond_74
    :goto_74
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 3009
    return-void
.end method

.method public onProcessDied(II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3013
    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$300(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mIsCharging:Z
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$400(Lcom/android/server/am/FreecessController;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_58

    .line 3016
    :cond_11
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3017
    :try_start_14
    iget-object v1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    # invokes: Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    invoke-static {v1, p2}, Lcom/android/server/am/FreecessController;->access$500(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 3018
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_1e

    monitor-exit v0

    return-void

    .line 3019
    :cond_1e
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2e

    monitor-exit v0

    return-void

    .line 3022
    :cond_2e
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    .line 3023
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3024
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3025
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3026
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3028
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_53
    monitor-exit v0

    .line 3030
    return-void

    .line 3028
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_55

    throw v1

    .line 3014
    :cond_58
    :goto_58
    return-void
.end method
