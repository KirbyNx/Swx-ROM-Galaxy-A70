.class Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field private final mControlTargetTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDispatchInsetsChanged:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mLastState:Landroid/view/InsetsState;

.field private final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTypeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeFakeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 68
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 81
    sget-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 86
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsStateController;

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$WPnaFmmIW6k6mGJbfuuwznz-bHA;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 567
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    if-eqz p3, :cond_19

    .line 569
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    .line 571
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    :goto_1e
    return-void
.end method

.method private getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;
    .registers 13
    .param p1, "type"    # I
    .param p2, "windowingMode"    # I
    .param p3, "isAlwaysOnTop"    # Z
    .param p4, "aboveIme"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 187
    .local v0, "state":Landroid/view/InsetsState;
    const/4 v1, -0x1

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_5a

    .line 188
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v1

    .line 189
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 192
    const/4 v1, 0x2

    if-ne p1, v3, :cond_1e

    .line 193
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 199
    :cond_1e
    if-nez p1, :cond_23

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 204
    :cond_23
    if-ne p1, v2, :cond_5a

    .line 205
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_2c
    if-ltz v1, :cond_5a

    .line 206
    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 207
    .local v5, "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->overridesImeFrame()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 208
    new-instance v6, Landroid/view/InsetsSource;

    .line 210
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 211
    .local v6, "override":Landroid/view/InsetsSource;
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 212
    invoke-virtual {v0, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 205
    .end local v5    # "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v6    # "override":Landroid/view/InsetsSource;
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 218
    .end local v1    # "i":I
    :cond_5a
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1

    if-nez v1, :cond_65

    const/4 v1, 0x6

    if-ne p2, v1, :cond_71

    if-eqz p3, :cond_71

    .line 220
    :cond_65
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v1

    .line 221
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 222
    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 225
    :cond_71
    if-eqz p4, :cond_e4

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "imeVisible":Z
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 230
    .local v2, "imeSource":Landroid/view/InsetsSource;
    if-eqz v2, :cond_96

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 232
    const/4 v1, 0x1

    .line 234
    new-instance v5, Landroid/view/InsetsSource;

    invoke-direct {v5, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v2, v5

    .line 235
    invoke-virtual {v2, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 236
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 237
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v5

    .line 238
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 242
    :cond_96
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 243
    .local v5, "clipboardSource":Landroid/view/InsetsSource;
    if-eqz v5, :cond_ba

    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 245
    const/4 v1, 0x1

    .line 247
    new-instance v6, Landroid/view/InsetsSource;

    invoke-direct {v6, v5}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v5, v6

    .line 248
    invoke-virtual {v5, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 249
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 250
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v4

    .line 251
    invoke-virtual {v0, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 254
    .end local v5    # "clipboardSource":Landroid/view/InsetsSource;
    :cond_ba
    if-eqz v1, :cond_e4

    .line 257
    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 258
    .local v4, "navSource":Landroid/view/InsetsSource;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v3

    .line 259
    .local v3, "navProvider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v3, :cond_e4

    if-eqz v4, :cond_e4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 260
    new-instance v5, Landroid/view/InsetsSource;

    invoke-direct {v5, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v4, v5

    .line 261
    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 262
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v5

    .line 263
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 269
    .end local v1    # "imeVisible":Z
    .end local v2    # "imeSource":Landroid/view/InsetsSource;
    .end local v3    # "navProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v4    # "navSource":Landroid/view/InsetsSource;
    :cond_e4
    return-object v0
.end method

.method private static getInsetsTypeForWindowType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 170
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_13

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_10

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_e

    .line 178
    const/4 v0, -0x1

    return v0

    .line 174
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_10
    const/16 v0, 0xd

    return v0

    .line 172
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private isAboveIme(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .param p1, "target"    # Lcom/android/server/wm/WindowContainer;

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_b

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClipBoardWindow:Lcom/android/server/wm/WindowState;

    goto :goto_f

    .line 158
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :goto_f
    nop

    .line 159
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    if-nez v0, :cond_16

    goto :goto_2a

    .line 162
    :cond_16
    instance-of v2, p1, Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_29

    .line 163
    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 164
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v3

    if-nez v3, :cond_27

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mBehindIme:Z

    if-nez v3, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1

    .line 166
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_29
    return v1

    .line 160
    :cond_2a
    :goto_2a
    return v1
.end method

.method static synthetic lambda$addToControlMaps$4(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "key"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 85
    :cond_9
    return-void
.end method

.method private notifyPendingInsetsControlChanged()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    return-void

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$AD-N-CuASggMPuANxay4AharPVM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$AD-N-CuASggMPuANxay4AharPVM;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method private onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 494
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_b

    .line 495
    return-void

    .line 497
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 498
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_1a

    .line 499
    return-void

    .line 501
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_21

    .line 502
    return-void

    .line 504
    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 505
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    .line 506
    if-eqz v0, :cond_33

    .line 507
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 508
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_33
    if-eqz p2, :cond_3d

    .line 511
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 512
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_3d
    return-void
.end method

.method private removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 549
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_b

    .line 550
    return-void

    .line 552
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 554
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_1d
    if-eqz p3, :cond_25

    .line 557
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2a

    .line 559
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 561
    :goto_2a
    return-void
.end method


# virtual methods
.method computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .registers 8
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p4, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 440
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    iget-object v2, v1, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, p2, :cond_1d

    .line 441
    invoke-virtual {v1, p3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 438
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 444
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Control map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_46
    const-string v1, " -> "

    if-ltz v0, :cond_84

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 629
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 631
    .end local v0    # "i":I
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  InsetsSourceProviders map:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_a0
    if-ltz v0, :cond_e4

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 632
    add-int/lit8 v0, v0, -0x1

    goto :goto_a0

    .line 637
    .end local v0    # "i":I
    :cond_e4
    return-void
.end method

.method getClipBoardSourceProvider()Lcom/android/server/wm/ClipBoardInsetsSourceProvider;
    .registers 2

    .line 377
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;

    return-object v0
.end method

.method getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .registers 16
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, "controlled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 280
    .local v1, "statusControlledByPolicy":Z
    const/4 v2, 0x0

    .line 282
    .local v2, "navControlledByPolicy":Z
    instance-of v3, p1, Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_43

    .line 283
    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 285
    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    .line 288
    if-nez v1, :cond_22

    if-eqz v2, :cond_43

    .line 292
    :cond_22
    if-nez v0, :cond_2b

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    goto :goto_31

    .line 296
    :cond_2b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    .line 298
    :goto_31
    if-eqz v1, :cond_3a

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_3a
    if-eqz v2, :cond_43

    .line 302
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_43
    const/4 v3, 0x0

    if-nez v0, :cond_47

    .line 308
    return-object v3

    .line 310
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 311
    .local v6, "size":I
    new-array v7, v6, [Landroid/view/InsetsSourceControl;

    .line 313
    .local v7, "result":[Landroid/view/InsetsSourceControl;
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 314
    .local v8, "targetWindow":Lcom/android/server/wm/WindowState;
    const/4 v9, 0x0

    .line 315
    .local v9, "isp":Lcom/android/server/wm/InsetsSourceProvider;
    const/4 v10, 0x0

    .line 317
    .local v10, "isc":Landroid/view/InsetsSourceControl;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_54
    if-ge v11, v6, :cond_142

    .line 319
    if-eqz v1, :cond_72

    .line 320
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_72

    .line 321
    new-instance v12, Landroid/view/InsetsSourceControl;

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    invoke-direct {v12, v4, v3, v13, v5}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Z)V

    aput-object v12, v7, v11

    goto/16 :goto_13e

    .line 323
    :cond_72
    if-eqz v2, :cond_8e

    .line 324
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v5, :cond_8e

    .line 325
    new-instance v12, Landroid/view/InsetsSourceControl;

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    invoke-direct {v12, v5, v3, v13, v5}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Z)V

    aput-object v12, v7, v11

    goto/16 :goto_13e

    .line 329
    :cond_8e
    iget-object v12, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lcom/android/server/wm/InsetsSourceProvider;

    .line 330
    invoke-virtual {v9, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v10

    .line 331
    iget-object v12, v9, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_a9

    iget-object v12, v9, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v12, :cond_b9

    :cond_a9
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    if-eqz v12, :cond_12c

    .line 332
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v12

    if-nez v12, :cond_12c

    .line 333
    :cond_b9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "targetWindow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", isp.mWin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", isp.mWin.mRemoved="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v13, v9, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_e3

    iget-object v13, v9, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v13, v13, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_e6

    :cond_e3
    const-string/jumbo v13, "mWin null"

    :goto_e6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", isc.getType()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v13

    .line 337
    invoke-static {v13}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isc.getLeash()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", isc.getLeash().isValid()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    if-eqz v13, :cond_11d

    .line 341
    invoke-virtual {v10}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_120

    :cond_11d
    const-string/jumbo v13, "leash null"

    :goto_120
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 333
    const-string v13, "InsetsStateController"

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_12c
    iget-object v12, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v12, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v12

    aput-object v12, v7, v11

    .line 317
    :goto_13e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_54

    .line 348
    .end local v11    # "i":I
    :cond_142
    return-object v7
.end method

.method getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .registers 2

    .line 372
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object v0
.end method

.method getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .registers 8
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 115
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 116
    .local v0, "rotatedState":Landroid/view/InsetsState;
    if-eqz v0, :cond_35

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 128
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 130
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 134
    :cond_34
    return-object v0

    .line 136
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 137
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_44

    .line 138
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    goto :goto_45

    :cond_44
    const/4 v2, -0x1

    .line 139
    .local v2, "type":I
    :goto_45
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAlwaysOnTop()Z

    move-result v4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    .line 139
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v3

    return-object v3
.end method

.method getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 144
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/wm/InsetsStateController;->getInsetsTypeForWindowType(I)I

    move-result v0

    .line 145
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 146
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 147
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getWindowingMode()I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v2

    .line 148
    .local v3, "windowingMode":I
    :goto_17
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v2, 0x1

    .line 149
    .local v2, "alwaysOnTop":Z
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v4

    return-object v4
.end method

.method getRawInsetsState()Landroid/view/InsetsState;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 5
    .param p1, "type"    # I

    .line 355
    const/16 v0, 0xd

    if-ne p1, v0, :cond_16

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0

    .line 360
    :cond_16
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2c

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0

    .line 366
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$EieWndHHWtNpBtJoK2U-TZ_RU2A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$EieWndHHWtNpBtJoK2U-TZ_RU2A;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public synthetic lambda$getSourceProvider$1$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;

    .line 357
    new-instance v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 358
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 357
    return-object v0
.end method

.method public synthetic lambda$getSourceProvider$2$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;

    .line 362
    new-instance v0, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 363
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 362
    return-object v0
.end method

.method public synthetic lambda$getSourceProvider$3$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;

    .line 367
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public synthetic lambda$notifyPendingInsetsControlChanged$5$InsetsStateController()V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 586
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 587
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionApplied()V

    .line 585
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 590
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    .line 592
    .local v0, "policyControlTarget":Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_38

    .line 593
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 594
    .local v2, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged()V

    .line 596
    instance-of v3, v2, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    if-eqz v3, :cond_35

    .line 598
    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 592
    .end local v2    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 602
    .end local v1    # "i":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 604
    if-eqz v0, :cond_46

    .line 609
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    .line 612
    :cond_46
    return-void
.end method

.method notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 578
    return-void
.end method

.method notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 5
    .param p1, "previousControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "provider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 487
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 489
    return-void
.end method

.method notifyInsetsChanged()V
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v0, :cond_15

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->notifyInsetsChanged()V

    .line 620
    :cond_15
    return-void
.end method

.method onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 7
    .param p1, "statusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "fakeStatusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p3, "navControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p4, "fakeNavControlling"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 479
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 480
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 481
    invoke-virtual {p0, v1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 482
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 483
    return-void
.end method

.method onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "fakeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 524
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 525
    return-void

    .line 527
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 528
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_11

    .line 529
    return-void

    .line 531
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 532
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_20

    .line 533
    return-void

    .line 535
    :cond_20
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 536
    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 537
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 538
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_2e
    if-eqz p2, :cond_38

    .line 541
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 542
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_38
    return-void
.end method

.method onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 454
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 455
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_6
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 456
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_19

    :cond_16
    const-string/jumbo v1, "null"

    :goto_19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x62dc4f45

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 460
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2c
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 463
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 464
    return-void
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V
    .registers 8
    .param p1, "windowState"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x11

    if-ge v1, v2, :cond_28

    .line 414
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 415
    .local v2, "source":Landroid/view/InsetsSource;
    if-nez v2, :cond_d

    goto :goto_25

    .line 416
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 417
    .local v3, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v3, :cond_20

    .line 418
    goto :goto_25

    .line 420
    :cond_20
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsSource;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 413
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    .end local v1    # "i":I
    :cond_28
    if-eqz v0, :cond_36

    .line 423
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 426
    :cond_36
    return-void
.end method

.method onPostLayout()V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_23

    .line 394
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 393
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 396
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWinInsetsChanged:Ljava/util/ArrayList;

    .line 397
    .local v0, "winInsetsChanged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v3, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    goto :goto_51

    .line 404
    :cond_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_41
    if-ltz v2, :cond_51

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 404
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .line 408
    .end local v2    # "i":I
    :cond_51
    :goto_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 409
    return-void
.end method

.method peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 4
    .param p1, "type"    # I

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method
