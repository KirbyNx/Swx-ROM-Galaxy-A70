.class public Lcom/android/server/wm/ForceLaunchWindowingModeUtils;
.super Ljava/lang/Object;
.source "ForceLaunchWindowingModeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 5
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 23
    return v0

    .line 25
    :cond_4
    if-eqz p1, :cond_18

    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 27
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    return v0

    .line 29
    :cond_17
    return v0

    .line 31
    :cond_18
    if-eqz p2, :cond_2c

    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 33
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    return v0

    .line 35
    :cond_2b
    return v0

    .line 37
    :cond_2c
    return v0
.end method

.method static shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 12
    .local v0, "forceLaunchWindowingMode":I
    if-eqz v0, :cond_10

    if-eqz p2, :cond_e

    .line 13
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_10

    :cond_e
    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 12
    :goto_11
    return v1
.end method

.method static shouldDismissSplitBeforeLaunch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 17
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 18
    .local v0, "forceLaunchWindowingMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method
