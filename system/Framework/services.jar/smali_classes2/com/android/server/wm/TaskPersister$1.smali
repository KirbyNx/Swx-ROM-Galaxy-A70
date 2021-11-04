.class Lcom/android/server/wm/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskPersister;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPersister;

    .line 421
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$1;->this$0:Lcom/android/server/wm/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 8
    .param p1, "lhs"    # Lcom/android/server/wm/Task;
    .param p2, "rhs"    # Lcom/android/server/wm/Task;

    .line 424
    iget-wide v0, p2, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    iget-wide v2, p1, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    sub-long/2addr v0, v2

    .line 425
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    .line 426
    const/4 v2, -0x1

    return v2

    .line 427
    :cond_d
    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    .line 428
    const/4 v2, 0x1

    return v2

    .line 430
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 421
    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister$1;->compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p1

    return p1
.end method
