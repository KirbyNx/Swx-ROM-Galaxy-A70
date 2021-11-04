.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskTapPointerEventListener"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mHandleTapOutsideTaskSent:Z

.field private mNeedsToRestoreDefaultIcon:Z

.field private mPointerIconType:I

.field private final mPointerTouchExcludeRegion:Landroid/graphics/Region;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 71
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    .line 75
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mHandleTapOutsideTaskSent:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 86
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 87
    return-void
.end method

.method private convertDesktopMouseIcon(I)I
    .registers 3
    .param p1, "iconType"    # I

    .line 334
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_14

    packed-switch p1, :pswitch_data_18

    .line 346
    return p1

    .line 342
    :pswitch_8
    const/16 v0, 0x278c

    return v0

    .line 344
    :pswitch_b
    const/16 v0, 0x278d

    return v0

    .line 340
    :pswitch_e
    const/16 v0, 0x278b

    return v0

    .line 338
    :pswitch_11
    const/16 v0, 0x278a

    return v0

    .line 336
    :cond_14
    const/16 v0, 0x2789

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x3f6
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private isDexMode()Z
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 222
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_18

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_18

    .line 224
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 222
    :goto_19
    return v0
.end method

.method private restorePointerIcon(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 90
    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 91
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    :cond_1d
    return-void
.end method

.method private setDefaultPointerIconType(I)V
    .registers 3
    .param p1, "iconType"    # I

    .line 324
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2789

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_d

    goto :goto_10

    .line 328
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    .line 331
    :goto_10
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isStylusInput":Z
    const/4 v1, 0x0

    .line 104
    .local v1, "isMouseInput":Z
    const/4 v2, 0x0

    .line 105
    .local v2, "isPointerInput":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 107
    .local v3, "touchExcludeRegion":Landroid/graphics/Region;
    const/16 v4, 0x4002

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 108
    const/16 v4, 0x2002

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    .line 110
    if-nez v1, :cond_15

    if-eqz v0, :cond_18

    .line 111
    :cond_15
    const/4 v2, 0x1

    .line 112
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    .line 116
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_16a

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3a

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3a

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2b

    goto/16 :goto_186

    .line 282
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 283
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 284
    .local v5, "y":I
    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    .line 286
    .end local v4    # "x":I
    .end local v5    # "y":I
    goto/16 :goto_186

    .line 148
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 149
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 153
    .restart local v5    # "y":I
    :try_start_44
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 154
    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    .line 155
    goto/16 :goto_186

    .line 157
    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v4, v5, v2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 161
    .local v6, "task":Lcom/android/server/wm/Task;
    const/4 v7, 0x1

    .line 163
    .local v7, "iconType":I
    const/4 v8, 0x1

    if-eqz v6, :cond_144

    .line 164
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v9

    if-nez v9, :cond_63

    goto/16 :goto_144

    .line 185
    :cond_63
    const/16 v9, 0x3f8

    const/16 v10, 0x3f9

    const/16 v11, 0x3f6

    if-eqz v6, :cond_c0

    .line 186
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 187
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c0

    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_c0

    .line 188
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-ge v4, v12, :cond_99

    .line 190
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-ge v5, v12, :cond_8e

    move v12, v10

    goto :goto_97

    .line 191
    :cond_8e
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-le v5, v12, :cond_96

    move v12, v9

    goto :goto_97

    .line 192
    :cond_96
    move v12, v11

    :goto_97
    move v7, v12

    goto :goto_c0

    .line 193
    :cond_99
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    if-le v4, v12, :cond_b2

    .line 195
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-ge v5, v12, :cond_a7

    move v12, v9

    goto :goto_b0

    .line 196
    :cond_a7
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-le v5, v12, :cond_af

    move v12, v10

    goto :goto_b0

    .line 197
    :cond_af
    move v12, v11

    :goto_b0
    move v7, v12

    goto :goto_c0

    .line 198
    :cond_b2
    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-lt v5, v12, :cond_be

    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-le v5, v12, :cond_c0

    .line 199
    :cond_be
    const/16 v7, 0x3f7

    .line 204
    :cond_c0
    :goto_c0
    nop

    .line 205
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_11b

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->isDexMode()Z

    move-result v12

    if-nez v12, :cond_11b

    .line 206
    if-eqz v0, :cond_e4

    .line 207
    if-ne v7, v11, :cond_d4

    .line 208
    const/16 v7, 0x4e26

    goto :goto_e4

    .line 209
    :cond_d4
    const/16 v11, 0x3f7

    if-ne v7, v11, :cond_db

    .line 210
    const/16 v7, 0x4e27

    goto :goto_e4

    .line 211
    :cond_db
    if-ne v7, v10, :cond_e0

    .line 212
    const/16 v7, 0x4e28

    goto :goto_e4

    .line 213
    :cond_e0
    if-ne v7, v9, :cond_e4

    .line 214
    const/16 v7, 0x4e29

    .line 217
    :cond_e4
    :goto_e4
    iget-object v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 218
    .local v9, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_ef

    .line 219
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    goto :goto_f0

    :cond_ef
    const/4 v10, 0x0

    .line 220
    .local v10, "focusedLp":Landroid/view/WindowManager$LayoutParams;
    :goto_f0
    if-eqz v10, :cond_11b

    .line 221
    iget-object v11, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v12, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;

    invoke-direct {v12, v4, v5}, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;-><init>(II)V

    invoke-virtual {v11, v12, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v11

    .line 225
    .local v11, "isInAirCommand":Z
    if-nez v11, :cond_119

    .line 226
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v12

    if-nez v12, :cond_119

    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x8b2

    if-eq v12, v13, :cond_119

    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x96b

    if-eq v12, v13, :cond_119

    iget-object v12, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 229
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_11b

    .line 230
    :cond_119
    const/16 v7, 0x3e8

    .line 236
    .end local v9    # "focusedWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "focusedLp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "isInAirCommand":Z
    :cond_11b
    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v7, :cond_143

    .line 262
    iput v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 263
    if-ne v7, v8, :cond_13a

    .line 265
    iget-object v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x37

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 266
    iget-object v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v9, v4, v5, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 267
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_143

    .line 269
    :cond_13a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v8, v9}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 277
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "iconType":I
    :cond_143
    :goto_143
    goto :goto_169

    .line 165
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "iconType":I
    :cond_144
    :goto_144
    iget-boolean v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-nez v9, :cond_14c

    iget v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v9, v8, :cond_15c

    .line 166
    :cond_14c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    .line 174
    const/16 v7, 0x3e8

    .line 175
    if-eqz v0, :cond_155

    .line 176
    const/16 v7, 0x4e21

    .line 179
    :cond_155
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 181
    :cond_15c
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_15e} :catch_15f

    .line 182
    goto :goto_186

    .line 273
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "iconType":I
    :catch_15f
    move-exception v6

    .line 276
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TaskTapPointerEventListener"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_169
    goto :goto_186

    .line 118
    :cond_16a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 119
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 121
    .restart local v5    # "y":I
    monitor-enter p0

    .line 131
    :try_start_175
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-nez v6, :cond_184

    .line 132
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v7, v4, v5, v2}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V

    .line 143
    :cond_184
    monitor-exit p0

    .line 145
    .end local v4    # "x":I
    .end local v5    # "y":I
    nop

    .line 297
    :goto_186
    return-void

    .line 143
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :catchall_187
    move-exception v6

    monitor-exit p0
    :try_end_189
    .catchall {:try_start_175 .. :try_end_189} :catchall_187

    throw v6
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    .line 302
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "newRegion"    # Landroid/graphics/Region;
    .param p2, "newPointerRegion"    # Landroid/graphics/Region;

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 309
    if-eqz p2, :cond_d

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 313
    :cond_d
    monitor-exit p0

    .line 314
    return-void

    .line 313
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
