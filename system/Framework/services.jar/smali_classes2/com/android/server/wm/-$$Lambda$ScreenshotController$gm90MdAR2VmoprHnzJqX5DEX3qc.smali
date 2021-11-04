.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;->f$0:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;->f$1:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ScreenshotController;->lambda$sendScreenshotMessage$1(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
