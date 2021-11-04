.class Lcom/android/server/am/FreecessController$3;
.super Ljava/lang/Thread;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/FreecessController;->handleResetAllPreAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreecessController;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/FreecessController;Ljava/lang/String;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/FreecessController;
    .param p2, "name"    # Ljava/lang/String;

    .line 3281
    iput-object p1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    iput-wide p3, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3285
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/FreecessController;->access$1300(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    # getter for: Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/am/FreecessController;->access$1300(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3287
    .local v0, "listPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3288
    .local v2, "pid":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-ltz v3, :cond_35

    .line 3289
    goto :goto_41

    .line 3290
    :cond_35
    if-eqz v2, :cond_40

    .line 3291
    iget-object v3, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    .line 3292
    .end local v2    # "pid":Ljava/lang/Integer;
    :cond_40
    goto :goto_1b

    .line 3296
    .end local v0    # "listPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_41
    :goto_41
    goto :goto_59

    .line 3294
    :catch_42
    move-exception v0

    .line 3295
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while handleResetAllPreAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "!@*** unFreezeAllPackages for watchdog : End thread for preaction unfreezing!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    return-void
.end method
