.class Lcom/android/server/wm/ActivityRecord$AddStartingWindow;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStartingWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 2278
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityRecord$1;

    .line 2278
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2286
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2288
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_37

    .line 2290
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x6d726936

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v5, v6, v4, v3, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2293
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_161

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2295
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2296
    .local v1, "startingData":Lcom/android/server/wm/StartingData;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_161

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2298
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_5a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x6728e9b

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v4

    aput-object v6, v9, v2

    invoke-static {v7, v8, v4, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_5a
    const/4 v0, 0x0

    .line 2304
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :try_start_5b
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v6
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_61} :catch_63

    move-object v0, v6

    .line 2307
    goto :goto_6b

    .line 2305
    :catch_63
    move-exception v6

    .line 2306
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ActivityTaskManager"

    const-string v8, "Exception when adding starting window"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6b
    if-eqz v0, :cond_14a

    .line 2309
    const/4 v6, 0x0

    .line 2310
    .local v6, "abort":Z
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2312
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v8, :cond_8a

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_85

    goto :goto_8a

    .line 2320
    :cond_85
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, v8, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_b3

    .line 2314
    :cond_8a
    :goto_8a
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v8, :cond_aa

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam1":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x6ca66349

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v8, v12, v4

    aput-object v9, v12, v2

    invoke-static {v10, v11, v4, v3, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Ljava/lang/String;
    :cond_aa
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v8, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2317
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2318
    const/4 v6, 0x1

    .line 2322
    :goto_b3
    if-nez v6, :cond_e0

    .line 2323
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v8, :cond_e0

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "protoLogParam0":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "protoLogParam1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam2":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v12, -0x4d0762a6

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v4

    aput-object v9, v13, v2

    aput-object v10, v13, v5

    invoke-static {v11, v12, v4, v3, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2327
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Ljava/lang/String;
    .end local v10    # "protoLogParam2":Ljava/lang/String;
    :cond_e0
    monitor-exit v7
    :try_end_e1
    .catchall {:try_start_75 .. :try_end_e1} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2328
    if-eqz v6, :cond_143

    .line 2329
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    .line 2334
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_f0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2335
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_103

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mUserId:I

    .line 2336
    .local v4, "userId":I
    :cond_103
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mCustomStartingWindowKey:Ljava/lang/String;

    .line 2337
    .local v5, "customStartingWindowKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mCustomStartingWindowKey:Ljava/lang/String;

    .line 2338
    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_f0 .. :try_end_10c} :catchall_13d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2339
    if-eqz v5, :cond_143

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    .line 2342
    invoke-virtual {v2, v5, v4}, Lcom/android/server/wm/CustomStartingWindowController;->isCustomImageLoaded(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 2343
    const-string v2, "WindowManager"

    const-string v3, "Call GC after removing custom starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2345
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v2, v3, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_143

    .line 2338
    .end local v4    # "userId":I
    .end local v5    # "customStartingWindowKey":Ljava/lang/String;
    :catchall_13d
    move-exception v3

    :try_start_13e
    monitor-exit v2
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 2350
    .end local v6    # "abort":Z
    :cond_143
    :goto_143
    goto :goto_160

    .line 2327
    .restart local v6    # "abort":Z
    :catchall_144
    move-exception v2

    :try_start_145
    monitor-exit v7
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2351
    .end local v6    # "abort":Z
    :cond_14a
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_160

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x4ac4af81    # 6444992.5f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    invoke-static {v6, v7, v4, v3, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2354
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_160
    :goto_160
    return-void

    .line 2296
    .end local v0    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .end local v1    # "startingData":Lcom/android/server/wm/StartingData;
    :catchall_161
    move-exception v1

    :try_start_162
    monitor-exit v0
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
