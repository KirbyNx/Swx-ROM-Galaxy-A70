.class Lcom/android/server/wm/Task$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field base:Lcom/android/server/wm/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5385
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 5386
    return-void

    .line 5389
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 5392
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    .line 5394
    iget-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5395
    :cond_19
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 5398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 5400
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5402
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 5404
    :cond_2a
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 5372
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->accept(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method reset()V
    .registers 2

    .line 5379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 5380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 5381
    return-void
.end method
