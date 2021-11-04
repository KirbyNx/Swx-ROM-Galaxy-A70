.class public Lcom/android/server/wm/MultiSplitWindowController;
.super Ljava/lang/Object;
.source "MultiSplitWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiSplitWindowController$H;
    }
.end annotation


# static fields
.field private static final MUTLI_SPLIT_ANIMATION_TIMEOUT_DURATION:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "MultiSplitWindowController"


# instance fields
.field private mDividerSize:I

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mH:Lcom/android/server/wm/MultiSplitWindowController$H;

.field private mSplitAnimationType:I

.field private mWaitingWindowingModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    .line 57
    iput v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    .line 60
    new-instance v0, Lcom/android/server/wm/MultiSplitWindowController$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiSplitWindowController$H;-><init>(Lcom/android/server/wm/MultiSplitWindowController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mH:Lcom/android/server/wm/MultiSplitWindowController$H;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 64
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiSplitWindowController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiSplitWindowController;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method private hasSplitAnimationTypeLocked()Z
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method clearSplitAnimationTypeLocked()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiSplitWindowController;->setSplitAnimationTypeLocked(I)V

    .line 142
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 209
    const-string v0, "[MultiSplitWindowController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 220
    return-void
.end method

.method freezeWithDockDividersIfNeededLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "outStartBounds"    # Landroid/graphics/Rect;
    .param p3, "outEndBounds"    # Landroid/graphics/Rect;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    .line 158
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_84

    .line 162
    :cond_12
    iget v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_83

    .line 163
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 164
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->getMultiSplitFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x7c0

    .line 167
    .local v0, "dockSide":I
    const/16 v2, 0x80

    const/4 v3, 0x1

    if-eq v0, v2, :cond_74

    const/16 v2, 0x100

    if-eq v0, v2, :cond_65

    const/16 v2, 0x200

    if-eq v0, v2, :cond_55

    const/16 v2, 0x400

    if-eq v0, v2, :cond_45

    goto :goto_83

    .line 181
    :cond_45
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 182
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 183
    return v3

    .line 177
    :cond_55
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 178
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 179
    return v3

    .line 173
    :cond_65
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 174
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 175
    return v3

    .line 169
    :cond_74
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 170
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 171
    return v3

    .line 186
    .end local v0    # "dockSide":I
    :cond_83
    :goto_83
    return v1

    .line 159
    :cond_84
    :goto_84
    return v1
.end method

.method isMultiSplitAnimationLocked()Z
    .registers 3

    .line 145
    iget v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method onChangeTransitionAppliedLocked(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "windowingMode"    # Ljava/lang/Integer;

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/MultiSplitWindowController;->clearSplitAnimationTypeLocked()V

    .line 138
    :cond_18
    return-void
.end method

.method onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 89
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    .line 90
    return-void

    .line 92
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10501e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 95
    .local v1, "dividerWindowWidth":I
    const v2, 0x10501e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 97
    .local v2, "dividerInsets":I
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/server/wm/MultiSplitWindowController;->mDividerSize:I

    .line 98
    return-void
.end method

.method positionDisplayCutoutBackground(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "rotation"    # I
    .param p2, "displayCutout"    # Landroid/graphics/Rect;
    .param p3, "display"    # Landroid/graphics/Rect;
    .param p4, "frame"    # Landroid/graphics/Rect;

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_27

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    goto :goto_37

    .line 81
    :cond_d
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_37

    .line 78
    :cond_1a
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    goto :goto_37

    .line 75
    :cond_27
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    goto :goto_37

    .line 72
    :cond_2f
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    nop

    .line 84
    :goto_37
    return-void
.end method

.method setSplitAnimationTypeLocked(I)V
    .registers 6
    .param p1, "splitAnimationType"    # I

    .line 101
    iget v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    if-eq v0, p1, :cond_95

    .line 102
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_3e

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSplitAnimationTypeLocked: prev="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    .line 104
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", next="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v2, "MultiSplitWindowController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3e
    iput p1, p0, Lcom/android/server/wm/MultiSplitWindowController;->mSplitAnimationType:I

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    const/4 v0, 0x4

    const/4 v2, 0x3

    if-ne p1, v0, :cond_53

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 113
    :cond_53
    if-ne p1, v2, :cond_6a

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 116
    :cond_6a
    if-ne p1, v1, :cond_76

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 118
    :cond_76
    const/4 v0, 0x6

    if-ne p1, v0, :cond_82

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mWaitingWindowingModes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mH:Lcom/android/server/wm/MultiSplitWindowController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiSplitWindowController$H;->removeMessages(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/MultiSplitWindowController;->hasSplitAnimationTypeLocked()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController;->mH:Lcom/android/server/wm/MultiSplitWindowController$H;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiSplitWindowController$H;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    :cond_95
    return-void
.end method
