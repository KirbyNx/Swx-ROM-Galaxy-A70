.class Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p2, "x1"    # Lcom/android/server/stats/pull/StatsPullAtomService$1;

    .line 409
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 412
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 416
    :cond_1d
    packed-switch p1, :pswitch_data_4b2

    .line 647
    :pswitch_20
    :try_start_20
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_499

    .line 643
    :pswitch_24
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_497

    .line 644
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    return v3

    .line 645
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_38
    throw v3

    .line 639
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_39
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_497

    .line 640
    :try_start_40
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4b

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    return v3

    .line 641
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4d
    throw v3

    .line 491
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_4e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_497

    .line 492
    :try_start_55
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_60

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 492
    return v3

    .line 493
    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_62
    throw v3

    .line 623
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_63
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_497

    .line 624
    :try_start_6a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_75

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 624
    return v3

    .line 625
    :catchall_75
    move-exception v3

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_77
    throw v3

    .line 627
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_78
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_497

    .line 628
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 628
    return v3

    .line 629
    :catchall_8a
    move-exception v3

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_8c
    throw v3

    .line 483
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_8d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemorySnapshotLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_497

    .line 484
    :try_start_94
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshotLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_9f

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 484
    return v3

    .line 485
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a1
    throw v3

    .line 495
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_a2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_497

    .line 496
    :try_start_a9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b4

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 496
    return v3

    .line 497
    :catchall_b4
    move-exception v3

    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_b6
    throw v3

    .line 619
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_b7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_497

    .line 620
    :try_start_be
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_c9

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 620
    return v3

    .line 621
    :catchall_c9
    move-exception v3

    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_cb
    throw v3

    .line 503
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_cc
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_497

    .line 504
    :try_start_d3
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_de

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 504
    return v3

    .line 505
    :catchall_de
    move-exception v3

    :try_start_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_e0
    throw v3

    .line 615
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_e1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_497

    .line 616
    :try_start_e8
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_f3

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 616
    return v3

    .line 617
    :catchall_f3
    move-exception v3

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_f5
    throw v3

    .line 611
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_f6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_497

    .line 612
    :try_start_fd
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_108

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 612
    return v3

    .line 613
    :catchall_108
    move-exception v3

    :try_start_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_10a
    throw v3

    .line 487
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_10b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_497

    .line 488
    :try_start_112
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_11d

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    return v3

    .line 489
    :catchall_11d
    move-exception v3

    :try_start_11e
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_11f
    throw v3

    .line 607
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_120
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_127
    .catchall {:try_start_11f .. :try_end_127} :catchall_497

    .line 608
    :try_start_127
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_127 .. :try_end_12e} :catchall_132

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    return v3

    .line 609
    :catchall_132
    move-exception v3

    :try_start_133
    monitor-exit v2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_134
    throw v3

    .line 603
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_135
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13c
    .catchall {:try_start_134 .. :try_end_13c} :catchall_497

    .line 604
    :try_start_13c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_143
    .catchall {:try_start_13c .. :try_end_143} :catchall_147

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 604
    return v3

    .line 605
    :catchall_147
    move-exception v3

    :try_start_148
    monitor-exit v2
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_149
    throw v3

    .line 599
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_14a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_151
    .catchall {:try_start_149 .. :try_end_151} :catchall_497

    .line 600
    :try_start_151
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_15c

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    return v3

    .line 601
    :catchall_15c
    move-exception v3

    :try_start_15d
    monitor-exit v2
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_15e
    throw v3

    .line 594
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_15f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_497

    .line 595
    :try_start_166
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_171

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 595
    return v3

    .line 596
    :catchall_171
    move-exception v3

    :try_start_172
    monitor-exit v2
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_173
    throw v3

    .line 540
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_174
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_17b
    .catchall {:try_start_173 .. :try_end_17b} :catchall_497

    .line 541
    :try_start_17b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x4

    # invokes: Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_187

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    return v3

    .line 543
    :catchall_187
    move-exception v3

    :try_start_188
    monitor-exit v2
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_189
    throw v3

    .line 586
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_18a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_191
    .catchall {:try_start_189 .. :try_end_191} :catchall_497

    .line 587
    :try_start_191
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_198
    .catchall {:try_start_191 .. :try_end_198} :catchall_19c

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 587
    return v3

    .line 588
    :catchall_19c
    move-exception v3

    :try_start_19d
    monitor-exit v2
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_19e
    throw v3

    .line 582
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_19f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a6
    .catchall {:try_start_19e .. :try_end_1a6} :catchall_497

    .line 583
    :try_start_1a6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1ad
    .catchall {:try_start_1a6 .. :try_end_1ad} :catchall_1b1

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    return v3

    .line 584
    :catchall_1b1
    move-exception v3

    :try_start_1b2
    monitor-exit v2
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1b3
    throw v3

    .line 590
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1b4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$4200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1bb
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_497

    .line 591
    :try_start_1bb
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1c2
    .catchall {:try_start_1bb .. :try_end_1c2} :catchall_1c6

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 591
    return v3

    .line 592
    :catchall_1c6
    move-exception v3

    :try_start_1c7
    monitor-exit v2
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1c8
    throw v3

    .line 479
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1c9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d0
    .catchall {:try_start_1c8 .. :try_end_1d0} :catchall_497

    .line 480
    :try_start_1d0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1d7
    .catchall {:try_start_1d0 .. :try_end_1d7} :catchall_1db

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    return v3

    .line 481
    :catchall_1db
    move-exception v3

    :try_start_1dc
    monitor-exit v2
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1db

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1dd
    throw v3

    .line 578
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1de
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e5
    .catchall {:try_start_1dd .. :try_end_1e5} :catchall_497

    .line 579
    :try_start_1e5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameOtherLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1ec
    .catchall {:try_start_1e5 .. :try_end_1ec} :catchall_1f0

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    return v3

    .line 580
    :catchall_1f0
    move-exception v3

    :try_start_1f1
    monitor-exit v2
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1f2
    throw v3

    .line 574
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1f3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1fa
    .catchall {:try_start_1f2 .. :try_end_1fa} :catchall_497

    .line 575
    :try_start_1fa
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerBlameUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_201
    .catchall {:try_start_1fa .. :try_end_201} :catchall_205

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    return v3

    .line 576
    :catchall_205
    move-exception v3

    :try_start_206
    monitor-exit v2
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_207
    throw v3

    .line 570
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_208
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20f
    .catchall {:try_start_207 .. :try_end_20f} :catchall_497

    .line 571
    :try_start_20f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_216
    .catchall {:try_start_20f .. :try_end_216} :catchall_21a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 571
    return v3

    .line 572
    :catchall_21a
    move-exception v3

    :try_start_21b
    monitor-exit v2
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_21a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_21c
    throw v3

    .line 566
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_21d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_224
    .catchall {:try_start_21c .. :try_end_224} :catchall_497

    .line 567
    :try_start_224
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_22b
    .catchall {:try_start_224 .. :try_end_22b} :catchall_22f

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 567
    return v3

    .line 568
    :catchall_22f
    move-exception v3

    :try_start_230
    monitor-exit v2
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_231
    throw v3

    .line 562
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_232
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_239
    .catchall {:try_start_231 .. :try_end_239} :catchall_497

    .line 563
    :try_start_239
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_240
    .catchall {:try_start_239 .. :try_end_240} :catchall_244

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 563
    return v3

    .line 564
    :catchall_244
    move-exception v3

    :try_start_245
    monitor-exit v2
    :try_end_246
    .catchall {:try_start_245 .. :try_end_246} :catchall_244

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_246
    throw v3

    .line 549
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_247
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24e
    .catchall {:try_start_246 .. :try_end_24e} :catchall_497

    .line 550
    :try_start_24e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I
    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_256
    .catchall {:try_start_24e .. :try_end_256} :catchall_25a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    return v3

    .line 552
    :catchall_25a
    move-exception v3

    :try_start_25b
    monitor-exit v2
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_25a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_25c
    throw v3

    .line 558
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_25d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_264
    .catchall {:try_start_25c .. :try_end_264} :catchall_497

    .line 559
    :try_start_264
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_26b
    .catchall {:try_start_264 .. :try_end_26b} :catchall_26f

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 559
    return v3

    .line 560
    :catchall_26f
    move-exception v3

    :try_start_270
    monitor-exit v2
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_271
    throw v3

    .line 554
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_272
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_279
    .catchall {:try_start_271 .. :try_end_279} :catchall_497

    .line 555
    :try_start_279
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_280
    .catchall {:try_start_279 .. :try_end_280} :catchall_284

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 555
    return v3

    .line 556
    :catchall_284
    move-exception v3

    :try_start_285
    monitor-exit v2
    :try_end_286
    .catchall {:try_start_285 .. :try_end_286} :catchall_284

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_286
    throw v3

    .line 535
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_287
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_28e
    .catchall {:try_start_286 .. :try_end_28e} :catchall_497

    .line 536
    :try_start_28e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_296
    .catchall {:try_start_28e .. :try_end_296} :catchall_29a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 536
    return v3

    .line 538
    :catchall_29a
    move-exception v3

    :try_start_29b
    monitor-exit v2
    :try_end_29c
    .catchall {:try_start_29b .. :try_end_29c} :catchall_29a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_29c
    throw v3

    .line 545
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_29d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a4
    .catchall {:try_start_29c .. :try_end_2a4} :catchall_497

    .line 546
    :try_start_2a4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/16 v4, 0xf

    # invokes: Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I
    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2ad
    .catchall {:try_start_2a4 .. :try_end_2ad} :catchall_2b1

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    return v3

    .line 547
    :catchall_2b1
    move-exception v3

    :try_start_2b2
    monitor-exit v2
    :try_end_2b3
    .catchall {:try_start_2b2 .. :try_end_2b3} :catchall_2b1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2b3
    throw v3

    .line 531
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2b4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2bb
    .catchall {:try_start_2b3 .. :try_end_2bb} :catchall_497

    .line 532
    :try_start_2bb
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2c2
    .catchall {:try_start_2bb .. :try_end_2c2} :catchall_2c6

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    return v3

    .line 533
    :catchall_2c6
    move-exception v3

    :try_start_2c7
    monitor-exit v2
    :try_end_2c8
    .catchall {:try_start_2c7 .. :try_end_2c8} :catchall_2c6

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2c8
    throw v3

    .line 527
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2c9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d0
    .catchall {:try_start_2c8 .. :try_end_2d0} :catchall_497

    .line 528
    :try_start_2d0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2d7
    .catchall {:try_start_2d0 .. :try_end_2d7} :catchall_2db

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    return v3

    .line 529
    :catchall_2db
    move-exception v3

    :try_start_2dc
    monitor-exit v2
    :try_end_2dd
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_2db

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2dd
    throw v3

    .line 523
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2de
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e5
    .catchall {:try_start_2dd .. :try_end_2e5} :catchall_497

    .line 524
    :try_start_2e5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2ec
    .catchall {:try_start_2e5 .. :try_end_2ec} :catchall_2f0

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 524
    return v3

    .line 525
    :catchall_2f0
    move-exception v3

    :try_start_2f1
    monitor-exit v2
    :try_end_2f2
    .catchall {:try_start_2f1 .. :try_end_2f2} :catchall_2f0

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2f2
    throw v3

    .line 519
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2f3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2fa
    .catchall {:try_start_2f2 .. :try_end_2fa} :catchall_497

    .line 520
    :try_start_2fa
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_301
    .catchall {:try_start_2fa .. :try_end_301} :catchall_305

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    return v3

    .line 521
    :catchall_305
    move-exception v3

    :try_start_306
    monitor-exit v2
    :try_end_307
    .catchall {:try_start_306 .. :try_end_307} :catchall_305

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_307
    throw v3

    .line 515
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_308
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_30f
    .catchall {:try_start_307 .. :try_end_30f} :catchall_497

    .line 516
    :try_start_30f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_316
    .catchall {:try_start_30f .. :try_end_316} :catchall_31a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 516
    return v3

    .line 517
    :catchall_31a
    move-exception v3

    :try_start_31b
    monitor-exit v2
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_31c
    throw v3

    .line 511
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_31d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_324
    .catchall {:try_start_31c .. :try_end_324} :catchall_497

    .line 512
    :try_start_324
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_32b
    .catchall {:try_start_324 .. :try_end_32b} :catchall_32f

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 512
    return v3

    .line 513
    :catchall_32f
    move-exception v3

    :try_start_330
    monitor-exit v2
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_32f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_331
    throw v3

    .line 507
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_332
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_339
    .catchall {:try_start_331 .. :try_end_339} :catchall_497

    .line 508
    :try_start_339
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_340
    .catchall {:try_start_339 .. :try_end_340} :catchall_344

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 508
    return v3

    .line 509
    :catchall_344
    move-exception v3

    :try_start_345
    monitor-exit v2
    :try_end_346
    .catchall {:try_start_345 .. :try_end_346} :catchall_344

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_346
    throw v3

    .line 499
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_347
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$2000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_34e
    .catchall {:try_start_346 .. :try_end_34e} :catchall_497

    .line 500
    :try_start_34e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_355
    .catchall {:try_start_34e .. :try_end_355} :catchall_359

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 500
    return v3

    .line 501
    :catchall_359
    move-exception v3

    :try_start_35a
    monitor-exit v2
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_359

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_35b
    throw v3

    .line 635
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_35c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_363
    .catchall {:try_start_35b .. :try_end_363} :catchall_497

    .line 636
    :try_start_363
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_36a
    .catchall {:try_start_363 .. :try_end_36a} :catchall_36e

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 636
    return v3

    .line 637
    :catchall_36e
    move-exception v3

    :try_start_36f
    monitor-exit v2
    :try_end_370
    .catchall {:try_start_36f .. :try_end_370} :catchall_36e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_370
    throw v3

    .line 451
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_371
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_378
    .catchall {:try_start_370 .. :try_end_378} :catchall_497

    .line 452
    :try_start_378
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_37f
    .catchall {:try_start_378 .. :try_end_37f} :catchall_383

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 452
    return v3

    .line 453
    :catchall_383
    move-exception v3

    :try_start_384
    monitor-exit v2
    :try_end_385
    .catchall {:try_start_384 .. :try_end_385} :catchall_383

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_385
    throw v3

    .line 447
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_386
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_38d
    .catchall {:try_start_385 .. :try_end_38d} :catchall_497

    .line 448
    :try_start_38d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_394
    .catchall {:try_start_38d .. :try_end_394} :catchall_398

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 448
    return v3

    .line 449
    :catchall_398
    move-exception v3

    :try_start_399
    monitor-exit v2
    :try_end_39a
    .catchall {:try_start_399 .. :try_end_39a} :catchall_398

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_39a
    throw v3

    .line 471
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_39b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a2
    .catchall {:try_start_39a .. :try_end_3a2} :catchall_497

    .line 472
    :try_start_3a2
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3a9
    .catchall {:try_start_3a2 .. :try_end_3a9} :catchall_3ad

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 472
    return v3

    .line 473
    :catchall_3ad
    move-exception v3

    :try_start_3ae
    monitor-exit v2
    :try_end_3af
    .catchall {:try_start_3ae .. :try_end_3af} :catchall_3ad

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3af
    throw v3

    .line 467
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3b0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b7
    .catchall {:try_start_3af .. :try_end_3b7} :catchall_497

    .line 468
    :try_start_3b7
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3be
    .catchall {:try_start_3b7 .. :try_end_3be} :catchall_3c2

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    return v3

    .line 469
    :catchall_3c2
    move-exception v3

    :try_start_3c3
    monitor-exit v2
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c2

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3c4
    throw v3

    .line 475
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3c5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3cc
    .catchall {:try_start_3c4 .. :try_end_3cc} :catchall_497

    .line 476
    :try_start_3cc
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3d3
    .catchall {:try_start_3cc .. :try_end_3d3} :catchall_3d7

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    return v3

    .line 477
    :catchall_3d7
    move-exception v3

    :try_start_3d8
    monitor-exit v2
    :try_end_3d9
    .catchall {:try_start_3d8 .. :try_end_3d9} :catchall_3d7

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3d9
    throw v3

    .line 459
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3da
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3e1
    .catchall {:try_start_3d9 .. :try_end_3e1} :catchall_497

    .line 460
    :try_start_3e1
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3e8
    .catchall {:try_start_3e1 .. :try_end_3e8} :catchall_3ec

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    return v3

    .line 461
    :catchall_3ec
    move-exception v3

    :try_start_3ed
    monitor-exit v2
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3ee
    throw v3

    .line 455
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3ef
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3f6
    .catchall {:try_start_3ee .. :try_end_3f6} :catchall_497

    .line 456
    :try_start_3f6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3fd
    .catchall {:try_start_3f6 .. :try_end_3fd} :catchall_401

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    return v3

    .line 457
    :catchall_401
    move-exception v3

    :try_start_402
    monitor-exit v2
    :try_end_403
    .catchall {:try_start_402 .. :try_end_403} :catchall_401

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_403
    throw v3

    .line 443
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_404
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_40b
    .catchall {:try_start_403 .. :try_end_40b} :catchall_497

    .line 444
    :try_start_40b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_412
    .catchall {:try_start_40b .. :try_end_412} :catchall_416

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 444
    return v3

    .line 445
    :catchall_416
    move-exception v3

    :try_start_417
    monitor-exit v2
    :try_end_418
    .catchall {:try_start_417 .. :try_end_418} :catchall_416

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_418
    throw v3

    .line 439
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_419
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_420
    .catchall {:try_start_418 .. :try_end_420} :catchall_497

    .line 440
    :try_start_420
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_427
    .catchall {:try_start_420 .. :try_end_427} :catchall_42b

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 440
    return v3

    .line 441
    :catchall_42b
    move-exception v3

    :try_start_42c
    monitor-exit v2
    :try_end_42d
    .catchall {:try_start_42c .. :try_end_42d} :catchall_42b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_42d
    throw v3

    .line 435
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_42e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerFreqLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_435
    .catchall {:try_start_42d .. :try_end_435} :catchall_497

    .line 436
    :try_start_435
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_43c
    .catchall {:try_start_435 .. :try_end_43c} :catchall_440

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 436
    return v3

    .line 437
    :catchall_440
    move-exception v3

    :try_start_441
    monitor-exit v2
    :try_end_442
    .catchall {:try_start_441 .. :try_end_442} :catchall_440

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_442
    throw v3

    .line 463
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_443
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$1100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_44a
    .catchall {:try_start_442 .. :try_end_44a} :catchall_497

    .line 464
    :try_start_44a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_451
    .catchall {:try_start_44a .. :try_end_451} :catchall_455

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 464
    return v3

    .line 465
    :catchall_455
    move-exception v3

    :try_start_456
    monitor-exit v2
    :try_end_457
    .catchall {:try_start_456 .. :try_end_457} :catchall_455

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_457
    throw v3

    .line 427
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_458
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_45f
    .catchall {:try_start_457 .. :try_end_45f} :catchall_497

    .line 428
    :try_start_45f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_466
    .catchall {:try_start_45f .. :try_end_466} :catchall_46a

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    return v3

    .line 429
    :catchall_46a
    move-exception v3

    :try_start_46b
    monitor-exit v2
    :try_end_46c
    .catchall {:try_start_46b .. :try_end_46c} :catchall_46a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_46c
    throw v3

    .line 431
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_46d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_474
    .catchall {:try_start_46c .. :try_end_474} :catchall_497

    .line 432
    :try_start_474
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_47b
    .catchall {:try_start_474 .. :try_end_47b} :catchall_47f

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 432
    return v3

    .line 433
    :catchall_47f
    move-exception v3

    :try_start_480
    monitor-exit v2
    :try_end_481
    .catchall {:try_start_480 .. :try_end_481} :catchall_47f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_481
    throw v3

    .line 423
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_482
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # getter for: Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_489
    .catchall {:try_start_481 .. :try_end_489} :catchall_497

    .line 424
    :try_start_489
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    # invokes: Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I
    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$100(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_490
    .catchall {:try_start_489 .. :try_end_490} :catchall_494

    .line 650
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 424
    return v3

    .line 425
    :catchall_494
    move-exception v3

    :try_start_495
    monitor-exit v2
    :try_end_496
    .catchall {:try_start_495 .. :try_end_496} :catchall_494

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_496
    throw v3

    .line 650
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :catchall_497
    move-exception v2

    goto :goto_4ae

    .line 647
    :goto_499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    throw v2
    :try_end_4ae
    .catchall {:try_start_496 .. :try_end_4ae} :catchall_497

    .line 650
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :goto_4ae
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 651
    throw v2

    :pswitch_data_4b2
    .packed-switch 0x2710
        :pswitch_482
        :pswitch_482
        :pswitch_482
        :pswitch_482
        :pswitch_46d
        :pswitch_20
        :pswitch_458
        :pswitch_443
        :pswitch_42e
        :pswitch_419
        :pswitch_404
        :pswitch_3ef
        :pswitch_3da
        :pswitch_3c5
        :pswitch_3b0
        :pswitch_39b
        :pswitch_386
        :pswitch_371
        :pswitch_20
        :pswitch_35c
        :pswitch_35c
        :pswitch_347
        :pswitch_332
        :pswitch_31d
        :pswitch_308
        :pswitch_2f3
        :pswitch_2de
        :pswitch_2c9
        :pswitch_2b4
        :pswitch_29d
        :pswitch_35c
        :pswitch_287
        :pswitch_272
        :pswitch_25d
        :pswitch_247
        :pswitch_232
        :pswitch_20
        :pswitch_21d
        :pswitch_20
        :pswitch_208
        :pswitch_1f3
        :pswitch_1de
        :pswitch_1c9
        :pswitch_35c
        :pswitch_1b4
        :pswitch_35c
        :pswitch_19f
        :pswitch_18a
        :pswitch_174
        :pswitch_15f
        :pswitch_14a
        :pswitch_20
        :pswitch_135
        :pswitch_120
        :pswitch_20
        :pswitch_20
        :pswitch_10b
        :pswitch_f6
        :pswitch_e1
        :pswitch_cc
        :pswitch_b7
        :pswitch_a2
        :pswitch_20
        :pswitch_20
        :pswitch_8d
        :pswitch_20
        :pswitch_78
        :pswitch_14a
        :pswitch_20
        :pswitch_63
        :pswitch_4e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_39
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_24
        :pswitch_20
        :pswitch_482
        :pswitch_482
    .end packed-switch
.end method
