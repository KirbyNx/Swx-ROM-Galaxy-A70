.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$LetterboxSurface;,
        Lcom/android/server/wm/Letterbox$InputInterceptor;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field private final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mInner:Landroid/graphics/Rect;

.field private final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mOuter:Landroid/graphics/Rect;

.field private final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mSurfaceControlFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "surfaceControlFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    .local p2, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 53
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "left"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 54
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "bottom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 55
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "right"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 56
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 67
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/Letterbox;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/Letterbox;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    return-object v0
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 177
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 176
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 179
    :cond_e
    return-void
.end method

.method attachInput(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 184
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 183
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 186
    :cond_e
    return-void
.end method

.method public destroy()V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 161
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 160
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 163
    :cond_18
    return-void
.end method

.method getDirection(II)I
    .registers 4
    .param p1, "safeInsetLeft"    # I
    .param p2, "safeInsetRight"    # I

    .line 359
    if-lez p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    # getter for: Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$400(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 360
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_18

    .line 361
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_18
    if-lez p2, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    # getter for: Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$400(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_30

    .line 364
    const/4 v0, 0x2

    return v0

    .line 366
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method getInnerFrame()Landroid/graphics/Rect;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 6

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 96
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 97
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 98
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 99
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 150
    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 151
    return-void
.end method

.method public isOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 137
    .local v4, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 138
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v4    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 141
    :cond_14
    return v2
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 16
    .param p1, "outer"    # Landroid/graphics/Rect;
    .param p2, "inner"    # Landroid/graphics/Rect;
    .param p3, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 85
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 87
    iget-object v5, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 88
    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 168
    .local v4, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 169
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v4    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 172
    :cond_14
    return v2
.end method

.method notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "emptyCount":I
    const/4 v1, 0x0

    .line 116
    .local v1, "noOverlappingCount":I
    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_7
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2c

    aget-object v7, v2, v5

    .line 117
    .local v7, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    # getter for: Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$000(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v8

    .line 118
    .local v8, "surfaceRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 121
    :cond_19
    invoke-static {v8, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 124
    :cond_22
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 126
    return v6

    .line 116
    .end local v7    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    .end local v8    # "surfaceRect":Landroid/graphics/Rect;
    :cond_29
    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 129
    :cond_2c
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v3

    if-ne v2, v3, :cond_34

    move v4, v6

    :cond_34
    return v4
.end method

.method onMovedToDisplay(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 190
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    # getter for: Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$100(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 191
    # getter for: Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$100(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v4, Landroid/view/InputWindowHandle;->displayId:I

    .line 189
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 194
    :cond_19
    return-void
.end method
