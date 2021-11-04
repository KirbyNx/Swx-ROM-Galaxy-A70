.class public interface abstract Lcom/android/server/statusbar/StatusBarManagerInternal;
.super Ljava/lang/Object;
.source "StatusBarManagerInternal.java"


# virtual methods
.method public abstract abortTransient(I[I)V
.end method

.method public abstract abortTransientToType(I[II)V
.end method

.method public abstract appTransitionCancelled(I)V
.end method

.method public abstract appTransitionFinished(I)V
.end method

.method public abstract appTransitionPending(I)V
.end method

.method public abstract appTransitionStarting(IJJ)V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract dismissKeyboardShortcutsMenu()V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract hideRecentAppsFromType(ZZI)V
.end method

.method public abstract hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract hideToastToType(Ljava/lang/String;Landroid/os/IBinder;I)V
.end method

.method public abstract notifyRequestedGameToolsWin(Z)V
.end method

.method public abstract notifyRequestedSystemKey(ZZ)V
.end method

.method public abstract notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
.end method

.method public abstract onCameraLaunchGestureDetected(I)V
.end method

.method public abstract onDisplayReady(I)V
.end method

.method public abstract onFocusedDisplayChanged(I)V
.end method

.method public abstract onProposedRotationChanged(IZ)V
.end method

.method public abstract onRecentsAnimationStateChanged(Z)V
.end method

.method public abstract onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V
.end method

.method public abstract onSystemBarAppearanceChangedToType(II[Lcom/android/internal/view/AppearanceRegion;ZI)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V
.end method

.method public abstract sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract setCurrentUser(I)V
.end method

.method public abstract setDisableFlags(IILjava/lang/String;)V
.end method

.method public abstract setDisableFlagsToType(IILjava/lang/String;I)V
.end method

.method public abstract setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
.end method

.method public abstract setSysUiSafeMode(Z)V
.end method

.method public abstract setTopAppHidesStatusBar(Z)V
.end method

.method public abstract setWindowState(III)V
.end method

.method public abstract showAssistDisclosure()V
.end method

.method public abstract showChargingAnimation(I)V
.end method

.method public abstract showPictureInPictureMenu()V
.end method

.method public abstract showRecentApps(Z)V
.end method

.method public abstract showRecentAppsToType(ZI)V
.end method

.method public abstract showScreenPinningRequest(I)V
.end method

.method public abstract showScreenPinningRequestToType(II)V
.end method

.method public abstract showShutdownUi(ZLjava/lang/String;)Z
.end method

.method public abstract showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V
.end method

.method public abstract showToastForDex(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;Z)V
.end method

.method public abstract showToastToType(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
.end method

.method public abstract showTransient(I[I)V
.end method

.method public abstract showTransientToType(I[II)V
.end method

.method public abstract startAssist(Landroid/os/Bundle;)V
.end method

.method public abstract toggleKeyboardShortcutsMenu(I)V
.end method

.method public abstract toggleKeyboardShortcutsMenuToType(II)V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract toggleRecentAppsToType(I)V
.end method

.method public abstract toggleSplitScreen()V
.end method

.method public abstract topAppWindowChanged(IZZ)V
.end method

.method public abstract topAppWindowChangedToType(IZZI)V
.end method
