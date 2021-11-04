.class Lcom/android/server/wm/SplitStatus;
.super Ljava/lang/Object;
.source "SplitStatus.java"


# instance fields
.field private mCellIsEmpty:Z

.field private mPrimaryIsEmpty:Z

.field private mSecondaryIsEmpty:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mCellIsEmpty:Z

    return-void
.end method


# virtual methods
.method allRootTaskEmpty()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method allRootTaskEmptyWithCell()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mCellIsEmpty:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method cellActivated()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mCellIsEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isCellEmpty()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mCellIsEmpty:Z

    return v0
.end method

.method isPrimaryEmpty()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    return v0
.end method

.method isSecondaryEmpty()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    return v0
.end method

.method splitActivated()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method update(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 54
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 55
    .local v1, "windowingMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1a

    .line 56
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v4, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    iput-boolean v4, p0, Lcom/android/server/wm/SplitStatus;->mPrimaryIsEmpty:Z

    .line 58
    :cond_1a
    const/4 v4, 0x4

    if-ne v1, v4, :cond_25

    .line 59
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v4, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    iput-boolean v2, p0, Lcom/android/server/wm/SplitStatus;->mSecondaryIsEmpty:Z

    .line 64
    :cond_25
    return-void
.end method
