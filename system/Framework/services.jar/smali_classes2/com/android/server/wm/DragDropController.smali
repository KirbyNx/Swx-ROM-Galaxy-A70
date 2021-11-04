.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DragDropController;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 313
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    .line 314
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 319
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_52

    .line 325
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_43

    .line 332
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 334
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_61

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_67

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 337
    nop

    .line 338
    return-void

    .line 326
    :cond_43
    :try_start_43
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 321
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :cond_52
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 334
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    :try_start_63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 336
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_67
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 337
    throw v0
.end method

.method dragDropActiveLocked()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 377
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1e
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1e
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_7a

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DragState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallingWindowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 421
    .local v0, "dragInputWindowHandle":Landroid/view/InputWindowHandle;
    if-eqz v0, :cond_62

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " InputWindowHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " InputSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    .end local v0    # "dragInputWindowHandle":Landroid/view/InputWindowHandle;
    :cond_7a
    return-void
.end method

.method handleMotionEvent(ZFF)V
    .registers 5
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F

    .line 349
    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFFI)V

    .line 350
    return-void
.end method

.method handleMotionEvent(ZFFI)V
    .registers 7
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F
    .param p4, "action"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 359
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 362
    :cond_13
    if-eqz p1, :cond_1b

    .line 363
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_20

    .line 370
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 373
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 374
    return-void

    .line 373
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 4
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 409
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 412
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 413
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 34
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "window"    # Landroid/view/IWindow;
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/SurfaceControl;
    .param p7, "touchSource"    # I
    .param p8, "touchX"    # F
    .param p9, "touchY"    # F
    .param p10, "thumbCenterX"    # F
    .param p11, "thumbCenterY"    # F
    .param p12, "data"    # Landroid/content/ClipData;

    .line 106
    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move/from16 v2, p9

    move-object/from16 v1, p12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_43

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perform drag: win="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " flags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_43
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v4, v0

    .line 112
    .local v4, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v10, p4

    move-object v11, v4

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v9

    .line 115
    .local v9, "callbackResult":Z
    :try_start_65
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_433

    :try_start_6a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_406

    .line 117
    const/4 v0, 0x0

    if-nez v9, :cond_ba

    .line 118
    :try_start_70
    const-string v7, "WindowManager"

    const-string v11, "IDragDropCallback rejects the performDrag request"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_ac

    .line 119
    nop

    .line 258
    if-eqz v5, :cond_7d

    .line 259
    :try_start_7a
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_7d
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_8e

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 262
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_8e
    monitor-exit v10
    :try_end_8f
    .catchall {:try_start_7a .. :try_end_8f} :catchall_9e

    .line 268
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 119
    return-object v0

    .line 265
    :catchall_9e
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v5

    move/from16 v19, v9

    move/from16 v4, p10

    move v5, v2

    move-object v2, v6

    move/from16 v6, p11

    goto/16 :goto_42c

    .line 258
    :catchall_ac
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v5

    move/from16 v19, v9

    move/from16 v4, p10

    move v5, v2

    move-object v2, v6

    move/from16 v6, p11

    goto/16 :goto_413

    .line 122
    :cond_ba
    :try_start_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v7
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_406

    if-eqz v7, :cond_ee

    .line 123
    :try_start_c0
    const-string v7, "WindowManager"

    const-string v11, "Drag already in progress"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_ac

    .line 124
    nop

    .line 258
    if-eqz v5, :cond_cd

    .line 259
    :try_start_ca
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_cd
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_de

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_de

    .line 262
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_de
    monitor-exit v10
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_9e

    .line 268
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 124
    return-object v0

    .line 127
    :cond_ee
    :try_start_ee
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v7, v0, v6, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_406

    move-object v12, v7

    .line 129
    .local v12, "callingWin":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_3a7

    :try_start_f8
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v7

    if-eqz v7, :cond_105

    move v5, v2

    move-object/from16 v17, v4

    move/from16 v19, v9

    goto/16 :goto_3ac

    .line 135
    :cond_105
    iget-boolean v7, v12, Lcom/android/server/wm/WindowState;->mDssEnabled:Z
    :try_end_107
    .catchall {:try_start_f8 .. :try_end_107} :catchall_39d

    if-eqz v7, :cond_121

    .line 136
    :try_start_109
    iget v7, v12, Lcom/android/server/wm/WindowState;->mDssScale:F
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_ac

    div-float v7, p10, v7

    .line 137
    .end local p10    # "thumbCenterX":F
    .local v7, "thumbCenterX":F
    :try_start_10d
    iget v13, v12, Lcom/android/server/wm/WindowState;->mDssScale:F
    :try_end_10f
    .catchall {:try_start_10d .. :try_end_10f} :catchall_114

    div-float v13, p11, v13

    move v14, v13

    move v13, v7

    .end local p11    # "thumbCenterY":F
    .local v13, "thumbCenterY":F
    goto :goto_125

    .line 258
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v13    # "thumbCenterY":F
    .restart local p11    # "thumbCenterY":F
    :catchall_114
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v5

    move v4, v7

    move/from16 v19, v9

    move v5, v2

    move-object v2, v6

    move/from16 v6, p11

    goto/16 :goto_413

    .line 135
    .end local v7    # "thumbCenterX":F
    .restart local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local p10    # "thumbCenterX":F
    :cond_121
    move/from16 v13, p10

    move/from16 v14, p11

    .line 153
    .end local p10    # "thumbCenterX":F
    .end local p11    # "thumbCenterY":F
    .local v13, "thumbCenterX":F
    .local v14, "thumbCenterY":F
    :goto_125
    :try_start_125
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_38f

    move-object v15, v7

    .line 154
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v15, :cond_172

    .line 155
    :try_start_12c
    const-string v7, "WindowManager"

    const-string v11, "display content is null"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_166

    .line 156
    nop

    .line 258
    if-eqz v5, :cond_139

    .line 259
    :try_start_136
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_139
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_14a

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_14a

    .line 262
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_14a
    monitor-exit v10
    :try_end_14b
    .catchall {:try_start_136 .. :try_end_14b} :catchall_15a

    .line 268
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 156
    return-object v0

    .line 265
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_15a
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v5

    move/from16 v19, v9

    move v4, v13

    move v5, v2

    move-object v2, v6

    move v6, v14

    goto/16 :goto_42c

    .line 258
    :catchall_166
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v5

    move/from16 v19, v9

    move v4, v13

    move v5, v2

    move-object v2, v6

    move v6, v14

    goto/16 :goto_413

    .line 159
    .restart local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_172
    move/from16 v7, p5

    and-int/lit16 v11, v7, 0x200

    const/high16 v17, 0x3f800000    # 1.0f

    if-nez v11, :cond_17e

    .line 160
    const v11, 0x3f350481    # 0.7071f

    goto :goto_180

    :cond_17e
    move/from16 v11, v17

    .line 161
    .local v11, "alpha":F
    :goto_180
    :try_start_180
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v7, v18

    .line 162
    .local v7, "winBinder":Landroid/os/IBinder;
    new-instance v18, Landroid/os/Binder;

    invoke-direct/range {v18 .. v18}, Landroid/os/Binder;-><init>()V
    :try_end_18b
    .catchall {:try_start_180 .. :try_end_18b} :catchall_38f

    move/from16 v19, v9

    move-object v9, v4

    .end local v4    # "dragToken":Landroid/os/IBinder;
    .local v9, "dragToken":Landroid/os/IBinder;
    .local v19, "callbackResult":Z
    move-object/from16 v4, v18

    .line 163
    .local v4, "token":Landroid/os/IBinder;
    :try_start_190
    new-instance v0, Lcom/android/server/wm/DragState;
    :try_end_192
    .catchall {:try_start_190 .. :try_end_192} :catchall_383

    :try_start_192
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_194
    .catchall {:try_start_192 .. :try_end_194} :catchall_37f

    move/from16 p10, v14

    move-object v14, v1

    .end local v14    # "thumbCenterY":F
    .local p10, "thumbCenterY":F
    move-object v1, v0

    move/from16 p11, v13

    move/from16 v13, p9

    .end local v13    # "thumbCenterX":F
    .local p11, "thumbCenterX":F
    move v13, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p6

    move-object v13, v6

    move/from16 v6, p5

    :try_start_1a4
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1a9
    .catchall {:try_start_1a4 .. :try_end_1a9} :catchall_36e

    .line 164
    const/4 v1, 0x0

    .line 165
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    move/from16 v2, p2

    :try_start_1ac
    iput v2, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 166
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 167
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v11, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 168
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 169
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v15, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 171
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 172
    .local v0, "display":Landroid/view/Display;
    iget-object v5, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v12, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v5, v6, v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2
    :try_end_1d8
    .catchall {:try_start_1ac .. :try_end_1d8} :catchall_35f

    if-nez v2, :cond_225

    .line 175
    :try_start_1da
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_217

    .line 176
    nop

    .line 258
    if-eqz v1, :cond_1e7

    .line 259
    :try_start_1e4
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_1e7
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_1f8

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1f8

    .line 262
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1f8
    monitor-exit v10
    :try_end_1f9
    .catchall {:try_start_1e4 .. :try_end_1f9} :catchall_209

    .line 268
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 176
    const/4 v2, 0x0

    return-object v2

    .line 265
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v11    # "alpha":F
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_209
    move-exception v0

    move/from16 v3, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v4, p11

    move-object/from16 v17, v9

    move-object v2, v13

    goto/16 :goto_42c

    .line 258
    :catchall_217
    move-exception v0

    move/from16 v3, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v4, p11

    move-object/from16 v17, v9

    move-object v2, v13

    goto/16 :goto_413

    .line 179
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v11    # "alpha":F
    .restart local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_225
    :try_start_225
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 180
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_22b
    .catchall {:try_start_225 .. :try_end_22b} :catchall_35f

    move/from16 v3, p8

    move/from16 v5, p9

    :try_start_22f
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 181
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 183
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_23b
    .catchall {:try_start_22f .. :try_end_23b} :catchall_354

    move-object/from16 v18, v4

    move/from16 v4, p11

    .end local p11    # "thumbCenterX":F
    .local v4, "thumbCenterX":F
    .local v18, "token":Landroid/os/IBinder;
    :try_start_23f
    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 184
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_243
    .catchall {:try_start_23f .. :try_end_243} :catchall_34b

    move/from16 v6, p10

    .end local p10    # "thumbCenterY":F
    .local v6, "thumbCenterY":F
    :try_start_245
    iput v6, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 187
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 188
    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object/from16 p6, v0

    .end local v0    # "display":Landroid/view/Display;
    .local p6, "display":Landroid/view/Display;
    iget-boolean v0, v12, Lcom/android/server/wm/WindowState;->mDssEnabled:Z
    :try_end_24f
    .catchall {:try_start_245 .. :try_end_24f} :catchall_344

    if-eqz v0, :cond_26f

    .line 189
    :try_start_251
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 190
    iget v0, v12, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v0, v17, v0

    move-object/from16 p10, v7

    .end local v7    # "winBinder":Landroid/os/IBinder;
    .local p10, "winBinder":Landroid/os/IBinder;
    iget v7, v12, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v7, v17, v7

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 191
    sub-float v0, v3, v4

    sub-float v7, v5, v6

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_268
    .catchall {:try_start_251 .. :try_end_268} :catchall_269

    goto :goto_271

    .line 258
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "alpha":F
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "token":Landroid/os/IBinder;
    .end local p6    # "display":Landroid/view/Display;
    .end local p10    # "winBinder":Landroid/os/IBinder;
    :catchall_269
    move-exception v0

    move-object/from16 v17, v9

    move-object v2, v13

    goto/16 :goto_413

    .line 188
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v11    # "alpha":F
    .restart local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v18    # "token":Landroid/os/IBinder;
    .restart local p6    # "display":Landroid/view/Display;
    :cond_26f
    move-object/from16 p10, v7

    .line 209
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .restart local p10    # "winBinder":Landroid/os/IBinder;
    :goto_271
    :try_start_271
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 210
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z
    :try_end_277
    .catchall {:try_start_271 .. :try_end_277} :catchall_344

    if-eqz v7, :cond_283

    :try_start_279
    const-string v7, "WindowManager"

    move/from16 p11, v11

    .end local v11    # "alpha":F
    .local p11, "alpha":F
    const-string v11, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_282
    .catchall {:try_start_279 .. :try_end_282} :catchall_269

    goto :goto_285

    .end local p11    # "alpha":F
    .restart local v11    # "alpha":F
    :cond_283
    move/from16 p11, v11

    .line 212
    .end local v11    # "alpha":F
    .restart local p11    # "alpha":F
    :goto_285
    :try_start_285
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v7, v7, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 213
    .local v7, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v11, v11, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v7, v0, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 216
    iget-boolean v11, v12, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v11, :cond_2bc

    .line 217
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 218
    .local v11, "tmpFloats":[F
    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 219
    const/16 v17, 0x2

    move-object/from16 v20, v2

    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .local v20, "matrix":Landroid/graphics/Matrix;
    aget v2, v11, v17

    const/16 v17, 0x5

    aget v14, v11, v17

    invoke-virtual {v0, v2, v14}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 221
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v14, 0x3

    aget v14, v11, v14

    const/16 v16, 0x1

    aget v13, v11, v16
    :try_end_2b2
    .catchall {:try_start_285 .. :try_end_2b2} :catchall_344

    const/16 v16, 0x4

    move-object/from16 v17, v9

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .local v17, "dragToken":Landroid/os/IBinder;
    :try_start_2b6
    aget v9, v11, v16

    invoke-virtual {v0, v2, v14, v13, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_2c0

    .line 216
    .end local v11    # "tmpFloats":[F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    :cond_2bc
    move-object/from16 v20, v2

    move-object/from16 v17, v9

    .line 227
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "dragToken":Landroid/os/IBinder;
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v20    # "matrix":Landroid/graphics/Matrix;
    :goto_2c0
    sub-float v2, v3, v4

    sub-float v9, v5, v6

    invoke-virtual {v7, v0, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 231
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 232
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowManagerServiceExt;->hasOneHandOpSpec(I)Z

    move-result v2

    if-eqz v2, :cond_2f2

    .line 233
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    .line 235
    .local v2, "spec":Landroid/view/MagnificationSpec;
    if-eqz v2, :cond_2f2

    .line 236
    sub-float v9, v3, v4

    iget v11, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v11

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 237
    .local v9, "xPos":I
    sub-float v11, v5, v6

    iget v13, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v13

    iget v13, v2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    .line 238
    .local v11, "yPos":I
    int-to-float v13, v9

    int-to-float v14, v11

    invoke-virtual {v7, v0, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 243
    .end local v2    # "spec":Landroid/view/MagnificationSpec;
    .end local v9    # "xPos":I
    .end local v11    # "yPos":I
    :cond_2f2
    invoke-virtual {v7, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 244
    invoke-virtual {v15, v7, v0}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 247
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 250
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 252
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_309

    .line 253
    const-string v2, "WindowManager"

    const-string v9, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_309
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_30e
    .catchall {:try_start_2b6 .. :try_end_30e} :catchall_33f

    .line 258
    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v15    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "token":Landroid/os/IBinder;
    .end local v20    # "matrix":Landroid/graphics/Matrix;
    .end local p6    # "display":Landroid/view/Display;
    .end local p10    # "winBinder":Landroid/os/IBinder;
    .end local p11    # "alpha":F
    if-eqz v1, :cond_313

    .line 259
    :try_start_310
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_313
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_324

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_324

    .line 262
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 265
    :cond_324
    monitor-exit v10
    :try_end_325
    .catchall {:try_start_310 .. :try_end_325} :catchall_33a

    :try_start_325
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_328
    .catchall {:try_start_325 .. :try_end_328} :catchall_335

    .line 266
    nop

    .line 268
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 266
    return-object v17

    .line 268
    :catchall_335
    move-exception v0

    move-object/from16 v2, p4

    goto/16 :goto_440

    .line 265
    :catchall_33a
    move-exception v0

    move-object/from16 v2, p4

    goto/16 :goto_42c

    .line 258
    :catchall_33f
    move-exception v0

    move-object/from16 v2, p4

    goto/16 :goto_413

    .end local v17    # "dragToken":Landroid/os/IBinder;
    .local v9, "dragToken":Landroid/os/IBinder;
    :catchall_344
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v2, p4

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    .local p10, "thumbCenterY":F
    :catchall_34b
    move-exception v0

    move/from16 v6, p10

    move-object/from16 v17, v9

    move-object/from16 v2, p4

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .end local p10    # "thumbCenterY":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    .restart local p10    # "thumbCenterY":F
    .local p11, "thumbCenterX":F
    :catchall_354
    move-exception v0

    move/from16 v6, p10

    move/from16 v4, p11

    move-object/from16 v17, v9

    move-object/from16 v2, p4

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .end local p10    # "thumbCenterY":F
    .end local p11    # "thumbCenterX":F
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    .restart local p10    # "thumbCenterY":F
    .restart local p11    # "thumbCenterX":F
    :catchall_35f
    move-exception v0

    move/from16 v3, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v4, p11

    move-object/from16 v17, v9

    move-object/from16 v2, p4

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .end local p10    # "thumbCenterY":F
    .end local p11    # "thumbCenterX":F
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    .local p6, "surface":Landroid/view/SurfaceControl;
    .restart local p10    # "thumbCenterY":F
    .restart local p11    # "thumbCenterX":F
    :catchall_36e
    move-exception v0

    move/from16 v3, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v4, p11

    move-object/from16 v17, v9

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .end local p10    # "thumbCenterY":F
    .end local p11    # "thumbCenterX":F
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "dragToken":Landroid/os/IBinder;
    .restart local v13    # "thumbCenterX":F
    .restart local v14    # "thumbCenterY":F
    :catchall_37f
    move-exception v0

    move/from16 v5, p9

    goto :goto_385

    :catchall_383
    move-exception v0

    move v5, v2

    :goto_385
    move-object/from16 v17, v9

    move v4, v13

    move v6, v14

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    .end local v9    # "dragToken":Landroid/os/IBinder;
    .end local v13    # "thumbCenterX":F
    .end local v14    # "thumbCenterY":F
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_413

    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .local v4, "dragToken":Landroid/os/IBinder;
    .local v9, "callbackResult":Z
    .restart local v13    # "thumbCenterX":F
    .restart local v14    # "thumbCenterY":F
    :catchall_38f
    move-exception v0

    move v5, v2

    move-object/from16 v17, v4

    move/from16 v19, v9

    move v4, v13

    move v6, v14

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    .end local v9    # "callbackResult":Z
    .end local v13    # "thumbCenterX":F
    .end local v14    # "thumbCenterY":F
    .local v4, "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    goto/16 :goto_413

    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .local v4, "dragToken":Landroid/os/IBinder;
    .restart local v9    # "callbackResult":Z
    .local p10, "thumbCenterX":F
    .local p11, "thumbCenterY":F
    :catchall_39d
    move-exception v0

    move v5, v2

    move-object/from16 v17, v4

    move/from16 v19, v9

    move-object/from16 v2, p4

    goto/16 :goto_40d

    .line 129
    .restart local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    :cond_3a7
    move v5, v2

    move-object/from16 v17, v4

    move/from16 v19, v9

    .line 130
    .end local v4    # "dragToken":Landroid/os/IBinder;
    .end local v9    # "callbackResult":Z
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_3ac
    :try_start_3ac
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requesting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b8
    .catchall {:try_start_3ac .. :try_end_3b8} :catchall_3fc

    move-object/from16 v2, p4

    :try_start_3ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c4
    .catchall {:try_start_3ba .. :try_end_3c4} :catchall_3f4

    .line 131
    nop

    .line 258
    if-eqz p6, :cond_3ca

    .line 259
    :try_start_3c7
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_3ca
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_3db

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3db

    .line 262
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_3db
    monitor-exit v10
    :try_end_3dc
    .catchall {:try_start_3c7 .. :try_end_3dc} :catchall_3ec

    .line 268
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 265
    .end local v12    # "callingWin":Lcom/android/server/wm/WindowState;
    :catchall_3ec
    move-exception v0

    move-object/from16 v1, p6

    move/from16 v4, p10

    move/from16 v6, p11

    goto :goto_42c

    .line 258
    :catchall_3f4
    move-exception v0

    move-object/from16 v1, p6

    move/from16 v4, p10

    move/from16 v6, p11

    goto :goto_413

    :catchall_3fc
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v1, p6

    move/from16 v4, p10

    move/from16 v6, p11

    goto :goto_413

    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .restart local v4    # "dragToken":Landroid/os/IBinder;
    .restart local v9    # "callbackResult":Z
    :catchall_406
    move-exception v0

    move v5, v2

    move-object/from16 v17, v4

    move-object v2, v6

    move/from16 v19, v9

    :goto_40d
    move-object/from16 v1, p6

    move/from16 v4, p10

    move/from16 v6, p11

    .end local v9    # "callbackResult":Z
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .end local p10    # "thumbCenterX":F
    .end local p11    # "thumbCenterY":F
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .local v4, "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_413
    if-eqz v1, :cond_418

    .line 259
    :try_start_415
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 261
    :cond_418
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_429

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_429

    .line 262
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 264
    :cond_429
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "session":Landroid/view/SurfaceSession;
    .end local p2    # "callerPid":I
    .end local p3    # "callerUid":I
    .end local p4    # "window":Landroid/view/IWindow;
    .end local p5    # "flags":I
    .end local p7    # "touchSource":I
    .end local p8    # "touchX":F
    .end local p9    # "touchY":F
    .end local p12    # "data":Landroid/content/ClipData;
    throw v0

    .line 265
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "session":Landroid/view/SurfaceSession;
    .restart local p2    # "callerPid":I
    .restart local p3    # "callerUid":I
    .restart local p4    # "window":Landroid/view/IWindow;
    .restart local p5    # "flags":I
    .restart local p7    # "touchSource":I
    .restart local p8    # "touchX":F
    .restart local p9    # "touchY":F
    .restart local p12    # "data":Landroid/content/ClipData;
    :catchall_42b
    move-exception v0

    :goto_42c
    monitor-exit v10
    :try_end_42d
    .catchall {:try_start_415 .. :try_end_42d} :catchall_42b

    :try_start_42d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v4    # "thumbCenterX":F
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "session":Landroid/view/SurfaceSession;
    .end local p2    # "callerPid":I
    .end local p3    # "callerUid":I
    .end local p4    # "window":Landroid/view/IWindow;
    .end local p5    # "flags":I
    .end local p7    # "touchSource":I
    .end local p8    # "touchX":F
    .end local p9    # "touchY":F
    .end local p12    # "data":Landroid/content/ClipData;
    throw v0
    :try_end_431
    .catchall {:try_start_42d .. :try_end_431} :catchall_431

    .line 268
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v4    # "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "session":Landroid/view/SurfaceSession;
    .restart local p2    # "callerPid":I
    .restart local p3    # "callerUid":I
    .restart local p4    # "window":Landroid/view/IWindow;
    .restart local p5    # "flags":I
    .restart local p7    # "touchSource":I
    .restart local p8    # "touchX":F
    .restart local p9    # "touchY":F
    .restart local p12    # "data":Landroid/content/ClipData;
    :catchall_431
    move-exception v0

    goto :goto_440

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v6    # "thumbCenterY":F
    .end local v17    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .local v4, "dragToken":Landroid/os/IBinder;
    .restart local v9    # "callbackResult":Z
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local p10    # "thumbCenterX":F
    .restart local p11    # "thumbCenterY":F
    :catchall_433
    move-exception v0

    move v5, v2

    move-object/from16 v17, v4

    move-object v2, v6

    move/from16 v19, v9

    move-object/from16 v1, p6

    move/from16 v4, p10

    move/from16 v6, p11

    .end local v9    # "callbackResult":Z
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .end local p10    # "thumbCenterX":F
    .end local p11    # "thumbCenterY":F
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .local v4, "thumbCenterX":F
    .restart local v6    # "thumbCenterY":F
    .restart local v17    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_440
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 269
    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 273
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 274
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_26

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 280
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_d2

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 281
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_54

    .line 284
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_cc

    .line 308
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 285
    return-void

    .line 288
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_ad

    .line 297
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 299
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_93

    .line 300
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_54 .. :try_end_84} :catchall_cc

    .line 308
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 301
    return-void

    .line 304
    :cond_93
    :try_start_93
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 305
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 306
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_cc

    :try_start_9d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_d2

    .line 308
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 309
    nop

    .line 310
    return-void

    .line 290
    :cond_ad
    :try_start_ad
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2

    .line 306
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_cc
    move-exception v2

    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_ad .. :try_end_ce} :catchall_cc

    :try_start_ce
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d2

    .line 308
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_d2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 309
    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 101
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 401
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 402
    return-void
.end method
