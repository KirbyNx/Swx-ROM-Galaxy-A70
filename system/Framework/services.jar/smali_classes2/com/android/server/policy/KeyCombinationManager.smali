.class public Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;
    }
.end annotation


# static fields
.field private static final CLASS_NAME_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility.interactioncontrol.AccessControlReceiver"

.field private static final GLOBAL_ACTION_DELAY_MILLIS:I = 0x3e8

.field private static final INTENT_ACTION_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility.TOGGLE_MODE"

.field private static final INTERACTION_CONTROL_TIMEOUT:I = 0x7d0

.field private static final KEY_APP_SWITCH:I = 0x5

.field private static final KEY_BACK:I = 0x4

.field public static final KEY_COMBINATION_DEBOUNCE_DELAY_MILLIS:I = 0x96

.field private static final KEY_HOME:I = 0x3

.field private static final KEY_POWER:I = 0x2

.field private static final KEY_SYSTEM_SIZE:I = 0x6

.field private static final KEY_VOLUME_DOWN:I = 0x0

.field private static final KEY_VOLUME_UP:I = 0x1

.field private static final LOCK_TASK_MODE_TIMEOUT:I = 0x1f4

.field private static final PACKAGE_NAME_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility"

.field private static final RESET_HOME_KEY_TIMEOUT:I = 0xbb8

.field private static final RESET_VOLUME_KEY_TIMEOUT:I = 0x1388

.field private static final SIDE_KEY_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x3e7L

.field private static final TAG:Ljava/lang/String; = "KeyCombinationManager"


# instance fields
.field private final mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConsumed:[Z

.field mContext:Landroid/content/Context;

.field private final mGlobalActionChord:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private final mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

.field private final mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

.field private mIsDirectAccessShortPressed:Z

.field private mIsScreenshotTriggered:Z

.field private mIsVoiceAssistantShortPressed:Z

.field private mKeyUpTime:[J

.field mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field private final mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

.field private final mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

.field private final mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotTriggeredTime:J

.field private final mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

.field private mTime:[J

.field private mTriggered:[Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsScreenshotTriggered:Z

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotTriggeredTime:J

    .line 499
    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$vKEbwVxVXT16tHVKI8AV6yD6qIw;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$vKEbwVxVXT16tHVKI8AV6yD6qIw;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    .line 509
    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tAOCu4BhymmvdCgZcH5MLeoxYqs;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tAOCu4BhymmvdCgZcH5MLeoxYqs;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    .line 517
    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$I57FqZDxXhfP45yyPu--PVMFFSM;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$I57FqZDxXhfP45yyPu--PVMFFSM;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    .line 554
    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$kNWE0WiYVKM50cR3uKHrGeIvF4o;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$kNWE0WiYVKM50cR3uKHrGeIvF4o;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    .line 570
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;-><init>(Lcom/android/server/policy/KeyCombinationManager;ZLcom/android/server/policy/KeyCombinationManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    .line 571
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;-><init>(Lcom/android/server/policy/KeyCombinationManager;ZLcom/android/server/policy/KeyCombinationManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    .line 635
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    .line 663
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z

    .line 729
    sget-object v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;->INSTANCE:Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    .line 766
    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tS5GAiz8AKfzzDBZd--BRw63Hzk;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tS5GAiz8AKfzzDBZd--BRw63Hzk;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mGlobalActionChord:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 84
    const/4 v1, 0x6

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    .line 85
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    .line 86
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    .line 89
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mKeyUpTime:[J

    .line 94
    :try_start_61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordEnabled:Z
    :try_end_6e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_6e} :catch_6f

    .line 98
    goto :goto_72

    .line 96
    :catch_6f
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordEnabled:Z

    .line 100
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_72
    return-void
.end method

.method static synthetic access$102(Lcom/android/server/policy/KeyCombinationManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCombinationManager;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/KeyCombinationManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/KeyCombinationManager;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z

    return p1
.end method

.method private cancelPendingAccessibilityShortcutChordAction()V
    .registers 3

    .line 560
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method private cancelPendingGlobalActionChord()V
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mGlobalActionChord:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method private cancelPendingInteractionControlChordAction()V
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method private cancelPendingLockTaskModePinnedChordAction()V
    .registers 3

    .line 740
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method private checkDirectAccessTriggered()V
    .registers 2

    .line 638
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    if-eqz v0, :cond_1a

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    .line 641
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->keyCombinationPolicy()Z

    move-result v0

    if-nez v0, :cond_e

    .line 642
    return-void

    .line 645
    :cond_e
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/server/policy/KeyCombinationManager;->setAppOpsPermissionIfNeeded(I)V

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startDirectAccess()V

    .line 648
    :cond_1a
    return-void
.end method

.method private checkVoiceAssistantTriggered()V
    .registers 3

    .line 666
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z

    if-eqz v0, :cond_2e

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z

    .line 669
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->keyCombinationPolicy()Z

    move-result v0

    if-nez v0, :cond_e

    .line 670
    return-void

    .line 673
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBixbySetupWizardMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 674
    const-string v0, "KeyCombinationManager"

    const-string v1, "Voice Assistant is blocked by bixby setup wizard policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 678
    :cond_20
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->callAccessibilityTalkbackMode()V

    .line 679
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDirectAccessSettings()V

    .line 681
    :cond_2e
    return-void
.end method

.method private interceptAccessibilityShortcut()V
    .registers 9

    .line 532
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->isAccessibilityShortcutAvailable()Z

    move-result v0

    const-string v1, "KeyCombinationManager"

    if-nez v0, :cond_e

    .line 533
    const-string v0, "Accessibility Shortcut is unavailable."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 537
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aget-boolean v3, v0, v2

    if-eqz v3, :cond_70

    const/4 v3, 0x1

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_70

    const/4 v4, 0x2

    aget-boolean v0, v0, v4

    if-nez v0, :cond_70

    .line 538
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v4, v0, v2

    aget-wide v6, v0, v3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x96

    cmp-long v0, v4, v6

    if-gez v0, :cond_70

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptAccessibilityShortcut - success and waiting long press : volumeDownKeyTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "volumeUpKeyTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v0, v2

    .line 543
    aput-boolean v3, v0, v3

    .line 544
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingAccessibilityShortcutChordAction()V

    .line 545
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    :cond_70
    return-void
.end method

.method private interceptGlobalActionChord()V
    .registers 11

    .line 748
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_c

    .line 749
    const-string v0, "KeyCombinationManager"

    const-string v1, "Global Action is canceled because of factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 753
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_4a

    const/4 v2, 0x2

    aget-boolean v3, v0, v2

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4a

    .line 754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 755
    .local v4, "now":J
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v6, v0, v1

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4a

    aget-wide v6, v0, v2

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4a

    .line 757
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v0, v1

    .line 758
    aput-boolean v3, v0, v2

    .line 759
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 760
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingGlobalActionChord()V

    .line 761
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mGlobalActionChord:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    .end local v4    # "now":J
    :cond_4a
    return-void
.end method

.method private interceptInteractionControlChord()V
    .registers 15

    .line 598
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v2, v0, v1

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x96

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v2, :cond_50

    aget-boolean v2, v0, v8

    if-eqz v2, :cond_50

    aget-boolean v2, v0, v9

    if-nez v2, :cond_50

    aget-boolean v0, v0, v7

    if-nez v0, :cond_50

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 600
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v12, v0, v1

    add-long/2addr v12, v5

    cmp-long v2, v10, v12

    if-gtz v2, :cond_50

    aget-wide v12, v0, v8

    add-long/2addr v12, v5

    cmp-long v0, v10, v12

    if-gtz v0, :cond_50

    .line 602
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v1, v0, v1

    .line 603
    aput-boolean v1, v0, v8

    .line 604
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 605
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 606
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 609
    iput-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsVoiceAssistantShortPressed:Z

    goto :goto_50

    .line 611
    :cond_4e
    iput-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    .line 616
    .end local v10    # "now":J
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v2, v0, v9

    if-eqz v2, :cond_86

    aget-boolean v2, v0, v7

    if-eqz v2, :cond_86

    aget-boolean v2, v0, v1

    if-nez v2, :cond_86

    aget-boolean v0, v0, v8

    if-nez v0, :cond_86

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 618
    .restart local v10    # "now":J
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v12, v0, v7

    add-long/2addr v12, v5

    cmp-long v2, v10, v12

    if-gtz v2, :cond_86

    aget-wide v12, v0, v9

    add-long/2addr v12, v5

    cmp-long v0, v10, v12

    if-gtz v0, :cond_86

    .line 620
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v1, v0, v7

    .line 621
    aput-boolean v1, v0, v9

    .line 622
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 623
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    .end local v10    # "now":J
    :cond_86
    return-void
.end method

.method private interceptScreenshotChord()V
    .registers 16

    .line 447
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    .line 449
    .local v0, "isScreenOnFully":Z
    iget-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordEnabled:Z

    const-string v2, "KeyCombinationManager"

    if-eqz v1, :cond_b1

    if-nez v0, :cond_12

    goto/16 :goto_b1

    .line 459
    :cond_12
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x0

    aget-boolean v4, v1, v3

    const-wide/16 v5, 0x96

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_5c

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_5c

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 461
    .local v9, "now":J
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v11, v1, v3

    add-long/2addr v11, v5

    cmp-long v4, v9, v11

    if-gtz v4, :cond_5c

    aget-wide v11, v1, v8

    add-long/2addr v11, v5

    cmp-long v1, v9, v11

    if-gtz v1, :cond_5c

    .line 463
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v7, v1, v3

    .line 464
    aput-boolean v7, v1, v8

    .line 465
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 467
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_53

    .line 468
    iput-boolean v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsScreenshotTriggered:Z

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotTriggeredTime:J

    .line 470
    const-string/jumbo v1, "interceptScreenshotChord triggered"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 472
    :cond_53
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1, v7, v3}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    .line 478
    .end local v9    # "now":J
    :cond_5c
    :goto_5c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_b0

    .line 479
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v4, v1, v3

    if-nez v4, :cond_b0

    aget-boolean v1, v1, v8

    if-nez v1, :cond_b0

    iget-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsScreenshotTriggered:Z

    if-eqz v1, :cond_b0

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 481
    .restart local v9    # "now":J
    iget-wide v11, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotTriggeredTime:J

    sub-long v11, v9, v11

    .line 482
    .local v11, "interval":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptScreenshotChord interval="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mKeyUpTime:[J

    aget-wide v13, v1, v3

    add-long/2addr v13, v5

    cmp-long v2, v9, v13

    if-gtz v2, :cond_aa

    aget-wide v1, v1, v8

    add-long/2addr v1, v5

    cmp-long v1, v9, v1

    if-gtz v1, :cond_aa

    const-wide/16 v1, 0x3e7

    cmp-long v1, v11, v1

    if-gtz v1, :cond_aa

    .line 487
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1, v7, v3}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    .line 491
    :cond_aa
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotTriggeredTime:J

    .line 492
    iput-boolean v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsScreenshotTriggered:Z

    .line 495
    .end local v9    # "now":J
    .end local v11    # "interval":J
    :cond_b0
    return-void

    .line 450
    :cond_b1
    :goto_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start screenshot. screenOnFully="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private interceptStopLockTaskModePinnedChord()V
    .registers 13

    .line 706
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLockTaskModeEnabled()Z

    move-result v0

    .line 707
    .local v0, "lockTaskModeEnabled":Z
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTouchExplorationEnabled()Z

    move-result v1

    .line 708
    .local v1, "touchExplorationEnabled":Z
    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled()Z

    move-result v2

    .line 709
    .local v2, "interactionControlEnabled":Z
    if-eqz v0, :cond_55

    if-nez v1, :cond_55

    if-eqz v2, :cond_1f

    goto :goto_55

    .line 717
    :cond_1f
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x5

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_54

    const/4 v5, 0x4

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_54

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 719
    .local v6, "now":J
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v8, v3, v4

    const-wide/16 v10, 0x96

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-gtz v8, :cond_54

    aget-wide v8, v3, v5

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-gtz v3, :cond_54

    .line 721
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v8, 0x1

    aput-boolean v8, v3, v4

    .line 722
    aput-boolean v8, v3, v5

    .line 723
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingLockTaskModePinnedChordAction()V

    .line 724
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    .end local v6    # "now":J
    :cond_54
    return-void

    .line 710
    :cond_55
    :goto_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not stop SystemLockTaskMode. lockTaskModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " touchExplorationEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " interactionControlEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyCombinationManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method private isAccessibilityShortcutAvailable()Z
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    return v0
.end method

.method private keyCombinationPolicy()Z
    .registers 6

    .line 689
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SBIKE_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSBikeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 690
    const-string v0, "KeyCombinationManager"

    const-string v2, "block to trigger accessiblity when BikeMode is enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040130

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "S bike mode"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    return v4

    .line 698
    .end local v0    # "str":Ljava/lang/String;
    :cond_34
    return v1
.end method

.method static synthetic lambda$new$4()V
    .registers 4

    .line 730
    const-string v0, "KeyCombinationManager"

    const-string v1, "Stop Lock Task Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 736
    goto :goto_24

    .line 734
    :catch_f
    move-exception v1

    .line 735
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to reach activity manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method private setAppOpsPermissionIfNeeded(I)V
    .registers 7
    .param p1, "code"    # I

    .line 653
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 654
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 655
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppOpsPermissionIfNeeded code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p_name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCombinationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-eqz v0, :cond_59

    .line 657
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/AppOpsManager;->semSetMode(IILjava/lang/String;I)V

    .line 659
    :cond_59
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 780
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 781
    const-string v0, " PowerKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 782
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 783
    const-string v0, " VolumeDownKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 785
    const-string v0, " VolumeUpKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 786
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "HomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 787
    const-string v0, " HomeKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 789
    const-string v0, " BackKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 791
    const-string v0, " RecentKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 792
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_ba

    .line 793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsScreenshotTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsScreenshotTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 795
    :cond_ba
    return-void
.end method

.method getKeyCombinationTime(I)J
    .registers 11
    .param p1, "flags"    # I

    .line 410
    and-int/lit16 v0, p1, 0x400

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 411
    return-wide v1

    .line 414
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordEnabled:Z

    const/4 v3, 0x2

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    if-eqz v0, :cond_1f

    .line 415
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v0, v6

    if-eqz v7, :cond_1f

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1f

    .line 416
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    .line 419
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->isAccessibilityShortcutAvailable()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_46

    .line 420
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v8, v0, v7

    if-eqz v8, :cond_36

    aget-boolean v0, v0, v6

    if-nez v0, :cond_36

    .line 421
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    .line 422
    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v8, v0, v6

    if-eqz v8, :cond_46

    aget-boolean v0, v0, v7

    if-nez v0, :cond_46

    .line 423
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    .line 426
    :cond_46
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVoiceAssistantTriggeredByShortcut()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDirectAccessEnabled:Z

    if-eqz v0, :cond_68

    .line 428
    :cond_58
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v8, v0, v7

    if-eqz v8, :cond_68

    aget-boolean v0, v0, v3

    if-nez v0, :cond_68

    .line 429
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    .line 432
    :cond_68
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz v0, :cond_99

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v8, v0, v6

    if-eqz v8, :cond_89

    const/4 v8, 0x3

    aget-boolean v0, v0, v8

    if-nez v0, :cond_89

    .line 434
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    .line 435
    :cond_89
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v0, v7

    if-eqz v6, :cond_99

    aget-boolean v0, v0, v3

    if-nez v0, :cond_99

    .line 436
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    .line 440
    :cond_99
    return-wide v1
.end method

.method interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 103
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 104
    .local v0, "interactive":Z
    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 105
    .local v3, "down":Z
    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 107
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_20

    .line 108
    return-void

    .line 111
    :cond_20
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_3b

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptKeyCombinationBeforeQueueing keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KeyCombinationManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3b
    const/4 v5, 0x3

    if-eq v4, v5, :cond_1d6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1b2

    const/16 v5, 0xbb

    if-eq v4, v5, :cond_18b

    const-wide/16 v5, 0x1388

    packed-switch v4, :pswitch_data_234

    goto/16 :goto_232

    .line 209
    :pswitch_4c
    const/4 v5, 0x2

    if-eqz v3, :cond_74

    .line 210
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v6, v5

    if-nez v7, :cond_232

    .line 211
    aput-boolean v1, v6, v5

    .line 212
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    .line 213
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 215
    if-eqz v0, :cond_232

    .line 217
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    .line 222
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_232

    .line 223
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptGlobalActionChord()V

    goto/16 :goto_232

    .line 228
    :cond_74
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    .line 230
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_8a

    .line 231
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mKeyUpTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 232
    if-eqz v0, :cond_93

    .line 233
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    goto :goto_93

    .line 236
    :cond_8a
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->cancelPendingTakeScreenshotRunnable()V

    .line 239
    :cond_93
    :goto_93
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 241
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_9d

    .line 242
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingGlobalActionChord()V

    .line 245
    :cond_9d
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_aa

    .line 246
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkVoiceAssistantTriggered()V

    goto/16 :goto_232

    .line 248
    :cond_aa
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkDirectAccessTriggered()V

    .line 251
    goto/16 :goto_232

    .line 116
    :pswitch_af
    if-eqz v3, :cond_f6

    .line 117
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v7, v2

    if-nez v7, :cond_232

    .line 118
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v5, v2

    .line 123
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v2

    .line 124
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 125
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 127
    if-eqz v0, :cond_232

    .line 129
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    .line 132
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptAccessibilityShortcut()V

    .line 134
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_ed

    .line 135
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    .line 137
    :cond_ed
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_232

    .line 138
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptGlobalActionChord()V

    goto/16 :goto_232

    .line 143
    :cond_f6
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v2

    .line 146
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_113

    .line 147
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mKeyUpTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 148
    if-eqz v0, :cond_11c

    .line 149
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    goto :goto_11c

    .line 152
    :cond_113
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->cancelPendingTakeScreenshotRunnable()V

    .line 155
    :cond_11c
    :goto_11c
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingAccessibilityShortcutChordAction()V

    .line 157
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_12a

    .line 158
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 160
    :cond_12a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_GLOBAL_ACTION_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v1, :cond_232

    .line 161
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingGlobalActionChord()V

    goto/16 :goto_232

    .line 168
    :pswitch_133
    if-eqz v3, :cond_168

    .line 169
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_232

    .line 170
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v5, v1

    .line 175
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v5, v1

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 177
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 179
    if-eqz v0, :cond_232

    .line 181
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptAccessibilityShortcut()V

    .line 184
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    goto/16 :goto_232

    .line 189
    :cond_168
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v5, v1

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingAccessibilityShortcutChordAction()V

    .line 196
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 199
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_186

    .line 200
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkVoiceAssistantTriggered()V

    goto/16 :goto_232

    .line 202
    :cond_186
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkDirectAccessTriggered()V

    .line 205
    goto/16 :goto_232

    .line 274
    :cond_18b
    const/4 v5, 0x5

    if-eqz v3, :cond_1a9

    .line 275
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v6, v5

    if-nez v7, :cond_232

    .line 276
    aput-boolean v1, v6, v5

    .line 277
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    .line 278
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 279
    if-eqz v0, :cond_232

    .line 280
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptStopLockTaskModePinnedChord()V

    goto/16 :goto_232

    .line 284
    :cond_1a9
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingLockTaskModePinnedChordAction()V

    .line 289
    goto/16 :goto_232

    .line 255
    :cond_1b2
    if-eqz v3, :cond_1ce

    .line 256
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v6, v5

    if-nez v7, :cond_232

    .line 257
    aput-boolean v1, v6, v5

    .line 258
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    .line 259
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 260
    if-eqz v0, :cond_232

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptStopLockTaskModePinnedChord()V

    goto :goto_232

    .line 265
    :cond_1ce
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingLockTaskModePinnedChordAction()V

    .line 270
    goto :goto_232

    .line 293
    :cond_1d6
    if-eqz v3, :cond_214

    .line 294
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_232

    .line 295
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_1f6

    .line 296
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :cond_1f6
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    .line 302
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    .line 303
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 305
    if-eqz v0, :cond_232

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 306
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_232

    .line 307
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    goto :goto_232

    .line 311
    :cond_214
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_223

    .line 312
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    :cond_223
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    .line 316
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_232

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 323
    :cond_232
    :goto_232
    return-void

    nop

    :pswitch_data_234
    .packed-switch 0x18
        :pswitch_133
        :pswitch_af
        :pswitch_4c
    .end packed-switch
.end method

.method isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 327
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 329
    .local v1, "down":Z
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_18

    .line 330
    return v3

    .line 333
    :cond_18
    const/4 v4, 0x3

    if-eq v0, v4, :cond_5f

    const/4 v4, 0x4

    if-eq v0, v4, :cond_54

    const/16 v4, 0xbb

    if-eq v0, v4, :cond_48

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 355
    :pswitch_26
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x2

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_6a

    .line 356
    if-nez v1, :cond_31

    .line 357
    aput-boolean v3, v4, v5

    .line 359
    :cond_31
    return v2

    .line 335
    :pswitch_32
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v5, v4, v3

    if-eqz v5, :cond_6a

    .line 336
    if-nez v1, :cond_3c

    .line 337
    aput-boolean v3, v4, v3

    .line 339
    :cond_3c
    return v2

    .line 345
    :pswitch_3d
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_6a

    .line 346
    if-nez v1, :cond_47

    .line 347
    aput-boolean v3, v4, v2

    .line 349
    :cond_47
    return v2

    .line 385
    :cond_48
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x5

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_6a

    .line 386
    if-nez v1, :cond_53

    .line 387
    aput-boolean v3, v4, v5

    .line 389
    :cond_53
    return v2

    .line 375
    :cond_54
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v6, v5, v4

    if-eqz v6, :cond_6a

    .line 376
    if-nez v1, :cond_5e

    .line 377
    aput-boolean v3, v5, v4

    .line 379
    :cond_5e
    return v2

    .line 365
    :cond_5f
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v6, v5, v4

    if-eqz v6, :cond_6a

    .line 366
    if-nez v1, :cond_69

    .line 367
    aput-boolean v3, v5, v4

    .line 369
    :cond_69
    return v2

    .line 395
    :cond_6a
    :goto_6a
    return v3

    nop

    :pswitch_data_6c
    .packed-switch 0x18
        :pswitch_3d
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method

.method isTriggeredKeyCombination()Z
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_e

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_d

    goto :goto_e

    .line 406
    :cond_d
    return v1

    .line 401
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TriggeredKeyCombination volumeDownTriggered="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " volumeUpTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCombinationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v3
.end method

.method public synthetic lambda$new$0$KeyCombinationManager()V
    .registers 4

    .line 500
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    .line 501
    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset volume down triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v0, v1

    .line 505
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->cancelPendingTakeScreenshotRunnable()V

    .line 507
    return-void
.end method

.method public synthetic lambda$new$1$KeyCombinationManager()V
    .registers 4

    .line 510
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    .line 511
    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset volume up triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 514
    :cond_13
    return-void
.end method

.method public synthetic lambda$new$2$KeyCombinationManager()V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_16

    .line 519
    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset home triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 521
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingInteractionControlChordAction()V

    .line 523
    :cond_16
    return-void
.end method

.method public synthetic lambda$new$3$KeyCombinationManager()V
    .registers 3

    .line 555
    const-string v0, "KeyCombinationManager"

    const-string v1, "Accessibility Shortcut is performed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 557
    return-void
.end method

.method public synthetic lambda$new$5$KeyCombinationManager()V
    .registers 4

    .line 767
    const-string v0, "KeyCombinationManager"

    const-string/jumbo v1, "show Global Action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const-string v2, "Power - Long Press - Global Actions"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 770
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 772
    return-void
.end method
