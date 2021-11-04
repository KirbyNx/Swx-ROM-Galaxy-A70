.class Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "controller"    # Lcom/android/server/wm/DragDropController;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 56
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 57
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 61
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 63
    .local v1, "handled":Z
    :try_start_3
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_b6

    .line 64
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_b6

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_15

    goto/16 :goto_b6

    .line 68
    :cond_15
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 69
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 70
    .local v4, "newX":F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 71
    .local v5, "newY":F
    nop

    .line 72
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2d

    move v6, v8

    goto :goto_2e

    :cond_2d
    move v6, v7

    .line 74
    .local v6, "isStylusButtonDown":Z
    :goto_2e
    iget-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v9, :cond_36

    .line 77
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 78
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 81
    :cond_36
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_bc
    .catchall {:try_start_3 .. :try_end_3a} :catchall_ba

    if-eqz v9, :cond_a9

    const-string v10, ","

    if-eq v9, v8, :cond_7c

    if-eq v9, v3, :cond_55

    const/4 v3, 0x3

    if-eq v9, v3, :cond_49

    .line 119
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 105
    return-void

    .line 101
    :cond_49
    :try_start_49
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_52

    const-string v3, "Drag cancelled!"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_52
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 103
    goto :goto_9d

    .line 86
    :cond_55
    iget-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v3, :cond_9d

    if-nez v6, :cond_9d

    .line 87
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_79

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Button no longer pressed; dropping at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_79
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_9d

    .line 95
    :cond_7c
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_9a

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got UP on move channel; dropping at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_9a
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 99
    nop

    .line 113
    :cond_9d
    :goto_9d
    iget-object v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-nez v9, :cond_a4

    move v7, v8

    :cond_a4
    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V

    .line 115
    const/4 v1, 0x1

    .line 119
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "newX":F
    .end local v5    # "newY":F
    .end local v6    # "isStylusButtonDown":Z
    goto :goto_c3

    .line 83
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v4    # "newX":F
    .restart local v5    # "newY":F
    .restart local v6    # "isStylusButtonDown":Z
    :cond_a9
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_b2

    const-string v3, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_b2} :catch_bc
    .catchall {:try_start_49 .. :try_end_b2} :catchall_ba

    .line 119
    :cond_b2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 84
    return-void

    .line 119
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "newX":F
    .end local v5    # "newY":F
    .end local v6    # "isStylusButtonDown":Z
    :cond_b6
    :goto_b6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 66
    return-void

    .line 119
    :catchall_ba
    move-exception v0

    goto :goto_c8

    .line 116
    :catch_bc
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    :try_start_bd
    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_ba

    .line 119
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :goto_c8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 120
    throw v0
.end method
