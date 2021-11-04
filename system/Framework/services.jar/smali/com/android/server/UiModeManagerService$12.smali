.class Lcom/android/server/UiModeManagerService$12;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 665
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 732
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 703
    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 713
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 714
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void

    .line 721
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 723
    .local v0, "isSystemCaller":Z
    :goto_1c
    if-eqz v0, :cond_20

    move v1, p1

    goto :goto_22

    :cond_20
    and-int/lit8 v1, p1, -0x3

    .line 725
    .local v1, "carModeFlags":I
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 727
    .local v3, "ident":J
    :try_start_26
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_73

    .line 730
    :try_start_2b
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 731
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$UiModeManagerService$12$Xi1gUnGoioGa9D6d3pwVpjrnEDY;

    invoke-direct {v7, p2}, Lcom/android/server/-$$Lambda$UiModeManagerService$12$Xi1gUnGoioGa9D6d3pwVpjrnEDY;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 733
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;->INSTANCE:Lcom/android/server/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;

    .line 734
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 737
    .local v6, "priority":I
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, v1, v6, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 738
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v7, v7, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v7, :cond_6a

    .line 739
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 741
    .end local v6    # "priority":I
    :cond_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_2b .. :try_end_6b} :catchall_70

    .line 743
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    nop

    .line 745
    return-void

    .line 741
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .end local v0    # "isSystemCaller":Z
    .end local v1    # "carModeFlags":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_72
    throw v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 743
    .restart local v0    # "isSystemCaller":Z
    .restart local v1    # "carModeFlags":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_73
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 912
    :cond_11
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 913
    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 669
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 670
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 674
    :cond_10
    if-eqz p2, :cond_29

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 675
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 678
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 684
    .local v0, "ident":J
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_4d

    .line 685
    :try_start_32
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_44

    .line 687
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 689
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_4a

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 689
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "priority":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_4c
    throw v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 691
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "priority":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .line 749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 751
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 752
    :try_start_9
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    return v3

    .line 753
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 755
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    throw v2
.end method

.method public getCustomNightModeEnd()J
    .registers 5

    .line 1043
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$4600(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .registers 5

    .line 1015
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$4400(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNightMode()I
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 886
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 898
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3500(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 900
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 891
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 893
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 906
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 907
    return-void
.end method

.method public setCustomNightModeEnd(J)V
    .registers 9
    .param p1, "time"    # J

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1051
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1054
    :cond_1e
    const/4 v0, -0x2

    .line 1055
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1057
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_26
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_2a
    .catch Ljava/time/DateTimeException; {:try_start_26 .. :try_end_2a} :catch_3e
    .catchall {:try_start_26 .. :try_end_2a} :catchall_3c

    .line 1058
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_30

    .line 1064
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    return-void

    .line 1059
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;
    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$4602(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 1060
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, -0x2

    # invokes: Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V
    invoke-static {v4, v5}, Lcom/android/server/UiModeManagerService;->access$4500(Lcom/android/server/UiModeManagerService;I)V
    :try_end_3b
    .catch Ljava/time/DateTimeException; {:try_start_30 .. :try_end_3b} :catch_3e
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3c

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_44

    .line 1064
    :catchall_3c
    move-exception v3

    goto :goto_49

    .line 1061
    :catch_3e
    move-exception v3

    .line 1062
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 1064
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1064
    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    throw v3
.end method

.method public setCustomNightModeStart(J)V
    .registers 9
    .param p1, "time"    # J

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1023
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void

    .line 1026
    :cond_1e
    const/4 v0, -0x2

    .line 1027
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1029
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_26
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_2a
    .catch Ljava/time/DateTimeException; {:try_start_26 .. :try_end_2a} :catch_43
    .catchall {:try_start_26 .. :try_end_2a} :catchall_41

    .line 1030
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_30

    .line 1037
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    return-void

    .line 1031
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;
    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$4402(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 1032
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, -0x2

    # invokes: Lcom/android/server/UiModeManagerService;->persistNightMode(I)V
    invoke-static {v4, v5}, Lcom/android/server/UiModeManagerService;->access$2900(Lcom/android/server/UiModeManagerService;I)V

    .line 1033
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V
    invoke-static {v4, v5}, Lcom/android/server/UiModeManagerService;->access$4500(Lcom/android/server/UiModeManagerService;I)V
    :try_end_40
    .catch Ljava/time/DateTimeException; {:try_start_30 .. :try_end_40} :catch_43
    .catchall {:try_start_30 .. :try_end_40} :catchall_41

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_49

    .line 1037
    :catchall_41
    move-exception v3

    goto :goto_4e

    .line 1034
    :catch_43
    move-exception v3

    .line 1035
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_44
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    .line 1037
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    nop

    .line 1039
    return-void

    .line 1037
    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    throw v3
.end method

.method public setDesktopMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 918
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z
    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$3702(Lcom/android/server/UiModeManagerService;Z)Z

    .line 920
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)V

    .line 921
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setNightMode(I)V
    .registers 13
    .param p1, "mode"    # I

    .line 761
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 764
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void

    .line 767
    :cond_1e
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_41

    .line 769
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 772
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode cannot be changed before setup wizard completes."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void

    .line 775
    :cond_41
    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_64

    if-eq p1, v3, :cond_64

    if-eq p1, v0, :cond_64

    if-ne p1, v2, :cond_4d

    goto :goto_64

    .line 782
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_64
    :goto_64
    nop

    .line 786
    if-eq p1, v3, :cond_88

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->canSetNightMode()Z
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 787
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setNightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 791
    :cond_88
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eq v4, p1, :cond_fd

    .line 792
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "packageNameUid":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 794
    .local v5, "callingPid":I
    const-string/jumbo v6, "none"

    .line 796
    .local v6, "packageName":Ljava/lang/String;
    :try_start_a9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v7
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_b3

    move-object v6, v7

    .line 799
    goto :goto_cc

    .line 797
    :catch_b3
    move-exception v7

    .line 798
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getPackageNameFromAppProcesses : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_cc
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setNightMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .end local v4    # "packageNameUid":Ljava/lang/String;
    .end local v5    # "callingPid":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_fd
    const/4 v4, -0x2

    .line 806
    .local v4, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 808
    .local v5, "ident":J
    :try_start_102
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, v7, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_107
    .catchall {:try_start_102 .. :try_end_107} :catchall_23c

    .line 809
    :try_start_107
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    if-eq v8, p1, :cond_233

    .line 810
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    if-eqz v8, :cond_11f

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    if-ne v8, v2, :cond_129

    .line 811
    :cond_11f
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 812
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)V

    .line 815
    :cond_129
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8, p1}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;I)I

    .line 816
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Z

    .line 817
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->persistNightMode(I)V
    invoke-static {v8, v1}, Lcom/android/server/UiModeManagerService;->access$2900(Lcom/android/server/UiModeManagerService;I)V

    .line 821
    const/4 v8, 0x0

    if-eqz p1, :cond_19b

    if-eq p1, v3, :cond_177

    if-eq p1, v0, :cond_153

    if-eq p1, v2, :cond_143

    goto/16 :goto_1c5

    .line 850
    :cond_143
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "display_night_theme_scheduled"

    invoke-static {v0, v9, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 852
    goto :goto_1c5

    .line 830
    :cond_153
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "display_night_theme"

    invoke-static {v0, v9, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 832
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "display_night_theme_scheduled"

    invoke-static {v0, v9, v8, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 834
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z
    invoke-static {v0, v3}, Lcom/android/server/UiModeManagerService;->access$3002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 835
    goto :goto_1c5

    .line 823
    :cond_177
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme"

    invoke-static {v0, v3, v8, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 825
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme_scheduled"

    invoke-static {v0, v3, v8, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 827
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z
    invoke-static {v0, v8}, Lcom/android/server/UiModeManagerService;->access$3002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 828
    goto :goto_1c5

    .line 837
    :cond_19b
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mNeedUpdateAutoNightMode:Z
    invoke-static {v0, v3}, Lcom/android/server/UiModeManagerService;->access$1002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 838
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "display_night_theme_scheduled"

    invoke-static {v0, v9, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 841
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/UiModeManagerService$12$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$12$1;-><init>(Lcom/android/server/UiModeManagerService$12;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mAllowChangeImmediately:Z
    invoke-static {v0, v3}, Lcom/android/server/UiModeManagerService;->access$802(Lcom/android/server/UiModeManagerService;Z)Z

    .line 848
    nop

    .line 858
    :goto_1c5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-nez v0, :cond_1d3

    .line 859
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v8, v8}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_219

    .line 860
    :cond_1d3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-eqz v0, :cond_1e3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_1fa

    :cond_1e3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 861
    # invokes: Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->isWithInScheduled()Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    goto :goto_1fa

    .line 866
    :cond_1f4
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1200(Lcom/android/server/UiModeManagerService;)V

    goto :goto_219

    .line 862
    :cond_1fa
    :goto_1fa
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->isWithInScheduled()Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_20b

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->isSetDarkTheme()Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    goto :goto_20c

    :cond_20b
    move v1, v8

    :goto_20c
    # setter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$1502(Lcom/android/server/UiModeManagerService;Z)Z

    .line 863
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v8, v8}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 869
    :goto_219
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-eqz v0, :cond_233

    .line 870
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mScreenOnOffRegistered:Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_233

    .line 871
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mScreenOnOffRegistered:Z
    invoke-static {v0, v8}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 872
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 876
    :cond_233
    monitor-exit v7
    :try_end_234
    .catchall {:try_start_107 .. :try_end_234} :catchall_239

    .line 878
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    nop

    .line 880
    return-void

    .line 876
    :catchall_239
    move-exception v0

    :try_start_23a
    monitor-exit v7
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    .end local v4    # "user":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "mode":I
    :try_start_23b
    throw v0
    :try_end_23c
    .catchall {:try_start_23b .. :try_end_23c} :catchall_23c

    .line 878
    .restart local v4    # "user":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "mode":I
    :catchall_23c
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    throw v0
.end method

.method public setNightModeActivated(Z)Z
    .registers 14
    .param p1, "active"    # Z

    .line 927
    const/4 v0, -0x1

    .line 928
    .local v0, "callingPid":I
    const-string/jumbo v1, "none"

    .line 929
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "-1"

    .line 931
    .local v2, "packageNameUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_25

    .line 934
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Night mode activated locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return v4

    .line 937
    :cond_25
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 938
    .local v3, "user":I
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eq v3, v5, :cond_49

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_49

    .line 941
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return v4

    .line 947
    :cond_49
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->canSetNightMode()Z
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 948
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore setNightModeActivated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mNightMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v4

    .line 952
    :cond_78
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 955
    :try_start_8e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v5
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_96} :catch_98

    move-object v1, v5

    .line 958
    goto :goto_b1

    .line 956
    :catch_98
    move-exception v5

    .line 957
    .local v5, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getPackageNameFromAppProcesses : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b1
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 962
    :try_start_b6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_255

    .line 964
    .local v6, "ident":J
    :try_start_ba
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_199

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_ce

    goto/16 :goto_199

    .line 984
    :cond_ce
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v9, :cond_134

    if-eqz p1, :cond_134

    .line 986
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v4, v10}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;I)I

    .line 988
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "display_night_theme"

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 989
    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    .line 988
    invoke-static {v4, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 990
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNightModeActivated : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mNightMode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 991
    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 990
    invoke-static {v4, v8}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_234

    .line 993
    :cond_134
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    if-ne v8, v10, :cond_234

    if-nez p1, :cond_234

    .line 995
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8, v9}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;I)I

    .line 997
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v8}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "display_night_theme"

    iget-object v11, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 998
    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v11}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v11

    .line 997
    invoke-static {v8, v10, v4, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 999
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNightModeActivated : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mNightMode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1000
    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 999
    invoke-static {v4, v8}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_234

    .line 965
    :cond_199
    :goto_199
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-nez p1, :cond_19f

    move v10, v9

    goto :goto_1a0

    :cond_19f
    move v10, v4

    :goto_1a0
    # setter for: Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z
    invoke-static {v8, v10}, Lcom/android/server/UiModeManagerService;->access$3902(Lcom/android/server/UiModeManagerService;Z)Z

    .line 966
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z
    invoke-static {v8, p1}, Lcom/android/server/UiModeManagerService;->access$4002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 967
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    # setter for: Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I
    invoke-static {v8, v10}, Lcom/android/server/UiModeManagerService;->access$4102(Lcom/android/server/UiModeManagerService;I)I

    .line 968
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    # invokes: Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V
    invoke-static {v8, v10}, Lcom/android/server/UiModeManagerService;->access$4200(Lcom/android/server/UiModeManagerService;I)V

    .line 970
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$3000(Lcom/android/server/UiModeManagerService;)Z

    move-result v8

    if-eq v8, p1, :cond_1cb

    .line 971
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z
    invoke-static {v8, v4}, Lcom/android/server/UiModeManagerService;->access$1302(Lcom/android/server/UiModeManagerService;Z)Z

    .line 973
    :cond_1cb
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z
    invoke-static {v8, p1}, Lcom/android/server/UiModeManagerService;->access$3002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 974
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    if-nez v8, :cond_1dd

    .line 975
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mNeedUpdateAutoNightMode:Z
    invoke-static {v8, v9}, Lcom/android/server/UiModeManagerService;->access$1002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 977
    :cond_1dd
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v8}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "display_night_theme"

    .line 978
    if-eqz p1, :cond_1ec

    move v4, v9

    :cond_1ec
    iget-object v11, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v11}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v11

    .line 977
    invoke-static {v8, v10, v4, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 979
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$900()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNightModeActivated : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mNightMode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 980
    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v10}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 979
    invoke-static {v4, v8}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_234
    :goto_234
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)V

    .line 1004
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$4300(Lcom/android/server/UiModeManagerService;)V

    .line 1005
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mCurrentUser:I
    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->access$3800(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    # invokes: Lcom/android/server/UiModeManagerService;->persistNightMode(I)V
    invoke-static {v4, v8}, Lcom/android/server/UiModeManagerService;->access$2900(Lcom/android/server/UiModeManagerService;I)V
    :try_end_249
    .catchall {:try_start_ba .. :try_end_249} :catchall_24f

    .line 1006
    nop

    .line 1008
    :try_start_24a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    .line 1006
    return v9

    .line 1008
    :catchall_24f
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    nop

    .end local v0    # "callingPid":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageNameUid":Ljava/lang/String;
    .end local v3    # "user":I
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "active":Z
    throw v4

    .line 1010
    .end local v6    # "ident":J
    .restart local v0    # "callingPid":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageNameUid":Ljava/lang/String;
    .restart local v3    # "user":I
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "active":Z
    :catchall_255
    move-exception v4

    monitor-exit v5
    :try_end_257
    .catchall {:try_start_24a .. :try_end_257} :catchall_255

    throw v4
.end method
