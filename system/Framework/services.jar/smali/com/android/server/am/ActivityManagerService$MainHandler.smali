.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2138
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2139
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 2144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_3a8

    goto/16 :goto_3a6

    .line 2351
    :sswitch_b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2352
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2353
    .local v1, "N":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1d
    if-ltz v5, :cond_3a

    .line 2354
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2355
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v7, v8}, Lcom/android/server/am/DynamicHiddenApp;->isMLExceptionProcess(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v4, :cond_37

    .line 2356
    iput-boolean v2, v6, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    .line 2353
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_37
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 2360
    .end local v5    # "i":I
    :cond_3a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_80

    .line 2361
    :try_start_41
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->makeMLLists(Ljava/util/ArrayList;)V

    .line 2362
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_7d

    .line 2364
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_56
    if-ltz v2, :cond_77

    .line 2365
    :try_start_58
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2366
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-nez v6, :cond_74

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v6, v7}, Lcom/android/server/am/DynamicHiddenApp;->isMLExceptionProcess(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_74

    .line 2367
    iput-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    .line 2364
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_74
    add-int/lit8 v2, v2, -0x1

    goto :goto_56

    .line 2370
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2371
    goto/16 :goto_3a6

    .line 2362
    .restart local v1    # "N":I
    :catchall_7d
    move-exception v3

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$MainHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_7f
    throw v3

    .line 2370
    .end local v1    # "N":I
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$MainHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2246
    :sswitch_86
    const-string v0, "ActivityManager"

    const-string v1, "TMO APP_STATE_BROADCAST_STOP_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2248
    .local v0, "processId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2249
    .local v1, "stopReason":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2251
    goto/16 :goto_3a6

    .line 2375
    .end local v0    # "processId":I
    .end local v1    # "stopReason":I
    :sswitch_9e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_b2

    .line 2376
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v2, 0x15

    const-string v3, "APP_LAUNCH"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 2378
    :cond_b2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_3a6

    .line 2379
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto/16 :goto_3a6

    .line 2213
    :sswitch_c1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_c4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2214
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AppZygote;

    .line 2215
    .local v1, "appZygote":Landroid/os/AppZygote;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 2216
    .end local v1    # "appZygote":Landroid/os/AppZygote;
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2217
    goto/16 :goto_3a6

    .line 2216
    :catchall_d8
    move-exception v1

    :try_start_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2157
    :sswitch_de
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2158
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "servicerecord"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2157
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 2159
    goto/16 :goto_3a6

    .line 2154
    :sswitch_f6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 2155
    goto/16 :goto_3a6

    .line 2345
    :sswitch_103
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_106
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2346
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLocked()V

    .line 2347
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_116

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2348
    goto/16 :goto_3a6

    .line 2347
    :catchall_116
    move-exception v1

    :try_start_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2342
    :sswitch_11c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 2343
    goto/16 :goto_3a6

    .line 2189
    :sswitch_123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2190
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_12a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2191
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v2, v0}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2192
    monitor-exit v1
    :try_end_133
    .catchall {:try_start_12a .. :try_end_133} :catchall_138

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2193
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_3a6

    .line 2192
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_138
    move-exception v2

    :try_start_139
    monitor-exit v1
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2331
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_13e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    .line 2333
    .local v0, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_142
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_145} :catch_146

    .line 2336
    goto :goto_14e

    .line 2334
    :catch_146
    move-exception v1

    .line 2335
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    const-string v4, "Error shutting down UiAutomationConnection"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_14e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$802(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2340
    .end local v0    # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_3a6

    .line 2318
    :sswitch_155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2319
    .local v0, "procName":Ljava/lang/String;
    if-eqz v0, :cond_186

    .line 2320
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_15e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2321
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 2322
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v3, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2323
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v3, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2324
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v4, v1, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2325
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v4, v1, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2327
    :cond_17b
    monitor-exit v2
    :try_end_17c
    .catchall {:try_start_15e .. :try_end_17c} :catchall_180

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_186

    :catchall_180
    move-exception v1

    :try_start_181
    monitor-exit v2
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2329
    .end local v0    # "procName":Ljava/lang/String;
    :cond_186
    :goto_186
    goto/16 :goto_3a6

    .line 2277
    :sswitch_188
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_18b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2278
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2279
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2280
    .local v5, "procName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6, v5, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2281
    .local v6, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v6, :cond_1ad

    .line 2282
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v5, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    move-object v6, v2

    .line 2284
    :cond_1ad
    if-eqz v6, :cond_1bc

    .line 2285
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2286
    .local v7, "memLimit":J
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "reportPackage":Ljava/lang/String;
    goto :goto_1bf

    .line 2288
    .end local v2    # "reportPackage":Ljava/lang/String;
    .end local v7    # "memLimit":J
    :cond_1bc
    const-wide/16 v7, 0x0

    .line 2289
    .restart local v7    # "memLimit":J
    const/4 v2, 0x0

    .line 2291
    .restart local v2    # "reportPackage":Ljava/lang/String;
    :goto_1bf
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mMemWatchIsUserInitiated:Z
    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v9

    .line 2293
    .local v9, "isUserInitiated":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2294
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v10, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2295
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v4, v1, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2296
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v4, v1, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2297
    .end local v6    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_18b .. :try_end_1d6} :catchall_230

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2298
    if-nez v5, :cond_1dc

    .line 2299
    return-void

    .line 2302
    :cond_1dc
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_1fe

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing dump heap notification from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_1fe
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2307
    .local v0, "dumpFinishedIntent":Landroid/content/Intent;
    const-string v1, "com.android.shell"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2308
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2309
    const-string v1, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2310
    const-string v1, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2311
    const-string v1, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2312
    const-string v1, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2314
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2315
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 2314
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2316
    .end local v0    # "dumpFinishedIntent":Landroid/content/Intent;
    .end local v2    # "reportPackage":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v5    # "procName":Ljava/lang/String;
    .end local v7    # "memLimit":J
    .end local v9    # "isUserInitiated":Z
    goto/16 :goto_3a6

    .line 2297
    :catchall_230
    move-exception v1

    :try_start_231
    monitor-exit v0
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_230

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2255
    :sswitch_236
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2256
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 2258
    .local v1, "firstPacket":[B
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    .line 2259
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_242
    :try_start_242
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_266

    .line 2260
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 2261
    .local v4, "p":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v0, :cond_263

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_25a
    .catchall {:try_start_242 .. :try_end_25a} :catchall_269

    if-eqz v5, :cond_263

    .line 2263
    :try_start_25c
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, v1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_261
    .catch Landroid/os/RemoteException; {:try_start_25c .. :try_end_261} :catch_262
    .catchall {:try_start_25c .. :try_end_261} :catchall_269

    .line 2265
    goto :goto_263

    .line 2264
    :catch_262
    move-exception v5

    .line 2259
    .end local v4    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_263
    :goto_263
    add-int/lit8 v3, v3, 0x1

    goto :goto_242

    .line 2268
    .end local v3    # "i":I
    :cond_266
    :try_start_266
    monitor-exit v2

    .line 2269
    goto/16 :goto_3a6

    .line 2268
    :catchall_269
    move-exception v3

    monitor-exit v2
    :try_end_26b
    .catchall {:try_start_266 .. :try_end_26b} :catchall_269

    throw v3

    .line 2239
    .end local v0    # "uid":I
    .end local v1    # "firstPacket":[B
    :sswitch_26c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_26f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2240
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLocked(I)V

    .line 2241
    monitor-exit v0
    :try_end_27c
    .catchall {:try_start_26f .. :try_end_27c} :catchall_281

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2242
    goto/16 :goto_3a6

    .line 2241
    :catchall_281
    move-exception v1

    :try_start_282
    monitor-exit v0
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2227
    :sswitch_287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2228
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v1, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2233
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2234
    goto/16 :goto_3a6

    .line 2180
    .end local v0    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v1    # "thread":Ljava/lang/Thread;
    :sswitch_295
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 2181
    goto/16 :goto_3a6

    .line 2175
    :sswitch_29e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_2a1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2176
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLocked()V

    .line 2177
    monitor-exit v0
    :try_end_2ac
    .catchall {:try_start_2a1 .. :try_end_2ac} :catchall_2b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2178
    goto/16 :goto_3a6

    .line 2177
    :catchall_2b1
    move-exception v1

    :try_start_2b2
    monitor-exit v0
    :try_end_2b3
    .catchall {:try_start_2b2 .. :try_end_2b3} :catchall_2b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2219
    :sswitch_2b7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_2ba
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2220
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 2221
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2222
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2223
    .local v1, "nmsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2224
    nop

    .end local v1    # "nmsg":Landroid/os/Message;
    monitor-exit v0
    :try_end_2d6
    .catchall {:try_start_2ba .. :try_end_2d6} :catchall_2db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2225
    goto/16 :goto_3a6

    .line 2224
    :catchall_2db
    move-exception v1

    :try_start_2dc
    monitor-exit v0
    :try_end_2dd
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_2db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2195
    :sswitch_2e1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_2e4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2196
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2197
    .local v3, "appId":I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 2198
    .local v9, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    .line 2199
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkg"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2200
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v1, "reason"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2203
    .local v10, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2210
    nop

    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "appId":I
    .end local v9    # "userId":I
    .end local v10    # "reason":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_30c
    .catchall {:try_start_2e4 .. :try_end_30c} :catchall_311

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2211
    goto/16 :goto_3a6

    .line 2210
    :catchall_311
    move-exception v1

    :try_start_312
    monitor-exit v0
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2183
    :sswitch_317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2184
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_31e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2185
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v2, v0}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2186
    monitor-exit v1
    :try_end_327
    .catchall {:try_start_31e .. :try_end_327} :catchall_32c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2187
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_3a6

    .line 2186
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_32c
    move-exception v2

    :try_start_32d
    monitor-exit v1
    :try_end_32e
    .catchall {:try_start_32d .. :try_end_32e} :catchall_32c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2161
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_332
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_335
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2162
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_343
    if-ltz v1, :cond_379

    .line 2163
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2164
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_353
    .catchall {:try_start_335 .. :try_end_353} :catchall_37e

    if-eqz v3, :cond_376

    .line 2166
    :try_start_355
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_35a
    .catch Landroid/os/RemoteException; {:try_start_355 .. :try_end_35a} :catch_35b
    .catchall {:try_start_355 .. :try_end_35a} :catchall_37e

    .line 2169
    goto :goto_376

    .line 2167
    :catch_35b
    move-exception v3

    .line 2168
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_35c
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update time zone for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_376
    :goto_376
    add-int/lit8 v1, v1, -0x1

    goto :goto_343

    .line 2172
    .end local v1    # "i":I
    :cond_379
    monitor-exit v0
    :try_end_37a
    .catchall {:try_start_35c .. :try_end_37a} :catchall_37e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2173
    goto :goto_3a6

    .line 2172
    :catchall_37e
    move-exception v1

    :try_start_37f
    monitor-exit v0
    :try_end_380
    .catchall {:try_start_37f .. :try_end_380} :catchall_37e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2151
    :sswitch_384
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2152
    goto :goto_3a6

    .line 2146
    :sswitch_390
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_393
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2147
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2148
    monitor-exit v0
    :try_end_39c
    .catchall {:try_start_393 .. :try_end_39c} :catchall_3a0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2149
    goto :goto_3a6

    .line 2148
    :catchall_3a0
    move-exception v1

    :try_start_3a1
    monitor-exit v0
    :try_end_3a2
    .catchall {:try_start_3a1 .. :try_end_3a2} :catchall_3a0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2385
    :cond_3a6
    :goto_3a6
    return-void

    nop

    :sswitch_data_3a8
    .sparse-switch
        0x5 -> :sswitch_390
        0xc -> :sswitch_384
        0xd -> :sswitch_332
        0x14 -> :sswitch_317
        0x16 -> :sswitch_2e1
        0x1b -> :sswitch_2b7
        0x1c -> :sswitch_29e
        0x1d -> :sswitch_295
        0x21 -> :sswitch_287
        0x29 -> :sswitch_26c
        0x31 -> :sswitch_236
        0x32 -> :sswitch_188
        0x33 -> :sswitch_155
        0x38 -> :sswitch_13e
        0x39 -> :sswitch_123
        0x3a -> :sswitch_11c
        0x3f -> :sswitch_103
        0x42 -> :sswitch_f6
        0x45 -> :sswitch_de
        0x47 -> :sswitch_c1
        0x50 -> :sswitch_9e
        0x22b -> :sswitch_86
        0xbb8 -> :sswitch_b
    .end sparse-switch
.end method
