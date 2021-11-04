.class public Lcom/android/server/wm/SplitWindowController;
.super Ljava/lang/Object;
.source "SplitWindowController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SplitWindowController"


# instance fields
.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mRemoteAnimControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/SplitWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 47
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 48
    return-void
.end method


# virtual methods
.method addRecentsPairRemoteAnimControllerLocked(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 4
    .param p1, "targetController"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecentsPairRemoteAnimControllerLocked: [SplitRecents] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitWindowController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_23
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 98
    const-string v0, "[SplitWindowController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAnimControllers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    :cond_26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 103
    return-void
.end method

.method hasRemoteAnimationControllers()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isChildOfAnimatingPairTask(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 88
    .local v0, "pairTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 89
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 88
    :goto_1b
    return v1
.end method

.method isRunningForOtherRemoteAnimationLocked(Lcom/android/server/wm/RemoteAnimationController;)Z
    .registers 7
    .param p1, "targetController"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController;->getAnimatingSplitPairedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 72
    .local v0, "animatingPairedTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 73
    return v1

    .line 75
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RemoteAnimationController;

    .line 76
    .local v3, "tmpController":Lcom/android/server/wm/RemoteAnimationController;
    if-ne v3, p1, :cond_1d

    .line 77
    goto :goto_e

    .line 79
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/RemoteAnimationController;->getAnimatingSplitPairedTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v0, v4, :cond_25

    .line 80
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v3    # "tmpController":Lcom/android/server/wm/RemoteAnimationController;
    :cond_25
    goto :goto_e

    .line 83
    :cond_26
    return v1
.end method

.method removeRecentsPairRemoteAnimControllerLocked(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 4
    .param p1, "targetController"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRecentsPairRemoteAnimControllerLocked: [SplitRecents] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numRemain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SplitWindowController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "SplitWindowController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_32
    return-void
.end method
