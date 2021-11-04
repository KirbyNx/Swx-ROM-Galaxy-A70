.class public Lcom/android/server/wm/DisplayPolicyExt;
.super Ljava/lang/Object;
.source "DisplayPolicyExt.java"


# static fields
.field static final POP_OVER_DIM_AMOUNT:F = 0.5f

.field static final POP_OVER_DIM_DURATION:J = 0x96L

.field private static final SAMSUNG_PAY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spay"

.field private static final SAMSUNG_PAY_ID_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rajaampat"

.field private static final TAG:Ljava/lang/String; = "DisplayPolicyExt"

.field private static final TRANSPARENT_TRANSITION_DELAY_MS:I = 0x3e8

.field static sNeedDarkNavigationBar:I

.field static sNeedDarkStatusBar:I


# instance fields
.field final mContext:Landroid/content/Context;

.field mCoverController:Lcom/android/server/wm/CoverPolicyController;

.field private mDecorCaptionHeight:I

.field private mDexDecorCaptionHeight:I

.field final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

.field private mGameToolsWindow:Lcom/android/server/wm/WindowState;

.field private mLastPayHandlerFrame:Landroid/graphics/Rect;

.field private mLastPayHandlerVisible:Z

.field private mLastTransparentNavigationBarUptime:J

.field private mNavBarImeBtnAllRotationsAllowed:Z

.field private mNavigationMode:I

.field mPayHandlerWin:Lcom/android/server/wm/WindowState;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTmpFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "policy"    # Lcom/android/server/wm/DisplayPolicy;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 128
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 130
    iget-object v0, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_27

    .line 131
    new-instance v0, Lcom/android/server/wm/CoverPolicyController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/CoverPolicyController;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    .line 134
    :cond_27
    return-void
.end method

.method private canApplyAllUnrestricted(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "sysUiFl"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_35

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_35

    .line 214
    const/16 v0, 0x833

    if-eq p1, v0, :cond_33

    const/16 v0, 0x961

    if-eq p1, v0, :cond_33

    const/16 v0, 0x96c

    if-eq p1, v0, :cond_33

    const/16 v0, 0x96e

    if-eq p1, v0, :cond_33

    const/16 v0, 0x8b3

    if-eq p1, v0, :cond_33

    const/16 v0, 0x8b4

    if-eq p1, v0, :cond_33

    const/16 v0, 0xa28

    if-eq p1, v0, :cond_33

    const/16 v0, 0xa29

    if-eq p1, v0, :cond_33

    packed-switch p1, :pswitch_data_38

    packed-switch p1, :pswitch_data_42

    goto :goto_35

    .line 245
    :cond_33
    :pswitch_33
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x966
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x988
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private canApplyStableFullscreen(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "sysUiFl"    # I

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method private canApplyUnrestricted(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 195
    const/16 v0, 0x7d9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_20

    const/16 v0, 0x82f

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x8b2

    if-eq p1, v0, :cond_20

    const/16 v0, 0x8e8

    if-eq p1, v0, :cond_20

    const/16 v0, 0x965

    if-eq p1, v0, :cond_20

    const/16 v0, 0x96b

    if-eq p1, v0, :cond_20

    const/16 v0, 0x96f

    if-eq p1, v0, :cond_20

    .line 208
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1f
    return v1

    .line 202
    :cond_20
    return v1
.end method

.method private static isDarkSystemBarNeeded(I)Z
    .registers 2
    .param p0, "needDarkSystemBar"    # I

    .line 694
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static isGraySystemBarNeeded(I)Z
    .registers 2
    .param p0, "needDarkSystemBar"    # I

    .line 698
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-eq p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isNeedSemiTransparentSystemBarAppearance(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getDisableTransientBarsWindow$1(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 734
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDisableTransientBars()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 264
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x833

    if-eq v0, v1, :cond_23

    const/16 v1, 0x97e

    if-eq v0, v1, :cond_16

    const/16 v1, 0x97f

    if-eq v0, v1, :cond_13

    goto :goto_48

    .line 286
    :cond_13
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    goto :goto_48

    .line 280
    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 283
    goto :goto_48

    .line 266
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_48

    .line 268
    iput-object p1, v0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    goto :goto_48

    .line 272
    :cond_32
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 273
    const-string v1, "com.samsung.android.spay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 274
    const-string v1, "com.samsung.android.rajaampat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 275
    :cond_46
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 292
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method applyCoverForceHidePolicy(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 470
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_12

    .line 471
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CoverPolicyController;->applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 472
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    .line 452
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->applyForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 453
    return v1

    .line 456
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->applyCoverForceHidePolicy(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 457
    return v1

    .line 460
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public applyFrameInLayoutWindowLw(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 139
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 140
    return-void

    .line 143
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 145
    .local v1, "fl":I
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 147
    .local v2, "sysUiFl":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 159
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 160
    .local v3, "layoutInScreen":Z
    :goto_1e
    if-nez v3, :cond_24

    and-int/lit16 v4, v2, 0x600

    if-eqz v4, :cond_66

    .line 163
    :cond_24
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayPolicyExt;->canApplyUnrestricted(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 167
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_66

    .line 169
    :cond_37
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/DisplayPolicyExt;->canApplyAllUnrestricted(II)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 179
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_66

    .line 182
    :cond_4f
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/DisplayPolicyExt;->canApplyStableFullscreen(II)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 186
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 187
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 188
    iget-object v4, p5, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 191
    :cond_66
    :goto_66
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 366
    const/16 v0, 0x146a

    .line 368
    .local v0, "FORCE_USER_TIMEOUT":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->getWakingUpReason()I

    move-result v1

    .line 369
    .local v1, "wakingUpReason":I
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_25

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_25

    .line 372
    const-wide/16 v2, 0x146a

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 373
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 376
    .end local v0    # "FORCE_USER_TIMEOUT":I
    .end local v1    # "wakingUpReason":I
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_32

    .line 377
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_32

    .line 378
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 381
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_3f

    .line 382
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CoverPolicyController;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 385
    :cond_3f
    return-void
.end method

.method beginPostLayoutPolicyLw()V
    .registers 2

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_12

    .line 355
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicyController;->beginPostLayoutPolicyLw()V

    .line 358
    :cond_12
    return-void
.end method

.method canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 562
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 564
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 565
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 567
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_20

    .line 568
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result v0

    if-nez v0, :cond_44

    .line 573
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 575
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_44

    :cond_42
    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    .line 562
    :goto_45
    return v0
.end method

.method canBeStatusColorWinLw(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 580
    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 582
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 583
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 585
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x989

    if-eq v0, v1, :cond_38

    .line 590
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_36

    .line 591
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 580
    :goto_39
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicyExtension"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2b

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v0, "mFakeFocusedWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 444
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_32

    .line 445
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CoverPolicyController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 447
    :cond_32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    return-void
.end method

.method public finishPostLayoutPolicyLw(I)I
    .registers 6
    .param p1, "changes"    # I

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_11

    .line 391
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CoverPolicyController;->finishPostLayoutPolicyLw(I)I

    move-result v0

    or-int/2addr p1, v0

    .line 393
    :cond_11
    nop

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 398
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_31

    .line 399
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    :cond_31
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    if-ne v0, v1, :cond_41

    if-eqz v0, :cond_82

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 404
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 405
    :cond_41
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 408
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    .line 407
    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 409
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_82

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySamsungPayInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPolicyExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "visible":Z
    :cond_82
    return p1
.end method

.method getBlurWallpaperBackgroundAppearance(Lcom/android/server/wm/ActivityRecord;ZZ)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "statusBarAppearance"    # Z
    .param p3, "navigationBarAppearance"    # Z

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "appearance":I
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isNeedSemiTransparentSystemBarAppearance(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 655
    if-eqz p2, :cond_b

    .line 656
    or-int/lit8 v0, v0, 0x40

    .line 658
    :cond_b
    if-eqz p3, :cond_33

    .line 659
    or-int/lit16 v0, v0, 0x80

    goto :goto_33

    .line 662
    :cond_10
    if-eqz p2, :cond_27

    .line 663
    sget v1, Lcom/android/server/wm/DisplayPolicyExt;->sNeedDarkStatusBar:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicyExt;->isGraySystemBarNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 664
    or-int/lit8 v0, v0, 0x20

    goto :goto_27

    .line 665
    :cond_1d
    sget v1, Lcom/android/server/wm/DisplayPolicyExt;->sNeedDarkStatusBar:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicyExt;->isDarkSystemBarNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 666
    or-int/lit8 v0, v0, 0x8

    .line 669
    :cond_27
    :goto_27
    if-eqz p3, :cond_33

    .line 670
    sget v1, Lcom/android/server/wm/DisplayPolicyExt;->sNeedDarkNavigationBar:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicyExt;->isDarkSystemBarNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 671
    or-int/lit8 v0, v0, 0x10

    .line 675
    :cond_33
    :goto_33
    return v0
.end method

.method public getCoverController()Lcom/android/server/wm/CoverPolicyController;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    return-object v0
.end method

.method getDecorCaptionHeight()I
    .registers 2

    .line 620
    iget v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDecorCaptionHeight:I

    return v0
.end method

.method getDexDecorCaptionHeight()I
    .registers 2

    .line 624
    iget v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDexDecorCaptionHeight:I

    return v0
.end method

.method getDisableTransientBarsWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicyExt$Rl5ob9HgdKVKGxcf5R994hBNqvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayPolicyExt$Rl5ob9HgdKVKGxcf5R994hBNqvg;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getFakeFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getIncorrectRestoreTypes(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)I
    .registers 10
    .param p1, "controlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "requestedState"    # Landroid/view/InsetsState;

    .line 705
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 706
    return v1

    .line 709
    :cond_8
    const/4 v0, 0x0

    .line 711
    .local v0, "incorrectRestoreTypes":I
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 712
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v3, v4

    .line 713
    .local v3, "sysUiVis":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_21

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v4, v6, :cond_21

    move v4, v5

    goto :goto_22

    :cond_21
    move v4, v1

    .line 716
    .local v4, "appWindow":Z
    :goto_22
    invoke-virtual {p2, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    if-nez v5, :cond_31

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_31

    .line 718
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v0, v5

    .line 721
    :cond_31
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-nez v1, :cond_4e

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_45

    .line 722
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_45

    if-nez v4, :cond_49

    :cond_45
    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_4e

    .line 724
    :cond_49
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    or-int/2addr v0, v1

    .line 727
    :cond_4e
    return v0
.end method

.method isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 598
    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method isGameToolsOverlayVisibleLw()Z
    .registers 2

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isGameToolsVisibleLw()Z
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isNavBarImeBtnAllowed(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isNavBarImeBtnEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 556
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 554
    :goto_21
    return v0
.end method

.method public isNavigationGestureMode()Z
    .registers 2

    .line 550
    iget v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$setNeedDarkSystemBar$0$DisplayPolicyExt(II)V
    .registers 5
    .param p1, "needDarkStatusBar"    # I
    .param p2, "needDarkNavigationBar"    # I

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 645
    sput p1, Lcom/android/server/wm/DisplayPolicyExt;->sNeedDarkStatusBar:I

    .line 646
    sput p2, Lcom/android/server/wm/DisplayPolicyExt;->sNeedDarkNavigationBar:I

    .line 647
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 648
    return-void

    .line 647
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onConfigurationChanged()V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 483
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 486
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v1, :cond_1d

    .line 487
    const v1, 0x105034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDecorCaptionHeight:I

    .line 495
    :cond_1d
    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_d

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    iput-object v1, v0, Lcom/android/server/wm/CoverPolicyController;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 303
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_13

    .line 304
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 308
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_23

    .line 309
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 312
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_29

    .line 313
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 317
    :cond_29
    return-void
.end method

.method selectAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 321
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    if-eqz v0, :cond_77

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v2, -0x1

    if-ne v0, p1, :cond_40

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    move v0, v3

    goto :goto_23

    :cond_22
    move v0, v1

    .line 324
    .local v0, "isSViewCover":Z
    :goto_23
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    invoke-virtual {v4}, Lcom/android/server/wm/CoverPolicyController;->isCoverSupportedAndClosed()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    iget-object v4, v4, Lcom/android/server/wm/CoverPolicyController;->mHideSViewCoverWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_32

    goto :goto_33

    :cond_32
    move v3, v1

    .line 326
    .local v3, "needShowSViewCover":Z
    :goto_33
    if-nez v0, :cond_3f

    if-eqz v3, :cond_77

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    .line 327
    invoke-virtual {v4}, Lcom/android/server/wm/CoverPolicyController;->shouldHideStatusBarForCover()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 328
    :cond_3f
    return v2

    .line 330
    .end local v0    # "isSViewCover":Z
    .end local v3    # "needShowSViewCover":Z
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p1, :cond_77

    .line 331
    invoke-static {}, Lcom/android/server/wm/CoverPolicyController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 332
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_77

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_60

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xf

    if-eq v3, v4, :cond_60

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_77

    :cond_60
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    .line 336
    invoke-virtual {v3}, Lcom/android/server/wm/CoverPolicyController;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    iget-boolean v3, v3, Lcom/android/server/wm/CoverPolicyController;->mLastClearCoverState:Z

    if-nez v3, :cond_77

    .line 338
    :cond_6e
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/CoverPolicyController;->mLastClearCoverState:Z

    .line 339
    return v2

    .line 345
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_77
    return v1
.end method

.method public setNeedDarkSystemBar(II)V
    .registers 5
    .param p1, "needDarkStatusBar"    # I
    .param p2, "needDarkNavigationBar"    # I

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicyExt$rwkQ2uG2lhvEhiqRQf94j2zdvz8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayPolicyExt$rwkQ2uG2lhvEhiqRQf94j2zdvz8;-><init>(Lcom/android/server/wm/DisplayPolicyExt;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-void
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors(IIII)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "initWidth"    # I
    .param p4, "initHeight"    # I

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 503
    .local v0, "res":Landroid/content/res/Resources;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_16

    const v1, 0x11100ae

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    .line 506
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_2e

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicyExt;->setDefaultDisplaySizeDensity(IIII)V

    .line 512
    :cond_2e
    return-void
.end method

.method updateForceLightNavigationBarAppearance(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 530
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 531
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    goto :goto_26

    .line 534
    :cond_14
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    goto :goto_26

    .line 538
    :cond_23
    const/16 v0, 0x10

    return v0

    .line 541
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method updateLastTransparentNavigationBarUptime(I)V
    .registers 4
    .param p1, "appearance"    # I

    .line 524
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_a

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastTransparentNavigationBarUptime:J

    .line 527
    :cond_a
    return-void
.end method

.method wasRecentlyTransparentNavigationBar()Z
    .registers 5

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastTransparentNavigationBarUptime:J

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
