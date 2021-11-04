.class final Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
.super Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiTaskingBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MultiTaskingController;)V
    .registers 2

    .line 1338
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/MultiTaskingController;
    .param p2, "x1"    # Lcom/android/server/wm/MultiTaskingController$1;

    .line 1338
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;-><init>(Lcom/android/server/wm/MultiTaskingController;)V

    return-void
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 1903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1906
    return-void

    .line 1904
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceShell()V
    .registers 3

    .line 1569
    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1572
    return-void

    .line 1570
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWindowContainerToken(II)Landroid/window/WindowContainerToken;
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "windowingMode"    # I

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2209
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string v1, "MultiTaskingController"

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 2210
    const-string/jumbo v3, "getWindowContainerToken: task is empty"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    return-object v2

    .line 2213
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2214
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v3, :cond_25

    .line 2215
    const-string/jumbo v4, "getWindowContainerToken: taskDisplayArea is empty"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    return-object v2

    .line 2218
    :cond_25
    const/4 v1, 0x3

    if-eq p2, v1, :cond_46

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3b

    const/16 v1, 0xc

    if-eq p2, v1, :cond_30

    .line 2226
    return-object v2

    .line 2224
    :cond_30
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    return-object v1

    .line 2222
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    return-object v1

    .line 2220
    :cond_46
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    return-object v1
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1565
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4
    .param p1, "ti"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2203
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    .line 2204
    .local v0, "atype":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private synthetic lambda$disableNonResizeableAppRestartDialog$3()V
    .registers 3

    .line 2237
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2238
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowEnableController;->disableNonResizeableAppRestartDialog()V

    .line 2239
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2240
    return-void

    .line 2239
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$startPairAppsLocked$0(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2009
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$startPairAppsLocked$1(I)[Landroid/content/Intent;
    .registers 2
    .param p0, "x$0"    # I

    .line 2009
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method

.method private startPairAppsLocked([Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 28
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "bOptions"    # Landroid/os/Bundle;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1982
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1983
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 1984
    .local v16, "callingPid":I
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v17

    .line 1985
    .local v17, "tda":Lcom/android/server/wm/TaskDisplayArea;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v14

    .line 1986
    .local v14, "sOptions":Lcom/android/server/wm/SafeActivityOptions;
    const/16 v18, 0x0

    .line 1998
    .local v18, "dismissMultiSplit":Z
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v15, v14}, Lcom/android/server/wm/AppPairController;->adjustStartPairIntentsForSplit([Landroid/content/Intent;ILcom/android/server/wm/SafeActivityOptions;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 2005
    return-void

    .line 2009
    :cond_2d
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$X8Cyet38AgY2E1VJentArIweAp0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$X8Cyet38AgY2E1VJentArIweAp0;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Gg2zXLB3B6abHrVnLIb_VFcGT-Y;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/content/Intent;

    .line 2011
    .end local p1    # "intents":[Landroid/content/Intent;
    .local v13, "intents":[Landroid/content/Intent;
    array-length v1, v13

    new-array v12, v1, [Ljava/lang/String;

    .line 2012
    .local v12, "resolvedTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    array-length v2, v13

    if-ge v1, v2, :cond_52

    .line 2013
    aget-object v2, v13, v1

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 2012
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 2015
    .end local v1    # "i":I
    :cond_52
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v4, v16

    move v5, v15

    move-object v8, v13

    move-object v9, v12

    move-object v11, v14

    move-object/from16 v22, v12

    .end local v12    # "resolvedTypes":[Ljava/lang/String;
    .local v22, "resolvedTypes":[Ljava/lang/String;
    move/from16 v12, v19

    move-object/from16 v19, v13

    .end local v13    # "intents":[Landroid/content/Intent;
    .local v19, "intents":[Landroid/content/Intent;
    move-object/from16 v13, p3

    move-object/from16 v23, v14

    .end local v14    # "sOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v23, "sOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v14, v20

    move/from16 v20, v15

    .end local v15    # "callingUid":I
    .local v20, "callingUid":I
    move/from16 v15, v21

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    .line 2019
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v1, :cond_8b

    .line 2020
    const-string v1, "1000"

    const-string v2, "From Apps edge_Apppair"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_8b
    return-void
.end method


# virtual methods
.method public disableDividerPanelFirstAutoOpen()V
    .registers 7

    .line 2312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2314
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$300(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$H;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Cv_Sss6hqvngBS6gytcNXlVr2-8;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Cv_Sss6hqvngBS6gytcNXlVr2-8;-><init>(Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/MultiTaskingController$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    nop

    .line 2323
    .end local v0    # "origId":J
    return-void

    .line 2320
    .restart local v0    # "origId":J
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    throw v2
.end method

.method public disableNonResizeableAppRestartDialog()V
    .registers 1

    .line 2245
    return-void
.end method

.method public dismissMultiWindowMode()V
    .registers 1

    .line 1761
    return-void
.end method

.method public dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1857
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1858
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiTaskingController;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V

    .line 1859
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 1861
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1862
    nop

    .line 1863
    return-void

    .line 1859
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 1861
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1862
    throw v2
.end method

.method public exitMultiWindow(Landroid/os/IBinder;Z)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "checkPermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1436
    if-eqz p2, :cond_11

    .line 1437
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "exitMultiWindow"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1441
    .local v0, "origId":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    .line 1443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1441
    return v2

    .line 1443
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    throw v2
.end method

.method public getCornerGestureCustomValue()I
    .registers 5

    .line 2279
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string v1, "getCornerGestureCustomValue"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 2281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2283
    .local v0, "origId":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_31

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2284
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getCornerGestureCustomValue()I

    move-result v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2b

    .line 2287
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    return v3

    .line 2285
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2287
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2288
    throw v2
.end method

.method public getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1820
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/FreeformWindowController;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 1822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    return v2

    .line 1822
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1823
    throw v2
.end method

.method public getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSplitBlockListApp()Landroid/content/pm/StringParceledListSlice;
    .registers 3

    .line 1955
    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 1956
    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiSplitBlockListController:Lcom/android/server/wm/MultiSplitBlockListController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiSplitBlockListController;->getBlocklistAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1955
    return-object v0
.end method

.method public getMultiSplitFlags()I
    .registers 5

    .line 1839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1841
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1842
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingController;->getMultiSplitFlags()I

    move-result v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1e

    .line 1845
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1842
    return v3

    .line 1843
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 1845
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    throw v2
.end method

.method public getMultiWindowModeStates(I)I
    .registers 3
    .param p1, "displayId"    # I

    .line 1428
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getMultiWindowModeStates(I)I

    move-result v0

    return v0
.end method

.method public getTaskIdFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1922
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "getTaskIdFromPackageName"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1926
    .local v0, "origId":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/MultiTaskingController;->getTaskIdFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    return-object v2

    .line 1928
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    throw v2
.end method

.method public getVisibleTasks()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public hasMinimizedToggleTasks()Z
    .registers 3

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->hasMinimizedToggleTasksLocked()Z

    move-result v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1558
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isCornerGestureEnabled()Z
    .registers 3

    .line 2100
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2101
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CORNER_GESTURE_ENABLED:Z

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2102
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isDisabledNonResizeableAppRestartDialog()Z
    .registers 2

    .line 2250
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSplitBlockListApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1950
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiSplitBlockListController:Lcom/android/server/wm/MultiSplitBlockListController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiSplitBlockListController;->isBlocklistApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultiWindowHandlerHelpEnabled(I)Z
    .registers 6
    .param p1, "windowingMode"    # I

    .line 1345
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isMultiWindowHandlerHelpEnabled: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    const-string v1, "MultiTaskingController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1352
    .local v0, "ident":J
    :try_start_37
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_82

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1353
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1354
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 1355
    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->isEnabledByCount(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x1

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_7c

    .line 1361
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1354
    return v3

    .line 1357
    :cond_68
    :try_start_68
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->isEnabledByCount(I)Z

    move-result v3

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_7c

    .line 1361
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    return v3

    .line 1359
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "windowingMode":I
    throw v3
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    .line 1361
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "windowingMode":I
    :catchall_82
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    throw v2
.end method

.method public isPersistFreeformBoundsEnabled()Z
    .registers 2

    .line 1730
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$disableDividerPanelFirstAutoOpen$4$MultiTaskingController$MultiTaskingBinder()V
    .registers 3

    .line 2315
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2316
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowEnableController;->disableDividerPanelFirstAutoOpen()V

    .line 2317
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2318
    return-void

    .line 2317
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$setCornerGestureEnabled$2$MultiTaskingController$MultiTaskingBinder(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2083
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2084
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CORNER_GESTURE_ENABLED:Z

    if-ne v1, p1, :cond_15

    .line 2085
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2087
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    .line 2088
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2089
    return-void

    .line 2088
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public minimizeAllTasks(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "minimizeAllTasks"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_35

    .line 1509
    .local v1, "origId":J
    :try_start_20
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2f

    .line 1511
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1512
    nop

    .line 1513
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1511
    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1512
    nop

    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "displayId":I
    throw v3

    .line 1514
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "displayId":I
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public minimizeTaskById(I)Z
    .registers 8
    .param p1, "taskId"    # I

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "minimizeTaskById"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_41

    .line 1491
    .local v1, "origId":J
    :try_start_20
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1492
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_3b

    .line 1494
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_41

    .line 1492
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1494
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1495
    nop

    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "taskId":I
    throw v3

    .line 1496
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "taskId":I
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public minimizeTaskByToken(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1466
    const-string/jumbo v0, "minimizeTaskByToken"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3f

    .line 1470
    .local v1, "origId":J
    :try_start_16
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1471
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2f

    .line 1472
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    move-result v4
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_39

    .line 1475
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_3f

    .line 1472
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1475
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2f
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    nop

    .line 1477
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1478
    const/4 v0, 0x0

    return v0

    .line 1475
    .restart local v1    # "origId":J
    :catchall_39
    move-exception v3

    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    nop

    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 1477
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveFreeformTaskToSplitStack(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1889
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1890
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiTaskingController;->moveFreeformTaskToSplitStack(Landroid/os/IBinder;)V

    .line 1891
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 1893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1894
    nop

    .line 1895
    return-void

    .line 1891
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 1893
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1894
    throw v2
.end method

.method public moveSplitTaskToFreeformStack(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1873
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1874
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # invokes: Lcom/android/server/wm/MultiTaskingController;->moveSplitTaskToFreeformStack(Landroid/os/IBinder;)V
    invoke-static {v3, p1}, Lcom/android/server/wm/MultiTaskingController;->access$200(Lcom/android/server/wm/MultiTaskingController;Landroid/os/IBinder;)V

    .line 1875
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 1877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1878
    nop

    .line 1879
    return-void

    .line 1875
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 1877
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1878
    throw v2
.end method

.method public noMoreShowMultiWindowHandlerHelp(I)V
    .registers 6
    .param p1, "windowingMode"    # I

    .line 1370
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noMoreShowMultiWindowHandlerHelp: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    const-string v1, "MultiTaskingController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1377
    .local v0, "ident":J
    :try_start_37
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_5f

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1378
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->stopHelpingIn(I)V

    .line 1379
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_59

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 1381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    nop

    .line 1383
    return-void

    .line 1379
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "windowingMode":I
    throw v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 1381
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "windowingMode":I
    :catchall_5f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->enforceShell()V

    .line 1579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1581
    .local v1, "origId":J
    :try_start_7
    new-instance v3, Lcom/android/server/wm/MultiWindowShellCommand;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_27

    move-object v11, p0

    :try_start_a
    iget-object v0, v11, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/wm/MultiWindowShellCommand;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/MultiWindowShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_25

    .line 1584
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    nop

    .line 1586
    return-void

    .line 1584
    :catchall_25
    move-exception v0

    goto :goto_29

    :catchall_27
    move-exception v0

    move-object v11, p0

    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    throw v0
.end method

.method public registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "registerDexSnappingCallback()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDexWindowController:Lcom/android/server/wm/DexWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexWindowController;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1939
    return-void
.end method

.method public registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformController;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 1524
    return-void
.end method

.method public registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 2058
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v2, "registerSplitAdjacentCallback"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    .line 2061
    return-void
.end method

.method public removeFocusedTask(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 1911
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "removeFocusedTask"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1914
    .local v0, "origId":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/MultiTaskingController;->removeFocusedTask(I)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1914
    return v2

    .line 1916
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1917
    throw v2
.end method

.method public reportBubbleContainerPoint(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->reportBubbleContainerPoint(Landroid/graphics/PointF;)V

    .line 1540
    return-void
.end method

.method public reportDexHelpShown(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1637
    return-void
.end method

.method public reportLastMainDockSide(I)V
    .registers 2
    .param p1, "dockSide"    # I

    .line 2334
    return-void
.end method

.method public reportMultiWindowHandlerHelpShown(I)V
    .registers 7
    .param p1, "windowingMode"    # I

    .line 1390
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportMultiWindowHandlerHelpShown: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    const-string v1, "MultiTaskingController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1397
    .local v0, "ident":J
    :try_start_37
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_60

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1398
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/MultiTaskingHelpController;->increaseCount(IZ)V

    .line 1400
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_5a

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 1402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1403
    nop

    .line 1404
    return-void

    .line 1400
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "windowingMode":I
    throw v3
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 1402
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "windowingMode":I
    :catchall_60
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1403
    throw v2
.end method

.method public sendPairWithDirectionLogging(Z)V
    .registers 6
    .param p1, "isHorizontal"    # Z

    .line 2294
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-nez v0, :cond_5

    .line 2295
    return-void

    .line 2297
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2299
    .local v0, "origId":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_31

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2300
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppPairController;->sendPairWithDirectionLoggingLocked(Z)V

    .line 2301
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2b

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_31

    .line 2303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2304
    nop

    .line 2305
    return-void

    .line 2301
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "isHorizontal":Z
    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2303
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "isHorizontal":Z
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2304
    throw v2
.end method

.method public sendSALoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 1702
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-nez v0, :cond_5

    .line 1703
    return-void

    .line 1705
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/core/CoreSALogger;->sendSALoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1706
    return-void
.end method

.method public setBlockedMinimizeFreeformEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2132
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setBlockedMinimizeFreeformEnable"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2135
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setBlockedMinimizeFreeformEnabled(Z)V

    .line 2136
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2137
    return-void

    .line 2136
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCornerGestureCustomValue(I)V
    .registers 6
    .param p1, "value"    # I

    .line 2263
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setCornerGestureCustomValue"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 2265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2267
    .local v0, "origId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_32

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2268
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->setCornerGestureCustomValue(I)V

    .line 2269
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    .line 2271
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    nop

    .line 2273
    return-void

    .line 2269
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "value":I
    throw v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 2271
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "value":I
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    throw v2
.end method

.method public setCornerGestureEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 2076
    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, "allowList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string/jumbo v2, "setCornerGestureEnabled"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/MultiTaskingController;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2082
    .local v1, "origId":J
    :try_start_21
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$300(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$H;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;-><init>(Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;Z)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiTaskingController$H;->post(Ljava/lang/Runnable;)Z
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_34

    .line 2091
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    nop

    .line 2093
    return-void

    .line 2091
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    throw v3
.end method

.method public setCustomDensityEnabled(I)V
    .registers 6
    .param p1, "enableFlags"    # I

    .line 1741
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setCustomDensityEnabled"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1744
    .local v0, "origId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_3c

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1745
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eq v3, p1, :cond_2d

    .line 1747
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiStarController;->setCustomDensityEnabled(I)V

    .line 1749
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_36

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3c

    .line 1751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    nop

    .line 1754
    return-void

    .line 1749
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "enableFlags":I
    throw v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1751
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "enableFlags":I
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    throw v2
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "alpha"    # F

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1808
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/FreeformWindowController;->setFreeformAlpha(Landroid/os/IBinder;F)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 1810
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1811
    nop

    .line 1813
    .end local v0    # "origId":J
    return-void

    .line 1810
    .restart local v0    # "origId":J
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1811
    throw v2
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .registers 3
    .param p1, "maxCount"    # I
    .param p2, "maxDexCount"    # I

    .line 1621
    return-void
.end method

.method public setMultiStarImmersiveMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setMultiStarImmersiveMode"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1649
    :try_start_17
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    if-eq v1, p1, :cond_40

    .line 1650
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MultiStarController;->setMultiStarImmersiveModeLocked(Z)V

    .line 1651
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1652
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1654
    :cond_40
    monitor-exit v0

    .line 1655
    return-void

    .line 1654
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 1411
    const-string/jumbo v0, "setMultiWindowEnabledForUser"

    .line 1412
    .local v0, "func":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setMultiWindowEnabledForUser"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p4, v1, :cond_26

    .line 1414
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1418
    .local v1, "origId":J
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/MultiTaskingController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_34

    .line 1420
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    nop

    .line 1423
    .end local v0    # "func":Ljava/lang/String;
    .end local v1    # "origId":J
    return-void

    .line 1420
    .restart local v0    # "func":Ljava/lang/String;
    .restart local v1    # "origId":J
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    throw v3
.end method

.method public setNaviBarImmersiveModeLocked(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1662
    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    const-string v2, "com.samsung.systemui.navillera"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "allowList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v2, "setNaviBarImmersiveModeLocked"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/MultiStarController;->checkPackageAndPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1666
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v1

    .line 1667
    :try_start_21
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVIBAR_IMMERSIVE_MODE_ENABLED:Z

    if-eq v2, p1, :cond_4a

    .line 1668
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/MultiStarController;->setNaviBarImmersiveModeLocked(Z)V

    .line 1669
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1670
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1672
    :cond_4a
    monitor-exit v1

    .line 1673
    return-void

    .line 1672
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public setPersistFreeformBoundsEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1719
    return-void
.end method

.method public setStayFocusActivityEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 2109
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setStayFocusActivityEnabled"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 2111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2113
    .local v0, "origId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_3e

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2114
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eq v3, p1, :cond_2f

    .line 2116
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    .line 2118
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_38

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2121
    nop

    .line 2122
    return-void

    .line 2118
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "enable":Z
    throw v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 2120
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "enable":Z
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2121
    throw v2
.end method

.method public startPairApps([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 1963
    const-string/jumbo v0, "startPairApps"

    .line 1965
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v3, "startPairApps"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1972
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_49

    .line 1974
    :try_start_28
    const-string/jumbo v2, "startPairApps"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->startPairAppsLocked([Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3d

    .line 1976
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1977
    nop

    .line 1978
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1979
    return-void

    .line 1976
    :catchall_3d
    move-exception v2

    :try_start_3e
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1977
    nop

    .end local v0    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "intents":[Landroid/content/Intent;
    .end local p2    # "bOptions":Landroid/os/Bundle;
    throw v2

    .line 1978
    .restart local v0    # "reason":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "intents":[Landroid/content/Intent;
    .restart local p2    # "bOptions":Landroid/os/Bundle;
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isPointerInput"    # Z

    .line 1777
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_7d

    .line 1780
    .local v1, "origId":J
    :try_start_10
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1781
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 1782
    .local v4, "task":Lcom/android/server/wm/Task;
    :goto_1c
    if-eqz v3, :cond_58

    if-nez v4, :cond_21

    goto :goto_58

    .line 1786
    :cond_21
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v5}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    .line 1787
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v6

    .line 1786
    invoke-virtual {v5, p2, p3, p4, v6}, Lcom/android/server/wm/FreeformWindowController;->startResizingFreeformTaskLocked(IIZI)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1788
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1789
    .local v5, "topRunnig":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_4f

    const-string/jumbo v6, "startResizingFreeformTask"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1791
    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v6}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_77

    .line 1795
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "topRunnig":Lcom/android/server/wm/ActivityRecord;
    :cond_4f
    :try_start_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1796
    nop

    .line 1797
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1799
    return-void

    .line 1783
    .restart local v1    # "origId":J
    .restart local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    :cond_58
    :goto_58
    :try_start_58
    const-string v5, "MultiTaskingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask: failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_77

    .line 1795
    :try_start_6f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_7d

    .line 1784
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1795
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :catchall_77
    move-exception v3

    :try_start_78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1796
    nop

    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "isPointerInput":Z
    throw v3

    .line 1797
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    .restart local p4    # "isPointerInput":Z
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startSplitScreenMode(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .registers 25
    .param p1, "taskId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2027
    move-object/from16 v1, p0

    const-string/jumbo v2, "startSplitScreenMode"

    .line 2029
    .local v2, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v4, "startSplitScreenMode"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2032
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2034
    .local v4, "callingPid":I
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    move/from16 v15, p1

    move-object/from16 v14, p2

    invoke-virtual {v0, v15, v14, v3}, Lcom/android/server/wm/AppPairController;->adjustIntentInStartSplitScreenMode(ILandroid/content/Intent;I)V

    .line 2036
    const/4 v5, 0x0

    .line 2037
    .local v5, "callingPackage":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2038
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 2039
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_53

    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_53

    .line 2040
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_9b

    move-object v5, v7

    move-object/from16 v19, v5

    goto :goto_55

    .line 2042
    .end local v0    # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_53
    move-object/from16 v19, v5

    .end local v5    # "callingPackage":Ljava/lang/String;
    .local v19, "callingPackage":Ljava/lang/String;
    :goto_55
    :try_start_55
    monitor-exit v6
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2043
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 2044
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 2043
    const-string/jumbo v20, "startSplitScreenMode"

    move v8, v4

    move v9, v3

    move-object/from16 v10, v19

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v0

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v20

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/wm/ActivityStartController;->startSplitScreenMode(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Z)I

    .line 2046
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v0, :cond_96

    .line 2047
    const-string v0, "1000"

    const-string v5, "From recent_option"

    invoke-static {v0, v5}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    const-string v0, "1020"

    const-string v5, "Recents"

    invoke-static {v0, v5}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    :cond_96
    return-void

    .line 2042
    :catchall_97
    move-exception v0

    move-object/from16 v5, v19

    goto :goto_9c

    .end local v19    # "callingPackage":Ljava/lang/String;
    .restart local v5    # "callingPackage":Ljava/lang/String;
    :catchall_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public supportMultiSplitAppMinimumSize()Z
    .registers 3

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2341
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mIsSupportAppMinSize:Z
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingController;->access$400(Lcom/android/server/wm/MultiTaskingController;)Z

    move-result v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2342
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public swapTasksInSplitScreenMode(II)V
    .registers 22
    .param p1, "fromWindowingMode"    # I
    .param p2, "toWindowingMode"    # I

    .line 2143
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    if-ne v2, v3, :cond_9

    .line 2144
    return-void

    .line 2146
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2148
    .local v4, "origId":J
    const/4 v0, 0x0

    .line 2149
    .local v0, "fromTask":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    .line 2151
    .local v6, "toTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_f
    iget-object v7, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v7}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(I)Ljava/util/List;

    move-result-object v7

    .line 2152
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2153
    .local v9, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v0, :cond_3b

    .line 2154
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    if-ne v2, v10, :cond_3b

    .line 2155
    move-object v0, v9

    goto :goto_4a

    .line 2156
    :cond_3b
    if-nez v6, :cond_4a

    .line 2157
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_100

    if-ne v3, v10, :cond_4a

    .line 2158
    move-object v6, v9

    .line 2161
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_4f

    if-eqz v6, :cond_4f

    .line 2162
    goto :goto_50

    .line 2164
    .end local v9    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4f
    goto :goto_1f

    .line 2166
    :cond_50
    :goto_50
    const-string v8, "MultiTaskingController"

    if-eqz v0, :cond_f6

    if-eqz v6, :cond_f6

    :try_start_56
    invoke-direct {v1, v0}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v9

    if-nez v9, :cond_f6

    .line 2167
    invoke-direct {v1, v6}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v9

    if-eqz v9, :cond_64

    goto/16 :goto_f6

    .line 2172
    :cond_64
    iget v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {v1, v9, v2}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->getWindowContainerToken(II)Landroid/window/WindowContainerToken;

    move-result-object v9

    .line 2174
    .local v9, "fromParentsToken":Landroid/window/WindowContainerToken;
    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->getWindowContainerToken(II)Landroid/window/WindowContainerToken;

    move-result-object v10

    move-object/from16 v17, v10

    .line 2177
    .local v17, "toParentsToken":Landroid/window/WindowContainerToken;
    if-eqz v9, :cond_ec

    if-nez v17, :cond_78

    goto/16 :goto_ec

    .line 2182
    :cond_78
    new-instance v10, Landroid/window/WindowContainerTransaction;

    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v15, v10

    .line 2183
    .local v15, "wct":Landroid/window/WindowContainerTransaction;
    const/4 v10, 0x3

    if-ne v2, v10, :cond_9e

    .line 2185
    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v16, 0x1

    move-object v10, v15

    move-object v12, v9

    move-object/from16 v18, v15

    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .local v18, "wct":Landroid/window/WindowContainerTransaction;
    move/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZZ)Landroid/window/WindowContainerTransaction;

    .line 2186
    iget-object v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, v18

    move-object/from16 v13, v17

    invoke-virtual/range {v11 .. v16}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZZ)Landroid/window/WindowContainerTransaction;

    goto :goto_b8

    .line 2190
    .end local v18    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v15    # "wct":Landroid/window/WindowContainerTransaction;
    :cond_9e
    move-object/from16 v18, v15

    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v18    # "wct":Landroid/window/WindowContainerTransaction;
    iget-object v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, v18

    move-object/from16 v13, v17

    invoke-virtual/range {v11 .. v16}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZZ)Landroid/window/WindowContainerTransaction;

    .line 2191
    iget-object v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v10, v18

    move-object v12, v9

    invoke-virtual/range {v10 .. v15}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZZ)Landroid/window/WindowContainerTransaction;

    .line 2193
    :goto_b8
    iget-object v10, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v10}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    move-object/from16 v11, v18

    .end local v18    # "wct":Landroid/window/WindowContainerTransaction;
    .local v11, "wct":Landroid/window/WindowContainerTransaction;
    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 2195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "swapTasksInSplitScreenMode: request focus, tid="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v8, v1, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v8}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    iget v10, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v8, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V
    :try_end_e7
    .catchall {:try_start_56 .. :try_end_e7} :catchall_100

    .line 2198
    .end local v0    # "fromTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "toTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v9    # "fromParentsToken":Landroid/window/WindowContainerToken;
    .end local v11    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v17    # "toParentsToken":Landroid/window/WindowContainerToken;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    nop

    .line 2200
    return-void

    .line 2178
    .restart local v0    # "fromTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "toTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v9    # "fromParentsToken":Landroid/window/WindowContainerToken;
    .restart local v17    # "toParentsToken":Landroid/window/WindowContainerToken;
    :cond_ec
    :goto_ec
    :try_start_ec
    const-string/jumbo v10, "swapTasksInSplitScreenMode: ParentsToken is empty"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_100

    .line 2198
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2179
    return-void

    .line 2168
    .end local v9    # "fromParentsToken":Landroid/window/WindowContainerToken;
    .end local v17    # "toParentsToken":Landroid/window/WindowContainerToken;
    :cond_f6
    :goto_f6
    :try_start_f6
    const-string/jumbo v9, "swapTasksInSplitScreenMode: Tasks is empty"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_100

    .line 2198
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2169
    return-void

    .line 2198
    .end local v0    # "fromTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "toTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_100
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    throw v0
.end method

.method public toggleFreeformWindowingMode()Z
    .registers 5

    .line 1683
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "toggleFreeformWindowingMode"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1687
    .local v0, "origId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_30

    .line 1688
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiStarController;->toggleFreeformWindowingMode()Z

    .line 1689
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2d

    .line 1691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1692
    nop

    .line 1693
    const/4 v2, 0x1

    return v2

    .line 1689
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 1691
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1692
    throw v2
.end method

.method public unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDexWindowController:Lcom/android/server/wm/DexWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexWindowController;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1944
    return-void
.end method

.method public unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 1529
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformController;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 1531
    return-void
.end method

.method public unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 2065
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->this$0:Lcom/android/server/wm/MultiTaskingController;

    # getter for: Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    .line 2066
    return-void
.end method
