.class final Lcom/android/server/wm/MultiSplitWindowController$H;
.super Landroid/os/Handler;
.source "MultiSplitWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiSplitWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MUTLI_SPLIT_ANIMATION_TIMEOUT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiSplitWindowController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiSplitWindowController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MultiSplitWindowController;

    .line 190
    iput-object p1, p0, Lcom/android/server/wm/MultiSplitWindowController$H;->this$0:Lcom/android/server/wm/MultiSplitWindowController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_20

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitWindowController$H;->this$0:Lcom/android/server/wm/MultiSplitWindowController;

    # getter for: Lcom/android/server/wm/MultiSplitWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v0}, Lcom/android/server/wm/MultiSplitWindowController;->access$000(Lcom/android/server/wm/MultiSplitWindowController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    const-string v1, "MultiSplitWindowController"

    const-string v2, "MUTLI_SPLIT_ANIMATION_TIMEOUT!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitWindowController$H;->this$0:Lcom/android/server/wm/MultiSplitWindowController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiSplitWindowController;->clearSplitAnimationTypeLocked()V

    .line 201
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    :goto_20
    return-void

    .line 201
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
