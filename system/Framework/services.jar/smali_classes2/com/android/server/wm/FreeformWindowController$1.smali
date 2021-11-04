.class Lcom/android/server/wm/FreeformWindowController$1;
.super Ljava/lang/Object;
.source "FreeformWindowController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformWindowController;->loadMinimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformWindowController;

.field final synthetic val$task:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/FreeformWindowController;

    .line 226
    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController$1;->this$0:Lcom/android/server/wm/FreeformWindowController;

    iput-object p2, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$task:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController$1;->this$0:Lcom/android/server/wm/FreeformWindowController;

    # getter for: Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/FreeformWindowController;->access$000(Lcom/android/server/wm/FreeformWindowController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController$1;->val$task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 230
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 228
    return-void
.end method
