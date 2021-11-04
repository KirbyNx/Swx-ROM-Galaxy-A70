.class Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;
.super Ljava/lang/Object;
.source "PairTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PairTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskWindowingModeMapper"
.end annotation


# instance fields
.field private final mTaskByWindowingMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowingModeByTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PairTask$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/PairTask$1;

    .line 370
    invoke-direct {p0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/android/server/wm/Task;I)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "windowingMode"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public clear()V
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 404
    return-void
.end method

.method public contains(I)Z
    .registers 4
    .param p1, "windowingMode"    # I

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTask(I)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "windowingMode"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWindowingMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 381
    .local v0, "windowingMode":I
    iget-object v1, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mWindowingModeByTask:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->mTaskByWindowingMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method
