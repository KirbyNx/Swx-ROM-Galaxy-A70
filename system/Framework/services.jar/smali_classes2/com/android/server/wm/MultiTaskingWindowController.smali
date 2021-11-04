.class public Lcom/android/server/wm/MultiTaskingWindowController;
.super Ljava/lang/Object;
.source "MultiTaskingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingWindowController$H;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RELAUNCHED_TIMEOUT_DURATION:I = 0x7d0

.field static final NO_ANIMATION:Landroid/view/animation/Animation;

.field private static final TAG:Ljava/lang/String; = "MultiTaskingWindowController"


# instance fields
.field private mDeferFocusChanges:Z

.field private final mDividerTouchableRegion:Landroid/graphics/Region;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    sput-object v0, Lcom/android/server/wm/MultiTaskingWindowController;->NO_ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/wm/MultiTaskingWindowController$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingWindowController$H;-><init>(Lcom/android/server/wm/MultiTaskingWindowController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    .line 82
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDividerTouchableRegion:Landroid/graphics/Region;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiTaskingWindowController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingWindowController;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/MultiTaskingWindowController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingWindowController;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private hasFreeformOrSplitScreenStack(Lcom/android/server/wm/DisplayContent;)Z
    .registers 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 183
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 184
    return v0

    .line 186
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    .line 187
    .local v1, "hasSplitScreenStack":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    move v2, v3

    goto :goto_1a

    :cond_19
    move v2, v0

    .line 188
    .local v2, "hasPinnedStack":Z
    :goto_1a
    const/4 v4, 0x0

    .line 189
    .local v4, "hasFreeformStack":Z
    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/DisplayContent;->getStacks(II)Ljava/util/List;

    move-result-object v5

    .line 191
    .local v5, "stacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityStack;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 192
    .local v6, "size":I
    if-lez v6, :cond_3f

    .line 193
    if-eqz v2, :cond_2e

    if-le v6, v3, :cond_2e

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_32

    :cond_2e
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_32
    check-cast v7, Lcom/android/server/wm/ActivityStack;

    .line 194
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3d

    move v8, v3

    goto :goto_3e

    :cond_3d
    move v8, v0

    :goto_3e
    move v4, v8

    .line 196
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3f
    if-nez v4, :cond_43

    if-eqz v1, :cond_44

    :cond_43
    move v0, v3

    :cond_44
    return v0
.end method

.method private static isTaskOpenTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 103
    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

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
.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 383
    const-string v0, "[MultiTaskingWindowController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDividerTouchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDividerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SplitWindowController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method isDeferNavigationBarGestureFocusChanges(Lcom/android/server/wm/WindowState;III)Z
    .registers 13
    .param p1, "touchedWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "maskedAction"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 214
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 215
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_81

    iget-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_81

    .line 216
    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingWindowController;->hasFreeformOrSplitScreenStack(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_81

    .line 221
    :cond_18
    if-nez p2, :cond_70

    .line 222
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v4

    .line 223
    .local v4, "excludedRegion":Landroid/graphics/Region;
    invoke-virtual {v1, v4, v0}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 224
    nop

    .line 225
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 226
    .local v0, "insetStateController":Lcom/android/server/wm/InsetsStateController;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 228
    .local v5, "leftEdge":Landroid/graphics/Rect;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v6

    .line 229
    invoke-virtual {v6}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    .line 231
    .local v6, "rightEdge":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4d

    invoke-virtual {v4, p3, p4}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 232
    return v2

    .line 234
    :cond_4d
    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 235
    invoke-virtual {v5, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 236
    iput-boolean v3, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    .line 237
    return v3

    .line 239
    :cond_5e
    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6f

    .line 240
    invoke-virtual {v6, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 241
    iput-boolean v3, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    .line 242
    return v3

    .line 244
    .end local v0    # "insetStateController":Lcom/android/server/wm/InsetsStateController;
    .end local v4    # "excludedRegion":Landroid/graphics/Region;
    .end local v5    # "leftEdge":Landroid/graphics/Rect;
    .end local v6    # "rightEdge":Landroid/graphics/Rect;
    :cond_6f
    goto :goto_80

    :cond_70
    if-ne p2, v3, :cond_7a

    .line 245
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    if-eqz v0, :cond_79

    .line 246
    iput-boolean v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    goto :goto_80

    .line 248
    :cond_79
    return v3

    .line 250
    :cond_7a
    const/4 v0, 0x3

    if-ne p2, v0, :cond_80

    .line 251
    iput-boolean v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    .line 252
    return v3

    .line 254
    :cond_80
    :goto_80
    return v2

    .line 217
    :cond_81
    :goto_81
    iput-boolean v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDeferFocusChanges:Z

    .line 218
    if-eqz p2, :cond_86

    move v2, v3

    :cond_86
    return v2
.end method

.method isFullscreenNavigationBarGestureEnabled()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isFullscreenNavigationBarGestureEnabled()Z

    move-result v0

    return v0
.end method

.method loadAnimationLocked(Lcom/android/server/wm/WindowContainer;Landroid/view/WindowManager$LayoutParams;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/AppTransition;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 25
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "transit"    # I
    .param p4, "enter"    # Z
    .param p5, "freeform"    # Z
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "appTransition"    # Lcom/android/server/wm/AppTransition;
    .param p9, "defaultAnimation"    # Landroid/view/animation/Animation;

    .line 111
    move-object v0, p0

    move/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v10, 0x0

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1f

    .line 112
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v10

    :goto_1f
    move-object v11, v1

    .line 113
    .local v11, "task":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_b2

    .line 114
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v12

    .line 115
    .local v12, "isDexMode":Z
    const/4 v1, 0x0

    .line 117
    .local v1, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz v9, :cond_4b

    const/16 v2, 0xe

    move/from16 v13, p3

    if-ne v13, v2, :cond_4d

    .line 119
    const v2, 0x10a00c4

    .line 120
    .local v2, "resId":I
    const v3, 0x10a00c4

    invoke-static {v3}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 121
    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    move-object v14, v1

    goto :goto_4e

    .line 117
    .end local v2    # "resId":I
    :cond_4b
    move/from16 v13, p3

    .line 130
    :cond_4d
    move-object v14, v1

    .end local v1    # "animation":Landroid/view/animation/Animation;
    .local v14, "animation":Landroid/view/animation/Animation;
    :goto_4e
    if-nez v14, :cond_67

    if-eqz p5, :cond_67

    .line 131
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    move-object v2, v11

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/FreeformWindowController;->loadAnimationLocked(Lcom/android/server/wm/Task;Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Animation;

    move-result-object v14

    .line 135
    :cond_67
    sget-object v1, Lcom/android/server/wm/MultiTaskingWindowController;->NO_ANIMATION:Landroid/view/animation/Animation;

    if-ne v14, v1, :cond_6c

    .line 137
    return-object v10

    .line 138
    :cond_6c
    if-eqz v14, :cond_b4

    .line 139
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_b1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAnimation: anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dexMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    .line 144
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "MultiTaskingWindowController"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_b1
    return-object v14

    .line 113
    .end local v12    # "isDexMode":Z
    .end local v14    # "animation":Landroid/view/animation/Animation;
    :cond_b2
    move/from16 v13, p3

    .line 155
    :cond_b4
    return-object p9
.end method

.method public notifyDexSnappingCallback(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "otherBounds"    # Landroid/graphics/Rect;

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDexWindowController:Lcom/android/server/wm/DexWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DexWindowController;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    .line 294
    return-void
.end method

.method notifySecureWindowAddedLocked(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 261
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 262
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2a

    if-nez v1, :cond_d

    goto :goto_2a

    .line 265
    :cond_d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_WINDOW_POLICY:Z

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 266
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 267
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    .line 266
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/server/wm/MultiTaskingWindowController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 268
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MultiTaskingWindowController$H;->sendMessage(Landroid/os/Message;)Z

    .line 275
    .end local v2    # "msg":Landroid/os/Message;
    :cond_29
    return-void

    .line 263
    :cond_2a
    :goto_2a
    return-void
.end method

.method notifySecureWindowRemovedLocked(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 279
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 280
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2b

    if-nez v1, :cond_d

    goto :goto_2b

    .line 283
    :cond_d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_WINDOW_POLICY:Z

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    const/4 v3, 0x1

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v5, 0x0

    .line 285
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/MultiTaskingWindowController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 286
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MultiTaskingWindowController$H;->sendMessage(Landroid/os/Message;)Z

    .line 288
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2a
    return-void

    .line 281
    :cond_2b
    :goto_2b
    return-void
.end method

.method onActivityRelaunchFinishedLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MultiTaskingWindowController$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MultiTaskingWindowController$H;->removeMessages(ILjava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityRelaunchReportedLocked: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTaskingWindowController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_25
    return-void
.end method

.method onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 95
    return-void
.end method

.method onDisplayRemovedLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->onDisplayRemovedLocked(I)V

    .line 99
    return-void
.end method

.method setDividerTouchableRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "dividerTouchableRegion"    # Landroid/graphics/Region;

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mDividerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 379
    return-void
.end method

.method startRelaunchingIfPossibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 164
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 165
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRelaunchingIfPossibleLocked: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingWindowController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->startRelaunching(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/MultiTaskingWindowController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 169
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/MultiTaskingWindowController$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    .end local v1    # "msg":Landroid/os/Message;
    :cond_46
    return-void

    .line 162
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_47
    :goto_47
    return-void
.end method
