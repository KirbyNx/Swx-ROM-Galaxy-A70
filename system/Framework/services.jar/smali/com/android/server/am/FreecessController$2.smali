.class Lcom/android/server/am/FreecessController$2;
.super Landroid/app/IUidObserver$Stub;
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

    .line 3034
    iput-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3115
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3116
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3117
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3119
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_b9

    .line 3121
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 3122
    :try_start_24
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1100(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$300(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mIsCharging:Z
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$400(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 3123
    const v1, 0x186a0

    if-lt p1, v1, :cond_42

    :goto_41
    goto :goto_49

    :cond_42
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_41

    .line 3124
    :goto_49
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1200(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    .line 3125
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_59

    monitor-exit v2

    return-void

    .line 3128
    :cond_59
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean v3, v3, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v3, :cond_6e

    .line 3129
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v6, "CalmMode for restart"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 3130
    monitor-exit v2

    return-void

    .line 3133
    :cond_6e
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_78

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b4

    .line 3134
    :cond_78
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_a9

    .line 3135
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUidActive...uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", freezedState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :cond_a9
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessHandler;->sendResetStateMsg(Ljava/lang/String;I)V

    .line 3141
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_b4
    monitor-exit v2

    .line 3142
    return-void

    .line 3141
    :catchall_b6
    move-exception v1

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_24 .. :try_end_b8} :catchall_b6

    throw v1

    .line 3119
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3088
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3105
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3106
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3107
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3109
    :cond_20
    monitor-exit v1

    .line 3110
    return-void

    .line 3109
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v2
.end method

.method public onUidIdle(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3093
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3094
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3095
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3096
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3098
    :cond_20
    monitor-exit v1

    .line 3099
    return-void

    .line 3098
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v2
.end method

.method public onUidStateChanged(IIJI)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 3037
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3038
    .local v0, "uidInteger":Ljava/lang/Integer;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_aa

    .line 3039
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3040
    :try_start_e
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 3041
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3043
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_a7

    .line 3044
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean v2, v2, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$200(Lcom/android/server/am/FreecessController;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 3045
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3046
    :try_start_39
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_87

    .line 3047
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3048
    .local v1, "prevPkgUid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3049
    .local v3, "curPkgUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq p1, v4, :cond_a1

    .line 3050
    iget-object v4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3051
    move-object v1, v3

    .line 3052
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 3053
    iget-object v4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 3056
    .end local v1    # "prevPkgUid":Ljava/lang/Integer;
    .end local v3    # "curPkgUid":Ljava/lang/Integer;
    :cond_87
    iget-object v3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v1, :cond_a1

    .line 3057
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 3056
    :cond_a1
    :goto_a1
    nop

    .line 3059
    :goto_a2
    monitor-exit v2

    goto :goto_c7

    :catchall_a4
    move-exception v1

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_39 .. :try_end_a6} :catchall_a4

    throw v1

    .line 3043
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1

    .line 3062
    :cond_aa
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3063
    :try_start_b1
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 3064
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3066
    :cond_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_b1 .. :try_end_c7} :catchall_110

    .line 3069
    :cond_c7
    :goto_c7
    const/4 v1, 0x4

    if-eq p2, v1, :cond_ef

    const/4 v1, 0x5

    if-ne p2, v1, :cond_ce

    goto :goto_ef

    .line 3077
    :cond_ce
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3078
    :try_start_d5
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 3079
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3081
    :cond_ea
    monitor-exit v1

    goto :goto_10c

    :catchall_ec
    move-exception v2

    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_d5 .. :try_end_ee} :catchall_ec

    throw v2

    .line 3071
    :cond_ef
    :goto_ef
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3072
    :try_start_f6
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 3073
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3075
    :cond_10b
    monitor-exit v2

    .line 3083
    :goto_10c
    return-void

    .line 3075
    :catchall_10d
    move-exception v1

    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_f6 .. :try_end_10f} :catchall_10d

    throw v1

    .line 3066
    :catchall_110
    move-exception v2

    :try_start_111
    monitor-exit v1
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw v2
.end method
