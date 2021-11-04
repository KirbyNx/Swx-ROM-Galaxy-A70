.class public Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayInfo"
.end annotation


# instance fields
.field private mAbsOffset:Landroid/graphics/Point;

.field private mSurfaceCropRect:Landroid/graphics/Rect;

.field private mSurfaceOffset:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 113
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;

    .line 110
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getAbsOffset()Landroid/graphics/Point;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSurfaceCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurfaceOffset()Landroid/graphics/Point;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
