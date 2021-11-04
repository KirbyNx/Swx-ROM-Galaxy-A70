.class public interface abstract Lcom/android/server/policy/WindowManagerPolicyExt;
.super Ljava/lang/Object;
.source "WindowManagerPolicyExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;,
        Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;
    }
.end annotation


# static fields
.field public static final AOD_FORCE_HIDING_LAYER:I = 0x1a

.field public static final PEN_ABSENT:I = -0x1

.field public static final PEN_ATTACHED:I = 0x1

.field public static final PEN_DETACHED:I


# direct methods
.method public static getMultiWindowLayerFromTypeLw(I)I
    .registers 2
    .param p0, "type"    # I

    .line 382
    const/16 v0, 0xa2c

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa36

    if-eq p0, v0, :cond_11

    const/16 v0, 0xa39

    if-eq p0, v0, :cond_e

    .line 396
    const/4 v0, -0x1

    return v0

    .line 393
    :cond_e
    const/16 v0, 0xe

    return v0

    .line 385
    :cond_11
    const/4 v0, 0x2

    return v0

    .line 389
    :cond_13
    const/4 v0, 0x3

    return v0
.end method

.method public static getSubWindowLayerFromTypeLw(I)I
    .registers 2
    .param p0, "type"    # I

    .line 220
    const/16 v0, 0x44c

    if-eq p0, v0, :cond_6

    .line 224
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static getWindowLayerFromTypeLw(IZ)I
    .registers 6
    .param p0, "type"    # I
    .param p1, "canAddInternalSystemWindow"    # Z

    .line 103
    const/16 v0, 0xf

    const/16 v1, 0x1a

    sparse-switch p0, :sswitch_data_60

    .line 208
    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->getMultiWindowLayerFromTypeLw(I)I

    move-result v0

    .line 209
    .local v0, "extWindowLayer":I
    if-lez v0, :cond_5d

    .line 210
    return v0

    .line 134
    .end local v0    # "extWindowLayer":I
    :sswitch_e
    const/16 v0, 0xe

    return v0

    .line 106
    :sswitch_11
    const/4 v0, 0x1

    return v0

    .line 131
    :sswitch_13
    const/16 v0, 0xd

    return v0

    .line 204
    :sswitch_16
    const/16 v0, 0x23

    return v0

    .line 174
    :sswitch_19
    const/16 v0, 0x18

    return v0

    .line 116
    :sswitch_1c
    const/4 v0, 0x4

    return v0

    .line 165
    :sswitch_1e
    const/16 v0, 0x16

    return v0

    .line 189
    :sswitch_21
    const/16 v0, 0x1e

    return v0

    .line 201
    :sswitch_24
    const/16 v0, 0x22

    return v0

    .line 112
    :sswitch_27
    const/4 v0, 0x3

    return v0

    .line 119
    :sswitch_29
    const/4 v0, 0x5

    return v0

    .line 138
    :sswitch_2b
    return v0

    .line 178
    :sswitch_2c
    const/16 v0, 0x19

    return v0

    .line 172
    :sswitch_2f
    const/16 v0, 0x17

    return v0

    .line 182
    :sswitch_32
    return v1

    .line 191
    :sswitch_33
    const/16 v0, 0x1f

    return v0

    .line 145
    :sswitch_36
    const/16 v0, 0x14

    return v0

    .line 152
    :sswitch_39
    invoke-static {}, Lcom/android/server/wm/CoverPolicyController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    .line 153
    .local v2, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v2, :cond_58

    iget v3, v2, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v3, v0, :cond_4f

    iget v0, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4f

    iget v0, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_58

    .line 157
    :cond_4f
    const/16 v0, 0x833

    if-eq p0, v0, :cond_57

    iget-boolean v0, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_58

    .line 159
    :cond_57
    return v1

    .line 162
    :cond_58
    const/16 v0, 0x15

    return v0

    .line 126
    .end local v2    # "coverState":Lcom/samsung/android/cover/CoverState;
    :sswitch_5b
    const/4 v0, 0x7

    return v0

    .line 216
    :cond_5d
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_60
    .sparse-switch
        0x82f -> :sswitch_5b
        0x833 -> :sswitch_39
        0x8b2 -> :sswitch_36
        0x8b3 -> :sswitch_33
        0x8b4 -> :sswitch_32
        0x8de -> :sswitch_36
        0x8df -> :sswitch_36
        0x8e2 -> :sswitch_2f
        0x8e8 -> :sswitch_2c
        0x8e9 -> :sswitch_2f
        0x960 -> :sswitch_2b
        0x961 -> :sswitch_2c
        0x962 -> :sswitch_5b
        0x963 -> :sswitch_29
        0x965 -> :sswitch_2c
        0x966 -> :sswitch_27
        0x967 -> :sswitch_24
        0x968 -> :sswitch_21
        0x96b -> :sswitch_39
        0x96c -> :sswitch_5b
        0x96e -> :sswitch_1e
        0x96f -> :sswitch_36
        0x97e -> :sswitch_27
        0x97f -> :sswitch_1c
        0x988 -> :sswitch_2f
        0x989 -> :sswitch_2f
        0x98a -> :sswitch_19
        0xa28 -> :sswitch_16
        0xa29 -> :sswitch_32
        0xa3a -> :sswitch_13
        0xa3b -> :sswitch_24
        0xa3c -> :sswitch_11
        0xa40 -> :sswitch_e
    .end sparse-switch
.end method

.method public static shouldHideWindowOnFixedRotationAnim(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 402
    const/16 v0, 0x7df

    if-eq p0, v0, :cond_9

    .line 406
    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    return v0

    .line 404
    :cond_9
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract canBeForceHiddenByAodLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract clearKeyCustomizeEvent(IIZZ)V
.end method

.method public abstract clearKeyCustomizeEventByKeyCode(IIZ)V
.end method

.method public abstract clearOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public getDexMode()I
    .registers 2

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;
.end method

.method public abstract getKeyCustomizeEventAll(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$KeyCustomizeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakingUpReason()I
.end method

.method public abstract handleNotifyPogoKeyboardStatus(Z)V
.end method

.method public abstract init()V
.end method

.method public abstract interceptKeyBeforeQuickAccess(IFF)Z
.end method

.method public abstract isFullscreenNavigationBarGestureEnabled()Z
.end method

.method public abstract isInteractionControlEnabled()Z
.end method

.method public isKeyguardOccluded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNavBarImeBtnEnabled()Z
.end method

.method public abstract isReducedAnimEnabled()Z
.end method

.method public abstract isSBikeModeEnabled()Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract keyguardGoingAwayWithFingerprintUnlock(Z)V
.end method

.method public abstract launchHomeForDesktopMode(I)V
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract notifyRequestedGameToolsWin(Z)V
.end method

.method public onDexModeChangedLw(I)V
    .registers 2
    .param p1, "dexMode"    # I

    .line 459
    return-void
.end method

.method public onKeyguardOccludedChangedLw(ZI)V
    .registers 3
    .param p1, "occluded"    # Z
    .param p2, "displayId"    # I

    .line 455
    return-void
.end method

.method public abstract onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
.end method

.method public abstract onLockTaskStateChanged(I)V
.end method

.method public abstract putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;)V
.end method

.method public abstract removeKeyCustomizeEvent(IIIZ)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract restartOneHandOpService()V
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract setDeadzoneHole(Landroid/os/Bundle;)V
.end method

.method public abstract setDefaultDisplaySizeDensity(IIII)V
.end method

.method public abstract setOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setRotation(I)V
.end method

.method public abstract setSafeModeReason(IIIIILjava/lang/String;)V
.end method

.method public abstract setTspStateManagerPackagePolicyDataMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startLockscreenFingerprintAuth()V
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract updateTspImePolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
.end method

.method public abstract updateTspWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method
