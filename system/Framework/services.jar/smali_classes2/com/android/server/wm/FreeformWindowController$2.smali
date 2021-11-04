.class Lcom/android/server/wm/FreeformWindowController$2;
.super Ljava/lang/Object;
.source "FreeformWindowController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformWindowController;->autoDockFreeformIfNeeded(Lcom/android/server/wm/WindowState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformWindowController;

.field final synthetic val$startBounds:Landroid/graphics/Rect;

.field final synthetic val$task:Lcom/android/server/wm/Task;

.field final synthetic val$updateBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/FreeformWindowController;

    .line 473
    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController$2;->this$0:Lcom/android/server/wm/FreeformWindowController;

    iput-object p2, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$updateBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$startBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$task:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 476
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 477
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$updateBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$startBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$updateBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController$2;->this$0:Lcom/android/server/wm/FreeformWindowController;

    # getter for: Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/FreeformWindowController;->access$000(Lcom/android/server/wm/FreeformWindowController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController$2;->val$updateBounds:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 481
    return-void
.end method
