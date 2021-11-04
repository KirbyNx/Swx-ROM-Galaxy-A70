.class Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskDisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWindowTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2463
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;->this$0:Lcom/android/server/wm/TaskDisplayArea;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 3
    .param p1, "transit"    # I

    .line 2471
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;->this$0:Lcom/android/server/wm/TaskDisplayArea;

    # invokes: Lcom/android/server/wm/TaskDisplayArea;->handleTaskStackOrdering()V
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->access$000(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 2472
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2466
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;->this$0:Lcom/android/server/wm/TaskDisplayArea;

    # invokes: Lcom/android/server/wm/TaskDisplayArea;->handleTaskStackOrdering()V
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->access$000(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 2467
    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .registers 2

    .line 2476
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;->this$0:Lcom/android/server/wm/TaskDisplayArea;

    # invokes: Lcom/android/server/wm/TaskDisplayArea;->handleTaskStackOrdering()V
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->access$000(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 2477
    return-void
.end method
