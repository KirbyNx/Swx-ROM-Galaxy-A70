.class final Lcom/android/server/wm/MultiTaskingWindowController$H;
.super Landroid/os/Handler;
.source "MultiTaskingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_RELAUNCHED_TIMEOUT:I = 0x4

.field public static final NOTIFY_SECURE_BASE_WINDOW_ADDED_IN_DEX_ON_PC:I = 0x2

.field public static final NOTIFY_SECURE_BASE_WINDOW_CHANGED_ON_REMOTE_APP:I = 0x1

.field public static final SET_FREEFORM_WINDOWING_MODE_BY_CORENER_GESTURE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiTaskingWindowController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiTaskingWindowController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MultiTaskingWindowController;

    .line 297
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingWindowController$H;->this$0:Lcom/android/server/wm/MultiTaskingWindowController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    goto/16 :goto_c4

    .line 359
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController$H;->this$0:Lcom/android/server/wm/MultiTaskingWindowController;

    # getter for: Lcom/android/server/wm/MultiTaskingWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingWindowController;->access$000(Lcom/android/server/wm/MultiTaskingWindowController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 360
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 361
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_22

    .line 362
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 364
    :cond_22
    :try_start_22
    const-string v2, "MultiTaskingWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTIVITY_RELAUNCHED_TIMEOUT: r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isRelaunching="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 367
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 369
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_c4

    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 348
    :cond_59
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 349
    .local v0, "taskId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    .line 350
    .local v2, "launchBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingWindowController$H;->this$0:Lcom/android/server/wm/MultiTaskingWindowController;

    # getter for: Lcom/android/server/wm/MultiTaskingWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingWindowController;->access$000(Lcom/android/server/wm/MultiTaskingWindowController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v3

    monitor-enter v3

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 351
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingWindowController$H;->this$0:Lcom/android/server/wm/MultiTaskingWindowController;

    # getter for: Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingWindowController;->access$100(Lcom/android/server/wm/MultiTaskingWindowController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/FreeformWindowController;->setFreeformWindowingModeByCornerGestureLocked(ILandroid/graphics/Rect;)V

    .line 353
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 355
    .end local v0    # "taskId":I
    .end local v2    # "launchBounds":Landroid/graphics/Rect;
    goto :goto_c4

    .line 353
    .restart local v0    # "taskId":I
    .restart local v2    # "launchBounds":Landroid/graphics/Rect;
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 315
    .end local v0    # "taskId":I
    .end local v2    # "launchBounds":Landroid/graphics/Rect;
    :cond_80
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_WINDOW_POLICY:Z

    if-eqz v0, :cond_c4

    .line 316
    const-class v0, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    .line 318
    .local v0, "remoteService":Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;
    if-nez v0, :cond_a8

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: can\'t find localService, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingWindowController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_a8
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 323
    .local v2, "taskId":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_b3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_b5

    :cond_b3
    const-string v3, ""

    .line 324
    .local v3, "packageName":Ljava/lang/String;
    :goto_b5
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_ba

    goto :goto_bb

    :cond_ba
    const/4 v1, 0x0

    .line 325
    .local v1, "isAdded":Z
    :goto_bb
    if-eqz v1, :cond_c1

    .line 326
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;->onSecuredAppLaunched(ILjava/lang/String;)V

    goto :goto_c4

    .line 328
    :cond_c1
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;->onSecuredAppRemoved(ILjava/lang/String;)V

    .line 373
    .end local v0    # "remoteService":Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;
    .end local v1    # "isAdded":Z
    .end local v2    # "taskId":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_c4
    :goto_c4
    return-void
.end method
