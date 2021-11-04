.class public interface abstract Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicyExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerFuncs"
.end annotation


# virtual methods
.method public abstract cancelPendingTakeScreenshotRunnable()V
.end method

.method public abstract ensureActivitiesVisible()V
.end method

.method public abstract getDisplayIdForPointerIcon()I
.end method

.method public abstract getFocusedTaskIdWithoutHome()I
.end method

.method public abstract getPenState()I
.end method

.method public abstract handleDexDpadShortcut(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
.end method

.method public abstract hasOneHandOpSpec(I)Z
.end method

.method public abstract reconfigureDisplay(I)V
.end method

.method public abstract removeTask(I)V
.end method

.method public abstract resetScreenshotConnection()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract sendTakeScreenshotRunnable(II)V
.end method

.method public abstract switchBuiltInDisplays(ZZ)V
.end method
