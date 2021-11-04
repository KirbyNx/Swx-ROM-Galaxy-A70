.class public Lcom/android/server/wm/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/wm/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mDisplayId:I

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/wm/WindowState;

.field private final mWindowType:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIIII)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "transientFlag"    # I
    .param p4, "unhideFlag"    # I
    .param p5, "translucentFlag"    # I
    .param p6, "statusBarManagerId"    # I
    .param p7, "windowType"    # I
    .param p8, "translucentWmFlag"    # I
    .param p9, "transparentFlag"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/android/server/wm/BarController;->mDisplayId:I

    .line 85
    iput p3, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    .line 86
    iput p4, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    .line 87
    iput p5, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    .line 88
    iput p6, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    .line 89
    iput p7, p0, Lcom/android/server/wm/BarController;->mWindowType:I

    .line 90
    iput p8, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    .line 91
    iput p9, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    .line 92
    new-instance v0, Lcom/android/server/wm/BarController$BarHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BarController$BarHandler;-><init>(Lcom/android/server/wm/BarController;)V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BarController;

    .line 43
    iget v0, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BarController;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method private computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "change"    # Z

    .line 230
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 231
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 232
    .local v0, "vis":Z
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    .line 233
    .local v1, "anim":Z
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    if-nez p4, :cond_19

    if-nez v0, :cond_19

    .line 234
    return v3

    .line 235
    :cond_19
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_21

    if-eqz v0, :cond_21

    .line 236
    return v5

    .line 237
    :cond_21
    if-eqz p4, :cond_2d

    .line 238
    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    if-eqz v1, :cond_2c

    .line 239
    return v4

    .line 241
    :cond_2c
    return v5

    .line 245
    .end local v0    # "vis":Z
    .end local v1    # "anim":Z
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    return v0
.end method

.method private getContentFrame(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 174
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v1, p0, Lcom/android/server/wm/BarController;->mWindowType:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationBarContentFrame(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 175
    .local v0, "rotatedContentFrame":Landroid/graphics/Rect;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    :goto_e
    return-object v1
.end method

.method private setTransientBarState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_15

    .line 335
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    if-ne p1, v1, :cond_13

    .line 336
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 338
    :cond_13
    iput p1, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    .line 341
    :cond_15
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 353
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 354
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 355
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 356
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 357
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    if-eq p1, v0, :cond_16

    .line 250
    iput p1, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BarController$1;-><init>(Lcom/android/server/wm/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method adjustSystemUiVisibilityLw(II)V
    .registers 5
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_17

    .line 142
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_28

    .line 144
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    and-int v1, p1, v0

    if-eqz v1, :cond_28

    and-int/2addr v0, p2

    if-nez v0, :cond_28

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 148
    :cond_28
    :goto_28
    return-void
.end method

.method applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3a

    .line 152
    if-eqz p1, :cond_2c

    .line 153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 154
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 155
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    goto :goto_18

    .line 157
    :cond_14
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 159
    :goto_18
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 161
    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    goto :goto_2b

    .line 163
    :cond_27
    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 165
    .end local v0    # "fl":I
    :goto_2b
    goto :goto_3a

    .line 166
    :cond_2c
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v1, v0

    and-int/2addr v1, p2

    and-int/2addr v0, p3

    or-int p2, v1, v0

    .line 167
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int v1, v0

    and-int/2addr v1, p2

    and-int/2addr v0, p3

    or-int p2, v1, v0

    .line 170
    :cond_3a
    :goto_3a
    return p2
.end method

.method checkHiddenLw()Z
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 269
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    .line 271
    :cond_1f
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 273
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 274
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 276
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 278
    :cond_39
    return v2

    .line 281
    :cond_3a
    return v1
.end method

.method checkShowTransientBarLw()Z
    .registers 4

    .line 285
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 287
    return v1

    .line 288
    :cond_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 290
    return v1

    .line 291
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_10

    .line 293
    return v1

    .line 294
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 296
    return v1

    .line 298
    :cond_17
    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4d

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mState"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 371
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 373
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/wm/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 376
    :cond_4d
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 361
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 362
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 363
    iget v2, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 365
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 346
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 348
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 349
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 179
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/BarController;->getContentFrame(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method isTransientShowRequested()Z
    .registers 3

    .line 131
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method isTransientShowing()Z
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 186
    if-nez p1, :cond_4

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/BarController;->getContentFrame(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->letterboxNotIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method setBarShowingLw(Z)Z
    .registers 11
    .param p1, "show"    # Z

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 194
    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    iget v2, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 195
    iput-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 196
    return v1

    .line 198
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    .line 199
    .local v2, "wasVis":Z
    iget-object v3, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    .line 200
    .local v3, "wasAnim":Z
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->skipAnimation()Z

    move-result v4

    .line 201
    .local v4, "skipAnim":Z
    if-eqz p1, :cond_33

    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_2d

    if-nez v4, :cond_2d

    move v6, v0

    goto :goto_2e

    :cond_2d
    move v6, v1

    :goto_2e
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-result v5

    goto :goto_42

    .line 202
    :cond_33
    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_3d

    if-nez v4, :cond_3d

    move v6, v0

    goto :goto_3e

    :cond_3d
    move v6, v1

    :goto_3e
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-result v5

    :goto_42
    nop

    .line 203
    .local v5, "change":Z
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 204
    iget-object v6, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v3, v6, v5}, Lcom/android/server/wm/BarController;->computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I

    move-result v6

    .line 205
    .local v6, "state":I
    invoke-direct {p0, v6}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    move-result v7

    .line 207
    .local v7, "stateChanged":Z
    if-eqz v5, :cond_5e

    iget-object v8, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    if-eqz v8, :cond_5e

    .line 208
    iget-object v8, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 211
    :cond_5e
    if-nez v5, :cond_62

    if-eqz v7, :cond_63

    :cond_62
    move v1, v0

    :cond_63
    return v1
.end method

.method setContentFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    .param p2, "invokeWithState"    # Z

    .line 216
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 217
    if-eqz p2, :cond_16

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 220
    iget v1, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 219
    :goto_f
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    :cond_16
    return-void
.end method

.method setShowTransparent(Z)V
    .registers 3
    .param p1, "transparent"    # Z

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_b

    .line 114
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    .line 115
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 118
    :cond_b
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 96
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 98
    return-void

    .line 100
    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    .line 101
    return-void
.end method

.method showTransient()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 124
    :cond_8
    return-void
.end method

.method protected skipAnimation()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method updateVisibilityLw(ZII)I
    .registers 6
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    return p3

    .line 304
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 305
    :cond_12
    if-eqz p1, :cond_22

    .line 306
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 307
    and-int/2addr v0, p2

    if-nez v0, :cond_1d

    .line 308
    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 310
    :cond_1d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    goto :goto_25

    .line 312
    :cond_22
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 315
    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_35

    .line 316
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 317
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_35

    .line 318
    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 319
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 322
    :cond_35
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eqz v0, :cond_3e

    .line 323
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 324
    and-int/lit8 p3, p3, -0x2

    .line 326
    :cond_3e
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    and-int v1, p3, v0

    if-nez v1, :cond_4e

    and-int/2addr v0, p2

    if-nez v0, :cond_4e

    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_54

    .line 328
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 330
    :cond_54
    return p3
.end method

.method wasRecentlyTranslucent()Z
    .registers 5

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
