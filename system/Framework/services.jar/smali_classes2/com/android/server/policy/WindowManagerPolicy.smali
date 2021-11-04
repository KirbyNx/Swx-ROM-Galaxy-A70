.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$RotationSource;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;,
        Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 1490
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1496
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1494
    :cond_a
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1492
    :cond_d
    const-string v0, "USER_ROTATION_FREE"

    return-object v0
.end method


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;ILjava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;ILandroid/graphics/Bitmap;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[I)I
.end method

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract createPolicyExtension(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)Lcom/android/server/policy/WindowManagerPolicyExt;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp(I)V
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 1521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public getMaxWindowLayer()I
    .registers 2

    .line 913
    const/16 v0, 0x24

    return v0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"    # I

    .line 926
    packed-switch p1, :pswitch_data_2e

    .line 942
    nop

    .line 943
    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->getSubWindowLayerFromTypeLw(I)I

    move-result v0

    .line 944
    .local v0, "extSubWindowLayer":I
    if-lez v0, :cond_15

    .line 945
    return v0

    .line 937
    .end local v0    # "extSubWindowLayer":I
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 933
    :pswitch_d
    const/4 v0, -0x1

    return v0

    .line 935
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 931
    :pswitch_11
    const/4 v0, -0x2

    return v0

    .line 929
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 950
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x3e8
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_13
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"    # I

    .line 749
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 753
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 750
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 771
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_9

    const/16 v2, 0x63

    if-gt p1, v2, :cond_9

    .line 772
    return v1

    .line 775
    :cond_9
    const/16 v2, 0x7e8

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x7ea

    if-eq p1, v2, :cond_b0

    const/16 v2, 0x7eb

    if-eq p1, v2, :cond_ad

    const/16 v2, 0xa

    packed-switch p1, :pswitch_data_b6

    const/16 v3, 0x1a

    const/16 v4, 0x15

    packed-switch p1, :pswitch_data_c2

    packed-switch p1, :pswitch_data_d8

    packed-switch p1, :pswitch_data_ec

    packed-switch p1, :pswitch_data_10a

    .line 899
    nop

    .line 900
    invoke-static {p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 901
    .local v0, "extWindowLayer":I
    if-lez v0, :cond_32

    .line 902
    return v0

    .line 907
    .end local v0    # "extWindowLayer":I
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return v1

    .line 840
    :pswitch_49
    const/16 v0, 0x12

    return v0

    .line 845
    :pswitch_4c
    const/16 v0, 0x13

    return v0

    .line 888
    :pswitch_4f
    const/16 v0, 0x20

    return v0

    .line 827
    :pswitch_52
    const/16 v0, 0xc

    return v0

    .line 870
    :pswitch_55
    return v3

    .line 785
    :pswitch_56
    return v1

    .line 783
    :pswitch_57
    return v1

    .line 886
    :pswitch_58
    const/16 v0, 0x1f

    return v0

    .line 793
    :pswitch_5b
    const/4 v0, 0x5

    return v0

    .line 781
    :pswitch_5d
    return v1

    .line 795
    :pswitch_5e
    const/4 v0, 0x6

    return v0

    .line 892
    :pswitch_60
    const/16 v0, 0x22

    return v0

    .line 853
    :pswitch_63
    const/16 v0, 0x16

    return v0

    .line 863
    :pswitch_66
    const/16 v0, 0x18

    return v0

    .line 895
    :pswitch_69
    const/16 v0, 0x24

    return v0

    .line 847
    :pswitch_6c
    const/16 v0, 0x14

    return v0

    .line 883
    :pswitch_6f
    const/16 v0, 0x1e

    return v0

    .line 890
    :pswitch_72
    const/16 v0, 0x21

    return v0

    .line 778
    :pswitch_75
    return v0

    .line 833
    :pswitch_76
    const/16 v0, 0x10

    return v0

    .line 830
    :pswitch_79
    const/16 v0, 0xf

    return v0

    .line 873
    :pswitch_7c
    if-eqz p2, :cond_80

    const/16 v2, 0x1b

    :cond_80
    return v2

    .line 849
    :pswitch_81
    return v4

    .line 797
    :pswitch_82
    const/4 v0, 0x7

    return v0

    .line 819
    :pswitch_84
    const/16 v0, 0x9

    return v0

    .line 857
    :pswitch_87
    if-eqz p2, :cond_8c

    const/16 v0, 0x17

    goto :goto_8e

    :cond_8c
    const/16 v0, 0xb

    :goto_8e
    return v0

    .line 805
    :pswitch_8f
    invoke-static {}, Lcom/android/server/wm/CoverPolicyController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 806
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_a0

    iget v1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a0

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_a0

    .line 808
    return v3

    .line 811
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_a0
    return v4

    .line 824
    :pswitch_a1
    if-eqz p2, :cond_a5

    const/16 v2, 0xd

    :cond_a5
    return v2

    .line 787
    :pswitch_a6
    const/4 v0, 0x3

    return v0

    .line 790
    :pswitch_a8
    const/4 v0, 0x4

    return v0

    .line 838
    :pswitch_aa
    const/16 v0, 0x11

    return v0

    .line 876
    :cond_ad
    const/16 v0, 0x1c

    return v0

    .line 879
    :cond_b0
    const/16 v0, 0x1d

    return v0

    .line 866
    :cond_b3
    const/16 v0, 0x19

    return v0

    :pswitch_data_b6
    .packed-switch 0x7d0
        :pswitch_aa
        :pswitch_a8
        :pswitch_a6
        :pswitch_a1
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x7d5
        :pswitch_8f
        :pswitch_87
        :pswitch_84
        :pswitch_82
        :pswitch_81
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_75
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x7df
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5e
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x7ee
        :pswitch_5d
        :pswitch_5b
        :pswitch_58
        :pswitch_a8
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_5d
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_52
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0xa3d
        :pswitch_aa
        :pswitch_4c
        :pswitch_66
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 738
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public internalScreenTurningOff()V
    .registers 1

    .line 1591
    return-void
.end method

.method public internalScreenTurningOn()V
    .registers 1

    .line 1586
    return-void
.end method

.method public isDisplayFolded()Z
    .registers 2

    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public isTableMode()Z
    .registers 2

    .line 1555
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1527
    return-void
.end method

.method public onFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1595
    return-void
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1503
    return-void
.end method

.method public registerFoldStateChangedCallback(Landroid/view/IFoldStateChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/IFoldStateChangedCallback;

    .line 1545
    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public registerTentModeListener(Landroid/view/ITentModeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ITentModeListener;

    .line 1574
    return-void
.end method

.method public requestDeviceFolded(Z)V
    .registers 2
    .param p1, "folded"    # Z

    .line 1565
    return-void
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setAodShowing(Z)Z
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 1396
    return-void
.end method

.method public setForcedDisplaySizeRequestedLw(Z)V
    .registers 2
    .param p1, "requested"    # Z

    .line 1599
    return-void
.end method

.method public setForcedTableMode(Z)V
    .registers 2
    .param p1, "tableMode"    # Z

    .line 1570
    return-void
.end method

.method public abstract setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 1515
    return-void
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public setTableModeEnabled(Z)V
    .registers 2
    .param p1, "isTableModeEnabled"    # Z

    .line 1550
    return-void
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public shouldBeLoggingHalfOpenMode()I
    .registers 2

    .line 1579
    const/4 v0, -0x1

    return v0
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public startedEarlyWakingUp(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1603
    return-void
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1508
    return-void
.end method

.method public unregisterTentModeListener(Landroid/view/ITentModeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ITentModeListener;

    .line 1575
    return-void
.end method

.method public abstract userActivity()V
.end method
