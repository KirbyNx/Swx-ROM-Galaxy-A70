.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 151
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 156
    const/4 v0, 0x0

    .line 160
    .local v0, "handled":Z
    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_2eb

    .line 161
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_f

    goto/16 :goto_2eb

    .line 164
    :cond_f
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 165
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v3, v3, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_2f1
    .catchall {:try_start_1 .. :try_end_16} :catchall_2ef

    if-eqz v3, :cond_1d

    .line 169
    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 170
    return-void

    .line 173
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 174
    .local v3, "newX":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 176
    .local v4, "newY":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_15f

    if-eq v5, v7, :cond_132

    if-eq v5, v2, :cond_63

    if-eq v5, v6, :cond_35

    goto/16 :goto_187

    .line 238
    :cond_35
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_5d

    .line 239
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_CANCEL @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5d
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v7, v2, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto/16 :goto_187

    .line 184
    :cond_63
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_8b

    .line 185
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_8b
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_94} :catch_2f1
    .catchall {:try_start_1d .. :try_end_94} :catchall_2ef

    :try_start_94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 188
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v8, v3, v4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v8

    iput-boolean v8, v5, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 189
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v5, v5, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 190
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_12c

    :try_start_af
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 194
    # getter for: Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;
    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    move-result-object v2

    if-eqz v2, :cond_bc

    move v2, v7

    goto :goto_bd

    :cond_bc
    const/4 v2, 0x0

    .line 196
    .local v2, "isFreeformGuideResizeConcept":Z
    :goto_bd
    if-eqz v2, :cond_f7

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 200
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize()V

    .line 202
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12b

    .line 203
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->adjustFreeformGuideSize()V
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)V

    .line 204
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;Z)V

    goto :goto_12b

    .line 208
    :cond_f7
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12b

    .line 209
    const-string/jumbo v5, "wm.TaskPositioner.resizeTask"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v10, v10, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 212
    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    .line 211
    invoke-virtual {v5, v10, v11, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 213
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_12b} :catch_2f1
    .catchall {:try_start_af .. :try_end_12b} :catchall_2ef

    .line 222
    .end local v2    # "isFreeformGuideResizeConcept":Z
    :cond_12b
    :goto_12b
    goto :goto_187

    .line 190
    :catchall_12c
    move-exception v5

    :try_start_12d
    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v5

    .line 225
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_132
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_15a

    .line 226
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_15a
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v7, v2, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 235
    goto :goto_187

    .line 178
    :cond_15f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_187

    .line 179
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_DOWN @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_187
    :goto_187
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v2, v2, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz v2, :cond_2e9

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v2

    .line 247
    .local v2, "wasResizing":Z
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_19c} :catch_2f1
    .catchall {:try_start_12e .. :try_end_19c} :catchall_2ef

    :try_start_19c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 248
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->endDragLocked()V
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)V

    .line 249
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v8, v8, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_1b1
    .catchall {:try_start_19c .. :try_end_1b1} :catchall_2e3

    .line 251
    if-nez v2, :cond_1be

    .line 253
    :try_start_1b3
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v8, v8, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_1bc
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1bc} :catch_1bd
    .catchall {:try_start_1b3 .. :try_end_1bc} :catchall_2e3

    .line 255
    goto :goto_1be

    .line 254
    :catch_1bd
    move-exception v8

    .line 258
    :cond_1be
    :goto_1be
    :try_start_1be
    monitor-exit v5
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_2e3

    :try_start_1bf
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 259
    if-eqz v2, :cond_2d7

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d7

    .line 262
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1df} :catch_2f1
    .catchall {:try_start_1bf .. :try_end_1df} :catchall_2ef

    :try_start_1df
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 263
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v8, :cond_211

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_211

    .line 264
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 265
    :cond_211
    monitor-exit v5
    :try_end_212
    .catchall {:try_start_1df .. :try_end_212} :catchall_2d1

    :try_start_212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 271
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_21e} :catch_2f1
    .catchall {:try_start_212 .. :try_end_21e} :catchall_2ef

    :try_start_21e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 272
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, v7, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 273
    .local v7, "topVisibleActivity":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v5
    :try_end_22a
    .catchall {:try_start_21e .. :try_end_22a} :catchall_2cb

    :try_start_22a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 274
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d7

    if-eqz v7, :cond_2d7

    .line 276
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 277
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_2d7

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_2d7

    .line 278
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_256} :catch_2f1
    .catchall {:try_start_22a .. :try_end_256} :catchall_2ef

    :try_start_256
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 279
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 280
    monitor-exit v8
    :try_end_265
    .catchall {:try_start_256 .. :try_end_265} :catchall_2c5

    :try_start_265
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_2f1
    .catchall {:try_start_265 .. :try_end_268} :catchall_2ef

    .line 282
    :try_start_268
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v9, v9, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 283
    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    .line 282
    invoke-virtual {v8, v9, v10, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_27f
    .catchall {:try_start_268 .. :try_end_27f} :catchall_2a1

    .line 286
    :try_start_27f
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_288} :catch_2f1
    .catchall {:try_start_27f .. :try_end_288} :catchall_2ef

    :try_start_288
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 287
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 288
    monitor-exit v6
    :try_end_297
    .catchall {:try_start_288 .. :try_end_297} :catchall_29b

    :try_start_297
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29a} :catch_2f1
    .catchall {:try_start_297 .. :try_end_29a} :catchall_2ef

    .line 289
    goto :goto_2d7

    .line 288
    :catchall_29b
    move-exception v8

    :try_start_29c
    monitor-exit v6
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_29b

    :try_start_29d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v8

    .line 286
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :catchall_2a1
    move-exception v6

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2ab} :catch_2f1
    .catchall {:try_start_29d .. :try_end_2ab} :catchall_2ef

    :try_start_2ab
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 287
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 288
    monitor-exit v8
    :try_end_2ba
    .catchall {:try_start_2ab .. :try_end_2ba} :catchall_2bf

    :try_start_2ba
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    nop

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2bf} :catch_2f1
    .catchall {:try_start_2ba .. :try_end_2bf} :catchall_2ef

    .line 288
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :catchall_2bf
    move-exception v6

    :try_start_2c0
    monitor-exit v8
    :try_end_2c1
    .catchall {:try_start_2c0 .. :try_end_2c1} :catchall_2bf

    :try_start_2c1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2c5} :catch_2f1
    .catchall {:try_start_2c1 .. :try_end_2c5} :catchall_2ef

    .line 280
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :catchall_2c5
    move-exception v6

    :try_start_2c6
    monitor-exit v8
    :try_end_2c7
    .catchall {:try_start_2c6 .. :try_end_2c7} :catchall_2c5

    :try_start_2c7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2cb} :catch_2f1
    .catchall {:try_start_2c7 .. :try_end_2cb} :catchall_2ef

    .line 273
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "topVisibleActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :catchall_2cb
    move-exception v6

    :try_start_2cc
    monitor-exit v5
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2cb

    :try_start_2cd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2d1} :catch_2f1
    .catchall {:try_start_2cd .. :try_end_2d1} :catchall_2ef

    .line 265
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :catchall_2d1
    move-exception v6

    :try_start_2d2
    monitor-exit v5
    :try_end_2d3
    .catchall {:try_start_2d2 .. :try_end_2d3} :catchall_2d1

    :try_start_2d3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6

    .line 303
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_2d7
    :goto_2d7
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2e2} :catch_2f1
    .catchall {:try_start_2d3 .. :try_end_2e2} :catchall_2ef

    goto :goto_2e9

    .line 258
    :catchall_2e3
    move-exception v6

    :try_start_2e4
    monitor-exit v5
    :try_end_2e5
    .catchall {:try_start_2e4 .. :try_end_2e5} :catchall_2e3

    :try_start_2e5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "handled":Z
    .end local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2e9} :catch_2f1
    .catchall {:try_start_2e5 .. :try_end_2e9} :catchall_2ef

    .line 305
    .end local v2    # "wasResizing":Z
    .restart local v0    # "handled":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_2e9
    :goto_2e9
    const/4 v0, 0x1

    .line 309
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    goto :goto_2fa

    :cond_2eb
    :goto_2eb
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 162
    return-void

    .line 309
    :catchall_2ef
    move-exception v1

    goto :goto_2ff

    .line 306
    :catch_2f1
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f2
    const-string v2, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f9
    .catchall {:try_start_2f2 .. :try_end_2f9} :catchall_2ef

    .line 309
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2fa
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 310
    nop

    .line 311
    return-void

    .line 309
    :goto_2ff
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 310
    throw v1
.end method
