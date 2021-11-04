.class Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mDestroyTargetAllActivities"
.end annotation


# instance fields
.field private reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;

.field private wpcowner:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/RootWindowContainer;
    .param p2, "x1"    # Lcom/android/server/wm/RootWindowContainer$1;

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 5
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x$1"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "x$2"    # Ljava/lang/String;

    .line 373
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/RootWindowContainer;

    # invokes: Lcom/android/server/wm/RootWindowContainer;->destroyTargetActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->access$100(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 372
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$mDestroyTargetAllActivities$fOXKpaIfBZaKSL2o7FrTXibmmnA;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 374
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    .line 372
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 375
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 376
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 379
    .end local v1    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 380
    return-void

    .line 379
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setParam(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 3
    .param p1, "wpcowner"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->wpcowner:Lcom/android/server/wm/WindowProcessController;

    .line 366
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->reason:Ljava/lang/String;

    .line 367
    return-void
.end method
