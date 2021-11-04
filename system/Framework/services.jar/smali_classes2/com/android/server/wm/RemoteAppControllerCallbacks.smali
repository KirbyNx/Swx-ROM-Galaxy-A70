.class public interface abstract Lcom/android/server/wm/RemoteAppControllerCallbacks;
.super Ljava/lang/Object;
.source "RemoteAppControllerCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
    }
.end annotation


# static fields
.field public static final INTERCEPT_REASON_APP_REQUESTED:I = 0x4

.field public static final INTERCEPT_REASON_OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY:I = 0x1

.field public static final INTERCEPT_REASON_TASK_IS_MOVING_TO_DEFAULT_DISPLAY:I = 0x2

.field public static final INTERCEPT_REASON_TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY:I = 0x3

.field public static final INTERCEPT_REASON_UNDEFINED:I


# direct methods
.method public static interceptReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "interceptReason"    # I

    .line 102
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    .line 114
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_13
    const-string v0, "INTERCEPT_REASON_APP_REQUESTED"

    return-object v0

    .line 110
    :cond_16
    const-string v0, "TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY"

    return-object v0

    .line 108
    :cond_19
    const-string v0, "TASK_IS_MOVING_TO_DEFAULT_DISPLAY"

    return-object v0

    .line 106
    :cond_1c
    const-string v0, "OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY"

    return-object v0

    .line 104
    :cond_1f
    const-string v0, "UNDEFINED"

    return-object v0
.end method


# virtual methods
.method public onMoveTaskToBackLocked(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "interceptedDisplayId"    # I
    .param p5, "isVisibleTask"    # Z
    .param p6, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p7, "interceptReason"    # I

    .line 61
    const/4 v0, 0x0

    return v0
.end method
