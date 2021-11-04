.class Lcom/android/server/wm/RemoteAppController;
.super Ljava/lang/Object;
.source "RemoteAppController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAppController"


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAppControllerCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mRoot:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    return-void
.end method

.method private static isInterceptRequested(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->isRemoteAppLaunch()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 275
    :catch_5
    move-exception v0

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method static isValidActivityTypeLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 269
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 77
    const-string v0, "[RemoteAppController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isRemoteAppDisplayRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    monitor-exit v0

    .line 85
    return-void

    .line 83
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public initialize()V
    .registers 1

    .line 68
    return-void
.end method

.method interceptMoveTaskToBackLocked(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAppController;->notifyMoveTaskToBackLocked(I)Z

    move-result v0

    return v0
.end method

.method interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z
    .registers 21
    .param p1, "recentTask"    # Lcom/android/server/wm/Task;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "displayId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 151
    move-object/from16 v8, p0

    move/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 152
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    .line 153
    .local v11, "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    const/4 v0, 0x0

    if-eqz v10, :cond_da

    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_da

    if-nez v11, :cond_1d

    move-object/from16 v3, p1

    move-object/from16 v2, p4

    goto/16 :goto_de

    .line 155
    :cond_1d
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    const-string v12, "RemoteAppController"

    if-eqz v1, :cond_3f

    .line 156
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3e

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityFromRecentsLocked: Can\'t intercept taskOverlay, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3e
    return v0

    .line 161
    :cond_3f
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 162
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_5e

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityFromRecentsLocked: Can\'t intercept Chooser/Resolver, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5e
    return v0

    .line 169
    :cond_5f
    if-nez v9, :cond_d5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 170
    const/4 v13, 0x2

    .line 171
    .local v13, "interceptReason":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v14

    .line 172
    .local v14, "isVisibleTask":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    .line 173
    .local v15, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v14

    move-object v6, v15

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RemoteAppController;->notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v0

    .line 175
    .local v0, "intercepted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityFromRecentsLocked: intercepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recentTask="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", intercept_reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v13}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->interceptReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v12, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0

    .line 169
    .end local v0    # "intercepted":Z
    .end local v13    # "interceptReason":I
    .end local v14    # "isVisibleTask":Z
    .end local v15    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_d5
    move-object/from16 v3, p1

    move-object/from16 v2, p4

    .line 181
    return v0

    .line 153
    :cond_da
    move-object/from16 v3, p1

    move-object/from16 v2, p4

    .line 154
    :goto_de
    return v0
.end method

.method interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z
    .registers 24
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p4, "displayId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 186
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    iget-object v0, v8, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 187
    .local v12, "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_13f

    if-nez v12, :cond_1b

    move-object/from16 v3, p3

    move-object/from16 v2, p5

    goto/16 :goto_143

    .line 189
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    const-string v13, "RemoteAppController"

    if-eqz v0, :cond_3d

    .line 190
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityLocked: Can\'t intercept taskOverlay, r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3c
    return v1

    .line 194
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 195
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5c

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityLocked: Can\'t intercept Chooser/Resolver, r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_5c
    return v1

    .line 201
    :cond_5d
    const/4 v0, 0x0

    .line 202
    .local v0, "interceptReason":I
    const/4 v2, 0x0

    .line 204
    .local v2, "shouldNotify":Z
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAppController;->isInterceptRequested(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 205
    const/4 v2, 0x1

    .line 206
    const/4 v0, 0x4

    move v14, v0

    move v15, v2

    goto :goto_b8

    .line 207
    :cond_6c
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 208
    if-nez v10, :cond_76

    const/4 v3, 0x1

    goto :goto_77

    :cond_76
    move v3, v1

    .line 209
    .local v3, "isNewTask":Z
    :goto_77
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 210
    .local v4, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_82

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_83

    :cond_82
    const/4 v5, 0x0

    .line 211
    .local v5, "topTask":Lcom/android/server/wm/Task;
    :goto_83
    if-eqz v5, :cond_92

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    if-lez v6, :cond_92

    if-nez v3, :cond_8f

    if-eq v5, v10, :cond_92

    .line 212
    :cond_8f
    const/4 v2, 0x1

    .line 213
    const/4 v0, 0x1

    goto :goto_9c

    .line 214
    :cond_92
    if-eqz v10, :cond_9c

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v6

    if-eq v6, v11, :cond_9c

    .line 215
    const/4 v2, 0x1

    .line 216
    const/4 v0, 0x3

    .line 218
    .end local v3    # "isNewTask":Z
    .end local v4    # "topStack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "topTask":Lcom/android/server/wm/Task;
    :cond_9c
    :goto_9c
    move v14, v0

    move v15, v2

    goto :goto_b8

    :cond_9f
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_b6

    .line 219
    if-eqz v10, :cond_b6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayLocked(I)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 220
    const/4 v2, 0x1

    .line 221
    const/4 v0, 0x2

    move v14, v0

    move v15, v2

    goto :goto_b8

    .line 225
    :cond_b6
    move v14, v0

    move v15, v2

    .end local v0    # "interceptReason":I
    .end local v2    # "shouldNotify":Z
    .local v14, "interceptReason":I
    .local v15, "shouldNotify":Z
    :goto_b8
    if-eqz v15, :cond_13a

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isVisibleTask":Z
    const/4 v1, 0x0

    .line 228
    .local v1, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v10, :cond_cb

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    move/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_cf

    .line 228
    :cond_cb
    move/from16 v16, v0

    move-object/from16 v17, v1

    .line 232
    .end local v0    # "isVisibleTask":Z
    .end local v1    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v16, "isVisibleTask":Z
    .local v17, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_cf
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, v16

    move-object/from16 v6, v17

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RemoteAppController;->notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v0

    .line 234
    .local v0, "intercepted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityLocked: intercepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", opts="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reusedTask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", intercept_reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {v14}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->interceptReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v13, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v0

    .line 241
    .end local v0    # "intercepted":Z
    .end local v16    # "isVisibleTask":Z
    .end local v17    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_13a
    move-object/from16 v3, p3

    move-object/from16 v2, p5

    return v1

    .line 187
    .end local v14    # "interceptReason":I
    .end local v15    # "shouldNotify":Z
    :cond_13f
    move-object/from16 v3, p3

    move-object/from16 v2, p5

    .line 188
    :goto_143
    return v1
.end method

.method isRemoteAppDisplayLocked(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_20

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 261
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 262
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    return v2

    .line 259
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 265
    .end local v0    # "displayNdx":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method isRemoteAppDisplayRunningLocked()Z
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 251
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 252
    return v1

    .line 249
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 255
    .end local v0    # "displayNdx":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method notifyMoveTaskToBackLocked(I)Z
    .registers 7
    .param p1, "taskId"    # I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RemoteAppControllerCallbacks;

    .line 140
    .local v3, "listener":Lcom/android/server/wm/RemoteAppControllerCallbacks;
    invoke-interface {v3, p1}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->onMoveTaskToBackLocked(I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 141
    .end local v3    # "listener":Lcom/android/server/wm/RemoteAppControllerCallbacks;
    goto :goto_a

    .line 142
    :cond_1c
    monitor-exit v1

    .line 144
    return v0

    .line 142
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method notifyStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "interceptedDisplayId"    # I
    .param p5, "isVisibleTask"    # Z
    .param p6, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p7, "interceptReason"    # I

    .line 122
    move-object v1, p0

    const/4 v2, 0x0

    .line 124
    .local v2, "handled":Z
    iget-object v3, v1, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/wm/RemoteAppControllerCallbacks;

    .line 126
    .local v5, "listener":Lcom/android/server/wm/RemoteAppControllerCallbacks;
    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lcom/android/server/wm/RemoteAppControllerCallbacks;->onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v4

    move v2, v4

    .line 129
    .end local v5    # "listener":Lcom/android/server/wm/RemoteAppControllerCallbacks;
    goto :goto_b

    .line 130
    :cond_2a
    monitor-exit v3

    .line 132
    return v2

    .line 130
    :catchall_2c
    move-exception v0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method registerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/wm/RemoteAppControllerCallbacks;

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "RemoteAppController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 73
    return-void
.end method

.method unregisterCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/wm/RemoteAppControllerCallbacks;

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/RemoteAppController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/RemoteAppController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "RemoteAppController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
