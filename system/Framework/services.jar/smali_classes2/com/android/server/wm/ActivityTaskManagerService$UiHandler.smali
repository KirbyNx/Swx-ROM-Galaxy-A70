.class final Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# static fields
.field static final DISMISS_DIALOG_UI_MSG:I = 0x1

.field static final DISMISS_RESTART_APP_DIALOG_UI_MSG:I = 0x3

.field static final SHOW_RESTART_APP_DIALOG_UI_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7446
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7447
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 7448
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 7452
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_116

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto/16 :goto_11e

    .line 7502
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    if-eqz v0, :cond_11e

    .line 7503
    const-string v0, "ActivityTaskManager"

    const-string v1, "DISMISS_RESTART_APP_DIALOG_UI_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7504
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/RestartAppDialog;->dismiss()V

    goto/16 :goto_11e

    .line 7460
    :cond_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 7461
    .local v0, "taskId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    invoke-virtual {v2}, Lcom/android/server/wm/RestartAppDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 7462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHOW_RESTART_APP_DIALOG_UI_MSG: RestartAppDialog is already showing, tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7464
    return-void

    .line 7467
    :cond_54
    const/4 v2, 0x0

    .line 7468
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 7469
    .local v3, "appLabel":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7470
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 7471
    .local v5, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_ad

    .line 7472
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 7473
    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 7474
    .local v6, "tr":Lcom/android/server/wm/Task;
    if-nez v6, :cond_8b

    .line 7475
    const-string v1, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_RESTART_APP_DIALOG_UI_MSG: cannot found task #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_110

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7478
    :cond_8b
    :try_start_8b
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 7479
    .local v7, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v7, :cond_ac

    .line 7480
    const-string v1, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SHOW_RESTART_APP_DIALOG_UI_MSG: cannot found root #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7481
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_110

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7483
    :cond_ac
    move-object v5, v7

    .line 7486
    .end local v6    # "tr":Lcom/android/server/wm/Task;
    .end local v7    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_ad
    :try_start_ad
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_110

    .line 7487
    .end local v2    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_af
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_c4

    .line 7488
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_c1
    .catchall {:try_start_af .. :try_end_c1} :catchall_10d

    move-object v3, v2

    move-object v8, v3

    goto :goto_c5

    .line 7487
    :cond_c4
    move-object v8, v3

    .line 7490
    .end local v3    # "appLabel":Ljava/lang/CharSequence;
    .end local v5    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v8, "appLabel":Ljava/lang/CharSequence;
    :goto_c5
    :try_start_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_109

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7491
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v1, 0x0

    .line 7493
    .local v1, "isNightMode":Z
    :goto_d9
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 7494
    if-eqz v1, :cond_e5

    const v4, 0x1030128

    goto :goto_e8

    .line 7495
    :cond_e5
    const v4, 0x10302d2

    :goto_e8
    invoke-direct {v3, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7496
    .local v3, "themeContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    new-instance v10, Lcom/android/server/wm/RestartAppDialog;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v2, v10

    move v5, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/RestartAppDialog;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;ILjava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    .line 7498
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    invoke-virtual {v2}, Lcom/android/server/wm/RestartAppDialog;->show()V

    .line 7499
    goto :goto_11e

    .line 7490
    .end local v1    # "isNightMode":Z
    .end local v3    # "themeContext":Landroid/content/Context;
    :catchall_109
    move-exception v1

    move-object v2, v6

    move-object v3, v8

    goto :goto_111

    .end local v8    # "appLabel":Ljava/lang/CharSequence;
    .local v3, "appLabel":Ljava/lang/CharSequence;
    :catchall_10d
    move-exception v1

    move-object v2, v6

    goto :goto_111

    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catchall_110
    move-exception v1

    :goto_111
    :try_start_111
    monitor-exit v4
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7454
    .end local v0    # "taskId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/CharSequence;
    :cond_116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    .line 7455
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7456
    nop

    .line 7511
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_11e
    :goto_11e
    return-void
.end method
