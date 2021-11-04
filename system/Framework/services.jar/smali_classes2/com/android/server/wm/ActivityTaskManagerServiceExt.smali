.class public Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;,
        Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;
    }
.end annotation


# static fields
.field static final ACTION_KDDI_SCREEN_PINNING_CONDITION:Ljava/lang/String; = "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

.field static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final FOLDING_TIME_MARGIN_MILLIS_TO_SHOW_GUIDE:J = 0x2710L

.field private static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field private static final META_DATA_AUTO_OPEN_LAST_APP_IGNORE:Ljava/lang/String; = "com.samsung.android.dex.autoopenlastapp.ignore"

.field static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field private static final SAMSUNG_INCALL_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.incallui"

.field private static final SCROLL_FILTER_BLOCK_LIST_KEY:Ljava/lang/String; = "scroll_filter_block_list"

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerServiceExt"


# instance fields
.field mAppContinuityGuideConfirmation:Lcom/android/server/wm/AppContinuityGuideConfirmation;

.field private mAppLockIsInMultiWindowMode:Z

.field final mContext:Landroid/content/Context;

.field final mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field mCurrentTaskRecordId:I

.field private mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

.field private mFoldedTime:J

.field mFrontScreenOnWhenAppContinuityMode:Z

.field mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field final mHighRefreshRateList:Lcom/android/server/wm/BlockListManager;

.field mIsDoNotShowAgainCheckedForRestartAppDialog:I

.field private mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mLastDefaultDisplayDeviceType:I

.field private mLastMainDisplayTopTaskId:I

.field final mLowRefreshRateList:Lcom/android/server/wm/BlockListManager;

.field public mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

.field mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

.field mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

.field mRestartingTaskId:I

.field mRestoreLastMainTopTaskAfterResumeTop:Z

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field final mScrollFilterBlockList:Lcom/android/server/wm/BlockListManager;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mShouldShowLastMainDisplayTopTask:Z

.field private mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field final mStartedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSysUiPid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCurrentTaskRecordId:I

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 213
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 269
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 979
    nop

    .line 980
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SCROLL_FILTER_BLOCK_LIST:Z

    if-eqz v3, :cond_27

    new-instance v3, Lcom/android/server/wm/BlockListManager;

    invoke-direct {v3}, Lcom/android/server/wm/BlockListManager;-><init>()V

    goto :goto_28

    :cond_27
    move-object v3, v1

    :goto_28
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mScrollFilterBlockList:Lcom/android/server/wm/BlockListManager;

    .line 989
    nop

    .line 990
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_LOW_REFRESH_RATE_LIST:Z

    if-eqz v3, :cond_35

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    goto :goto_36

    :cond_35
    move-object v3, v1

    :goto_36
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/android/server/wm/BlockListManager;

    .line 1006
    nop

    .line 1007
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_BLOCK_LIST:Z

    if-eqz v3, :cond_43

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    goto :goto_44

    :cond_43
    move-object v3, v1

    :goto_44
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateList:Lcom/android/server/wm/BlockListManager;

    .line 1024
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastDefaultDisplayDeviceType:I

    .line 1026
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestoreLastMainTopTaskAfterResumeTop:Z

    .line 1027
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    .line 1028
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mShouldShowLastMainDisplayTopTask:Z

    .line 1204
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    .line 1205
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mIsDoNotShowAgainCheckedForRestartAppDialog:I

    .line 1206
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartingTaskId:I

    .line 1374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFoldedTime:J

    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFrontScreenOnWhenAppContinuityMode:Z

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 167
    new-instance v0, Lcom/android/server/wm/CoreStateController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/CoreStateController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 168
    return-void
.end method

.method private changeAppLockActivityToService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 561
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v0

    .line 562
    .local v1, "action":Ljava/lang/String;
    :goto_17
    if-eqz v1, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 563
    invoke-virtual {v2}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 564
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 566
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v4, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v4, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 570
    .local v10, "canShowWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    .line 571
    const-string v3, "ActivityTaskManagerServiceExt"

    const-string v4, "Start AppLock Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 573
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_64

    .line 574
    move v9, v4

    goto :goto_65

    :cond_64
    move v9, v5

    .line 575
    .local v9, "displayId":I
    :goto_65
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v0

    move v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZZI)V

    .line 578
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v9    # "displayId":I
    .end local v10    # "canShowWhenLocked":Z
    :cond_6e
    return-void
.end method

.method private checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZZI)V
    .registers 21
    .param p1, "lastIntent"    # Landroid/content/Intent;
    .param p2, "showWhenLocked"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "fromNotification"    # Z
    .param p5, "withoutAnimation"    # Z
    .param p6, "displayId"    # I

    .line 637
    move-object v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    const-string v1, "ActivityTaskManagerServiceExt"

    :try_start_7
    invoke-virtual {p0, v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockLockedVerifyingState(Ljava/lang/String;)[Z

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_6f

    .line 641
    .local v0, "lockStateAry":[Z
    nop

    .line 642
    const/4 v2, 0x0

    aget-boolean v11, v0, v2

    .line 643
    .local v11, "isLocked":Z
    if-eqz v11, :cond_6e

    .line 644
    const/4 v2, 0x1

    aget-boolean v12, v0, v2

    .line 645
    .local v12, "isVerifying":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppLock checkAppLockState locked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " verifying:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isInMultiWindowMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showWhenLocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v12, :cond_4e

    if-eqz v9, :cond_6e

    .line 648
    :cond_4e
    invoke-virtual {p0, v10, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 649
    new-instance v13, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;

    .local v13, "r":Ljava/lang/Runnable;
    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p2

    move/from16 v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZZLandroid/content/Intent;)V

    .line 671
    if-eqz p4, :cond_67

    .line 672
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    goto :goto_6e

    .line 674
    :cond_67
    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 678
    .end local v12    # "isVerifying":Z
    .end local v13    # "r":Ljava/lang/Runnable;
    :cond_6e
    :goto_6e
    return-void

    .line 638
    .end local v0    # "lockStateAry":[Z
    .end local v11    # "isLocked":Z
    :catch_6f
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception while checking App Lock locked / verifying state : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    return-void
.end method

.method private getAboveHomeStack(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 1119
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1120
    return-object v0

    .line 1122
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1123
    .local v1, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v0

    .line 1124
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_12
    if-eqz v1, :cond_1c

    if-nez v2, :cond_17

    goto :goto_1c

    .line 1127
    :cond_17
    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method private getDefaultHomePackageName()Ljava/lang/String;
    .registers 4

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 421
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_21
    return-object v2
.end method

.method private getDesktopModeManagerInternal()Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_e

    .line 428
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 431
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    return-object v0
.end method

.method private getRealActivityPackageName(Lcom/android/server/wm/Task;)Ljava/lang/String;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1359
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 1360
    .local v0, "packageName":Ljava/lang/String;
    :goto_d
    if-nez v0, :cond_3d

    .line 1361
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1362
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1a

    goto :goto_1d

    .line 1367
    :cond_1a
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_3d

    .line 1363
    :cond_1d
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restartTaskLocked: Cannot restart task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because rootActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return-object v1

    .line 1369
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private isCallerSetSelf(ILjava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_21
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    move-object v0, v3

    .line 858
    if-eqz v0, :cond_1d

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    :catchall_1f
    move-exception v3

    goto :goto_4a

    .line 855
    :catch_21
    move-exception v3

    .line 856
    .local v3, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v4, "ActivityTaskManagerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception - isCallerSetSelf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_1f

    .line 858
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_48

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v3, v4, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    return v1

    :goto_4a
    if-eqz v0, :cond_59

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v3, v4, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1
.end method

.method private isSystemUid(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 207
    if-eqz p1, :cond_d

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static isValidActivityForForeground(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 380
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 381
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 382
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 385
    const-string v2, "com.samsung.android.dex.autoopenlastapp.ignore"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 380
    :goto_30
    return v1
.end method

.method private keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "keepAlive"    # Z

    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 217
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_38

    .line 218
    if-eqz p2, :cond_35

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1c

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 222
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManagerServiceExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 226
    :cond_35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetActivityKeepAlive(Lcom/android/server/wm/ActivityRecord;)V

    .line 229
    :cond_38
    :goto_38
    return-void
.end method

.method public static synthetic lambda$P5dzo_YpPEP_xwWLaKZSFM3iMbg(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isValidActivityForForeground(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$changeAppLockActivityToServiceIfNeeded$5([ILcom/android/server/wm/Task;)V
    .registers 5
    .param p0, "activityCount"    # [I
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 551
    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 552
    return-void
.end method

.method static synthetic lambda$hasPackageTask$3(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p0, "activityType"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 445
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    if-ne v0, p0, :cond_18

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_18

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 447
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 445
    :goto_19
    return v0
.end method

.method static synthetic lambda$removeTaskByIdIfNeededLocked$4(I)[Ljava/lang/Integer;
    .registers 2
    .param p0, "x$0"    # I

    .line 499
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic lambda$startAppLockActivity$9(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "isSystemInSplitMode"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 720
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 723
    :cond_e
    return-void
.end method

.method private removeAllRecentTasksLocked(I)Z
    .registers 7
    .param p1, "flags"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_32

    .line 482
    if-nez v1, :cond_19

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_19

    .line 484
    goto :goto_2f

    .line 486
    :cond_19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 487
    .local v3, "tr":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 488
    goto :goto_2f

    .line 490
    :cond_2c
    invoke-direct {p0, v3, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByIdIfNeededLocked(Lcom/android/server/wm/Task;I)V

    .line 481
    .end local v3    # "tr":Lcom/android/server/wm/Task;
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 492
    .end local v1    # "i":I
    :cond_32
    return v2
.end method

.method private removeTaskByIdIfNeededLocked(Lcom/android/server/wm/Task;I)V
    .registers 8
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "flags"    # I

    .line 496
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq v0, v1, :cond_41

    .line 497
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 498
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$CDcei0uDpM4HG8RkKFuRjHUyMNE;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 497
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 500
    .local v0, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 503
    return-void

    .line 506
    .end local v0    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    and-int/lit8 v2, p2, 0x10

    const/4 v3, 0x1

    if-nez v2, :cond_4c

    move v2, v3

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    const-string/jumbo v4, "sem-remove-id-task"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 508
    return-void
.end method

.method private shouldRestartTask(Lcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1331
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1332
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_4f

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartingTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, v2, :cond_16

    goto :goto_4f

    .line 1337
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1338
    .local v1, "topRunning":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_1d

    .line 1339
    return v0

    .line 1342
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1344
    .local v2, "currentDisplayDeviceType":I
    if-nez v2, :cond_39

    .line 1345
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1346
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_38

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_38

    .line 1349
    :cond_35
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    return v0

    .line 1347
    :cond_38
    :goto_38
    return v0

    .line 1350
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_39
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4e

    .line 1351
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLastReportedDisplayDeviceType()I

    move-result v3

    .line 1352
    .local v3, "lastReportedDisplayDeviceType":I
    if-nez v3, :cond_4c

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatController:Lcom/android/server/wm/BoundsCompatController;

    .line 1353
    invoke-virtual {v4, p1}, Lcom/android/server/wm/BoundsCompatController;->shouldRestartInSubDisplay(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    nop

    .line 1352
    :goto_4d
    return v0

    .line 1355
    .end local v3    # "lastReportedDisplayDeviceType":I
    :cond_4e
    return v0

    .line 1335
    .end local v1    # "topRunning":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "currentDisplayDeviceType":I
    :cond_4f
    :goto_4f
    return v0
.end method


# virtual methods
.method anyExistingTaskForIdLocked(I)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "taskId"    # I

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method applyUnfoldingPolicyLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 1139
    if-nez p1, :cond_57

    .line 1140
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1141
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1142
    .local v1, "displayDeviceType":I
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastDefaultDisplayDeviceType:I

    if-eq v2, v1, :cond_57

    .line 1143
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3b

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semDisplayDeviceType Changed : from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastDefaultDisplayDeviceType:I

    .line 1145
    invoke-static {v3}, Landroid/content/res/Configuration;->displayDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static {v1}, Landroid/content/res/Configuration;->displayDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1144
    const-string v3, "ActivityTaskManagerServiceExt"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_3b
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastDefaultDisplayDeviceType:I

    .line 1150
    if-nez v1, :cond_57

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->restoreLastMainDisplayTopTaskIfNeededLocked()V

    .line 1175
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v2, :cond_57

    .line 1176
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1177
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1178
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_57

    .line 1179
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v4, "W004"

    invoke-static {v4, v3}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    .end local v0    # "globalConfig":Landroid/content/res/Configuration;
    .end local v1    # "displayDeviceType":I
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_57
    return-void
.end method

.method public changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "candidate"    # Lcom/android/server/wm/Task;

    .line 549
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 550
    .local v1, "activityCount":[I
    new-instance v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$w6wXnAq3XxpJhruq9goeC8nx5vk;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$w6wXnAq3XxpJhruq9goeC8nx5vk;-><init>([I)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 553
    aget v2, v1, v2

    if-le v2, v0, :cond_1d

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 555
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 554
    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToService(Lcom/android/server/wm/ActivityRecord;)V

    .line 557
    :cond_1d
    return-void
.end method

.method checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "source"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "changed":Z
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_15

    :cond_b
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_16

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_16

    .line 350
    :cond_15
    const/4 v0, 0x1

    .line 352
    :cond_16
    return v0
.end method

.method public clearAppLockedUnLockedApp()V
    .registers 5

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 806
    .local v0, "callerUid":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 809
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_17

    .line 810
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy;->clearAppLockedUnLockedApp()V

    .line 812
    :cond_17
    return-void

    .line 807
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot call clearAppLockedUnLockedApp()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method clearHomeStack(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 396
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 397
    .local v0, "defaultHomePkgName":Ljava/lang/String;
    :goto_8
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearHomeStack(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultHomePkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManagerServiceExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 401
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_3d

    .line 402
    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Y0M1BY31pSm5x38F9r7JllsyhpE;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Y0M1BY31pSm5x38F9r7JllsyhpE;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 415
    :cond_3d
    return-void
.end method

.method public getAppLockLaunchingState(Landroid/os/IBinder;[I)[Z
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 879
    .local v0, "returnArray":[Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_74

    .line 882
    .local v2, "ident":J
    :try_start_f
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 883
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_57

    .line 887
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isLaunchRequestedFromNotification()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_20

    .line 889
    aput-boolean v7, v0, v6

    goto :goto_25

    .line 892
    :cond_20
    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityRecord;->setLaunchingRequestFromNotification(Z)V

    .line 893
    aput-boolean v6, v0, v6

    .line 895
    :goto_25
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_37

    .line 897
    aput-boolean v6, v0, v8

    goto :goto_39

    .line 899
    :cond_37
    aput-boolean v7, v0, v8

    .line 901
    :goto_39
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 907
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v6

    aput-boolean v6, v0, v7

    .line 909
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    if-ne v6, v8, :cond_4c

    .line 910
    aput v8, p2, v7

    goto :goto_4e

    .line 912
    :cond_4c
    aput v7, p2, v7
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_6e

    .line 915
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :goto_4e
    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    .end local v2    # "ident":J
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 918
    return-object v0

    .line 884
    .restart local v2    # "ident":J
    .restart local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_57
    :try_start_57
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLockLaunchingFromActivity: No activity record matching token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "returnArray":[Z
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "displayId":[I
    throw v5
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_6e

    .line 915
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "returnArray":[Z
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "displayId":[I
    :catchall_6e
    move-exception v4

    :try_start_6f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    nop

    .end local v0    # "returnArray":[Z
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "displayId":[I
    throw v4

    .line 917
    .end local v2    # "ident":J
    .restart local v0    # "returnArray":[Z
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "displayId":[I
    :catchall_74
    move-exception v2

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getAppLockLockedVerifyingState(Ljava/lang/String;)[Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 934
    .local v0, "returnArray":[Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_1f

    .line 935
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 936
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 938
    :cond_1f
    return-object v0
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_f

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 830
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .registers 5

    .line 815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 816
    .local v0, "callerUid":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 819
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_19

    .line 820
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 822
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 817
    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot call getAppLockedLockType()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAppLockedPackageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_f

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedPackageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 783
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoreStateController()Lcom/android/server/wm/CoreStateController;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    return-object v0
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .registers 2

    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method getForegroundTaskId(I)I
    .registers 7
    .param p1, "displayId"    # I

    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, "taskId":I
    const/4 v1, 0x0

    .line 363
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 364
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_1c

    .line 365
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$P5dzo_YpPEP_xwWLaKZSFM3iMbg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$P5dzo_YpPEP_xwWLaKZSFM3iMbg;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 367
    .local v3, "foreground":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1c

    .line 368
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_1c

    .line 370
    iget v0, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 374
    .end local v3    # "foreground":Lcom/android/server/wm/ActivityRecord;
    :cond_1c
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForegroundTaskId(), displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_46
    return v0
.end method

.method public getGearVrManagerInternal()Lcom/samsung/android/vr/GearVrManagerInternal;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    return-object v0
.end method

.method getLastMainDisplayTopTaskIdLocked()I
    .registers 2

    .line 1033
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    return v0
.end method

.method public getPreferredDisplayIdForXr(Lcom/android/server/wm/ActivityRecord;)I
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1431
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->xrFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 1432
    .local v0, "isXrActivity":Z
    :goto_b
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->xrFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 1433
    .local v3, "isMetaScreenApplication":Z
    :goto_15
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->xrFlags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 1434
    .local v1, "isXrApplication":Z
    :goto_1f
    const/4 v4, -0x1

    .line 1435
    .local v4, "preferredXrDisplayId":I
    const/4 v5, -0x1

    .line 1436
    .local v5, "metaScreenDisplayId":I
    const/4 v6, -0x1

    .line 1438
    .local v6, "xrScreenDisplayId":I
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v7, :cond_36

    .line 1439
    invoke-virtual {v7}, Lcom/samsung/android/vr/GearVrManagerInternal;->getPreferredXrDisplayId()I

    move-result v4

    .line 1440
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v7}, Lcom/samsung/android/vr/GearVrManagerInternal;->getMetaScreenDisplayId()I

    move-result v5

    .line 1441
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v7}, Lcom/samsung/android/vr/GearVrManagerInternal;->getXrScreenDisplayId()I

    move-result v6

    .line 1443
    :cond_36
    const/4 v7, -0x1

    if-eq v5, v7, :cond_42

    if-eqz v3, :cond_42

    .line 1444
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    if-eq v2, v5, :cond_70

    .line 1446
    return v5

    .line 1448
    :cond_42
    if-eq v6, v7, :cond_4d

    if-eqz v1, :cond_4d

    .line 1449
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    if-eq v2, v6, :cond_70

    .line 1451
    return v6

    .line 1453
    :cond_4d
    if-eq v4, v7, :cond_5c

    if-nez v0, :cond_55

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_5c

    .line 1455
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    if-eq v2, v4, :cond_70

    .line 1457
    return v4

    .line 1459
    :cond_5c
    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_65

    .line 1461
    return v2

    .line 1462
    :cond_65
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_70

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_70

    .line 1464
    return v2

    .line 1466
    :cond_70
    return v7
.end method

.method getRealActivityForTaskId(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "taskId"    # I

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 390
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    :goto_e
    return-object v1
.end method

.method public getStartedUserIdsLocked()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSysUiPid()I
    .registers 2

    .line 272
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    return v0
.end method

.method public hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 259
    .local v2, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 260
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 262
    .end local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    goto :goto_12

    .line 263
    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 264
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 457
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 456
    return v0
.end method

.method hasPackageTask(ILjava/lang/String;I)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityType"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 443
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 444
    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$n2192zEM8KiPUCkEqA1PcWKBZo8;

    invoke-direct {v2, p3, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$n2192zEM8KiPUCkEqA1PcWKBZo8;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_18

    move v1, v3

    :cond_18
    return v1

    .line 450
    :cond_19
    return v1
.end method

.method public hideAppContinuityGuideConfirmationIfNeeded()V
    .registers 2

    .line 1407
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppContinuityGuideConfirmation:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    if-eqz v0, :cond_7

    .line 1408
    invoke-virtual {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->hide()V

    .line 1410
    :cond_7
    return-void
.end method

.method initialize()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 173
    new-instance v0, Lcom/android/server/wm/PackageSettingsManager;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageSettingsManager;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    .line 175
    return-void
.end method

.method installSystemProvidersLocked()V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->initializeEnableControllerLocked(I)V

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/CoreStateController;->initializeLocked()V

    .line 291
    return-void
.end method

.method intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZIILandroid/app/ActivityOptions;)Z
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "showRestartAppDialog"    # Z
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "options"    # Landroid/app/ActivityOptions;

    .line 1215
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1216
    return v0

    .line 1219
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1220
    .local v1, "currentDisplayDeviceType":I
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1222
    .local v2, "taskId":I
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->shouldRestartTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intercept:task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", showRestartAppDialog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", callingPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-static {v1}, Landroid/content/res/Configuration;->displayDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1223
    const-string v4, "ActivityTaskManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetLastMainDisplayTopTaskIdLocked()V

    .line 1228
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setShouldShowLastMainDisplayTopTask(Z)V

    .line 1229
    const/4 v3, 0x1

    if-eqz p4, :cond_9c

    .line 1230
    const/4 v5, 0x5

    if-ne v1, v5, :cond_99

    .line 1231
    iget v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mIsDoNotShowAgainCheckedForRestartAppDialog:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_76

    .line 1232
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 1233
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "foldable_restart_dialog_do_not_show_again"

    invoke-static {v5, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mIsDoNotShowAgainCheckedForRestartAppDialog:I

    .line 1236
    :cond_76
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mIsDoNotShowAgainCheckedForRestartAppDialog:I

    if-ne v0, v3, :cond_88

    .line 1237
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_84

    .line 1238
    const-string/jumbo v0, "intercept: skip to show RestartAppDialog, do_not_show_again"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_84
    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V

    goto :goto_9c

    .line 1242
    :cond_88
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v6, p2}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1243
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1244
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_9c

    .line 1246
    :cond_99
    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V

    .line 1249
    :cond_9c
    :goto_9c
    return v3

    .line 1252
    :cond_9d
    return v0
.end method

.method intercept(Lcom/android/server/wm/Task;Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "showRestartAppDialog"    # Z

    .line 1209
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZIILandroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_f

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 801
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_f

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 848
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isCanShowErrorOnVrRunning()Z
    .registers 3

    .line 1476
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 1477
    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->isDock()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 1478
    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getHmtDevice()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 1479
    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getHmtDevice()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice;->getUiModeConfig()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 1476
    :goto_22
    return v1
.end method

.method isInCallPackageLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "defaultDialerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1131
    const/4 v0, 0x0

    if-eqz p2, :cond_16

    if-nez p1, :cond_6

    goto :goto_16

    .line 1134
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1135
    const-string v1, "com.samsung.android.incallui"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 1134
    :cond_15
    return v0

    .line 1132
    :cond_16
    :goto_16
    return v0
.end method

.method public isKeepAliveActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isXrDisplay(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getMetaScreenDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 1471
    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getTetheredDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 1472
    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getXrScreenDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 1470
    :goto_1d
    return v0
.end method

.method public synthetic lambda$checkAppLockState$8$ActivityTaskManagerServiceExt(Ljava/lang/String;IZZLandroid/content/Intent;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "showWhenLocked"    # Z
    .param p4, "withoutAnimation"    # Z
    .param p5, "lastIntent"    # Landroid/content/Intent;

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.applock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "LAUNCH_FROM_RESUME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v3, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    const-string v1, "LOCKED_PACKAGE_DISPLAYID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 657
    if-eqz p4, :cond_31

    .line 658
    const-string v1, "START_SERVICE_WITH_NO_ANIMATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    :cond_31
    if-eqz p5, :cond_48

    .line 661
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 663
    const-string v2, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 666
    .end local v1    # "targetIntent":Landroid/content/Intent;
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 669
    goto :goto_65

    .line 667
    :catch_4e
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLock service start failed for intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManagerServiceExt"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public synthetic lambda$clearHomeStack$2$ActivityTaskManagerServiceExt(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "defaultHomePkgName"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 403
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_c
    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 405
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 406
    :cond_1c
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearHomeStack(), removing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ActivityTaskManagerServiceExt#clearHomeStack"

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 413
    :cond_44
    return-void
.end method

.method public synthetic lambda$moveAppLockedTaskToBackOnOtherDisplay$6$ActivityTaskManagerServiceExt(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "appLockTaskList"    # Ljava/util/ArrayList;
    .param p2, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 594
    if-eqz p2, :cond_15

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 595
    .local v0, "action":Ljava/lang/String;
    :goto_16
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_57

    .line 596
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-nez v1, :cond_38

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_38
    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 597
    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    :cond_48
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 598
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 599
    :cond_50
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_57
    return-void
.end method

.method public synthetic lambda$moveAppLockedTaskToBackOnOtherDisplay$7$ActivityTaskManagerServiceExt(Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "appLockTaskList"    # Ljava/util/ArrayList;

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 605
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 606
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 607
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    .line 609
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_28
    goto :goto_c

    .line 610
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 611
    return-void

    .line 610
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$restartTaskLocked$10$ActivityTaskManagerServiceExt(Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "taskId"    # I
    .param p5, "task"    # Lcom/android/server/wm/Task;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "callingPid"    # I
    .param p8, "callingUid"    # I
    .param p9, "options"    # Landroid/app/ActivityOptions;

    .line 1291
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p9

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v15, "restartTaskForFoldable"

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerInternal;->killPackageProcesses(Ljava/lang/String;IIIZZZZZLjava/lang/String;)Z

    .line 1295
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1296
    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartingTaskId:I
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_87

    .line 1297
    move-object/from16 v6, p6

    :try_start_2a
    iput-object v6, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1300
    iget-boolean v0, v3, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v0, :cond_37

    .line 1301
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1305
    :cond_37
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v0

    iput v0, v3, Lcom/android/server/wm/Task;->mCallingUid:I
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_85

    .line 1307
    const/4 v7, -0x1

    :try_start_42
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1309
    if-eqz v4, :cond_4c

    new-instance v8, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v8, v4}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_5f
    .catchall {:try_start_42 .. :try_end_4b} :catchall_59

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    .line 1307
    :goto_4d
    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_51
    invoke-virtual {v0, v9, v10, v2, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_57
    .catchall {:try_start_51 .. :try_end_54} :catchall_80

    .line 1313
    :goto_54
    :try_start_54
    iput v7, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartingTaskId:I
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_93

    .line 1314
    goto :goto_7b

    .line 1310
    :catch_57
    move-exception v0

    goto :goto_64

    .line 1313
    :catchall_59
    move-exception v0

    move/from16 v9, p7

    move/from16 v10, p8

    goto :goto_81

    .line 1310
    :catch_5f
    move-exception v0

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    const-string v8, "ActivityTaskManagerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not open this task id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_80

    goto :goto_54

    .line 1315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7b
    :try_start_7b
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_93

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1316
    return-void

    .line 1313
    :catchall_80
    move-exception v0

    :goto_81
    :try_start_81
    iput v7, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestartingTaskId:I

    .line 1314
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "taskId":I
    .end local p5    # "task":Lcom/android/server/wm/Task;
    .end local p6    # "intent":Landroid/content/Intent;
    .end local p7    # "callingPid":I
    .end local p8    # "callingUid":I
    .end local p9    # "options":Landroid/app/ActivityOptions;
    throw v0

    .line 1315
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "taskId":I
    .restart local p5    # "task":Lcom/android/server/wm/Task;
    .restart local p6    # "intent":Landroid/content/Intent;
    .restart local p7    # "callingPid":I
    .restart local p8    # "callingUid":I
    .restart local p9    # "options":Landroid/app/ActivityOptions;
    :catchall_85
    move-exception v0

    goto :goto_8a

    :catchall_87
    move-exception v0

    move-object/from16 v6, p6

    :goto_8a
    move/from16 v9, p7

    move/from16 v10, p8

    :goto_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_93
    move-exception v0

    goto :goto_8e
.end method

.method public synthetic lambda$startUser$0$ActivityTaskManagerServiceExt(IZZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 296
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/CoreStateController;->startUserLocked(IZZ)V

    .line 301
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 302
    return-void

    .line 301
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$stopUser$1$ActivityTaskManagerServiceExt(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "willBeRemoved"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 308
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->stopUserLocked(IZ)V

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CoreStateController;->stopUserLocked(IZ)V

    .line 313
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 314
    return-void

    .line 313
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveAppLockedTaskToBackOnOtherDisplay(I)V
    .registers 7
    .param p1, "currentDisplayId"    # I

    .line 581
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Lcom/android/server/wm/DexController;->isDefaultOrDexDisplay(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 582
    return-void

    .line 584
    :cond_a
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1c

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 586
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v2

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    move p1, v2

    .line 588
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1c
    if-nez p1, :cond_1f

    const/4 v1, 0x2

    :cond_1f
    move v0, v1

    .line 589
    .local v0, "otherDisplayId":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 590
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v2, "appLockTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v1, :cond_35

    .line 592
    new-instance v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 603
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method

.method public moveTaskToBack(IZLandroid/os/Bundle;)Z
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "keepAlive"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 234
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 235
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 236
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 239
    :cond_24
    :try_start_24
    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V

    .line 240
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 241
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_34

    invoke-virtual {v3, v1, p3}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v2, 0x1

    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 243
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 244
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onKeyguardGoingAwayChangedLocked()V
    .registers 6

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1190
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1191
    .local v1, "isSubDisplayDevice":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v3

    .line 1192
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v3

    .line 1195
    .local v3, "isKeyguardOrAodShowing":Z
    const/4 v4, 0x0

    .line 1197
    .local v4, "isShowWhenLockedActivity":Z
    if-eqz v1, :cond_23

    if-nez v3, :cond_23

    if-nez v4, :cond_23

    .line 1198
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setShouldShowLastMainDisplayTopTask(Z)V

    .line 1200
    :cond_23
    return-void
.end method

.method public onLockTaskStateChanged(I)V
    .registers 7
    .param p1, "lockTaskModeState"    # I

    .line 328
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 331
    .local v0, "enabled":Z
    :goto_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 336
    .end local v1    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "pinIntent":Landroid/content/Intent;
    const-string v2, "enable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method onSystemReady()V
    .registers 4

    .line 183
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PACKAGE_CONFIGURATION_BY_POLICY:Z

    if-eqz v0, :cond_3a

    .line 184
    new-instance v0, Lcom/android/server/wm/PackageConfigurationController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageConfigurationController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    .line 186
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCROLL_FILTER_BLOCK_LIST:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_LOW_REFRESH_RATE_LIST:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_BLOCK_LIST:Z

    if-eqz v0, :cond_25

    .line 191
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v1, Lcom/android/server/wm/FoldablePackagePolicy;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    invoke-direct {v1, v2}, Lcom/android/server/wm/FoldablePackagePolicy;-><init>(Lcom/android/server/wm/PackageConfigurationController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PackageConfigurationController;->registerPolicy(Lcom/android/server/wm/PolicyImpl;)V

    .line 194
    :cond_25
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER_PACKAGE_POLICY:Z

    if-eqz v0, :cond_35

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v1, Lcom/android/server/wm/TspStateManagerPackagePolicy;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    invoke-direct {v1, v2}, Lcom/android/server/wm/TspStateManagerPackagePolicy;-><init>(Lcom/android/server/wm/PackageConfigurationController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PackageConfigurationController;->registerPolicy(Lcom/android/server/wm/PolicyImpl;)V

    .line 198
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    invoke-virtual {v0}, Lcom/android/server/wm/PackageConfigurationController;->startThread()V

    .line 204
    :cond_3a
    return-void
.end method

.method removeTaskLocked(II)Z
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .line 463
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_2f

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 469
    :cond_9
    and-int/lit8 v0, p2, 0x10

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 470
    .local v0, "removeFromRecents":Z
    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string/jumbo v3, "sem-remove-task"

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_24

    .line 473
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_23

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    .line 470
    :cond_23
    return v1

    .line 473
    .end local v0    # "removeFromRecents":Z
    :catchall_24
    move-exception v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2e

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    .line 476
    :cond_2e
    throw v0

    .line 465
    :cond_2f
    :goto_2f
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeAllRecentTasksLocked(I)Z

    move-result v0

    return v0
.end method

.method public resetActivityKeepAlive(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method resetLastMainDisplayTopTaskIdLocked()V
    .registers 4

    .line 1098
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetLastMainDisplayTopTaskIdLocked : last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x5

    goto :goto_21

    :cond_20
    const/4 v2, 0x3

    :goto_21
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    const-string v2, "ActivityTaskManagerServiceExt"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    .line 1103
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestoreLastMainTopTaskAfterResumeTop:Z

    .line 1104
    return-void
.end method

.method public restartTask(I)V
    .registers 9
    .param p1, "taskId"    # I

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "restartTask"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1258
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1259
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1261
    .local v2, "ident":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_37

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1262
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->anyExistingTaskForIdLocked(I)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1263
    .local v5, "task":Lcom/android/server/wm/Task;
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V

    .line 1264
    .end local v5    # "task":Lcom/android/server/wm/Task;
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_31

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_37

    .line 1266
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1264
    :catchall_31
    move-exception v5

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .end local p1    # "taskId":I
    throw v5
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    .line 1266
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerServiceExt;
    .restart local p1    # "taskId":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    throw v4
.end method

.method restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V
    .registers 24
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .line 1272
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-nez v12, :cond_f

    .line 1273
    const-string v0, "ActivityTaskManagerServiceExt"

    const-string/jumbo v1, "restartTaskLocked: task is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void

    .line 1279
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getRealActivityPackageName(Lcom/android/server/wm/Task;)Ljava/lang/String;

    move-result-object v13

    .line 1280
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_16

    .line 1281
    return-void

    .line 1284
    :cond_16
    iget-object v14, v12, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1285
    .local v14, "intent":Landroid/content/Intent;
    iget v15, v12, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1286
    .local v15, "taskId":I
    iget v0, v12, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v16

    .line 1287
    .local v16, "appId":I
    iget v10, v12, Lcom/android/server/wm/Task;->mUserId:I

    .line 1288
    .local v10, "userId":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 1289
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Q6uMXfZ3DvV9D5skymL6kZ1YyJA;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v16

    move v4, v10

    move v5, v15

    move-object/from16 v6, p1

    move-object v7, v14

    move-object v12, v8

    move/from16 v8, p2

    move-object/from16 v17, v14

    move-object v14, v9

    .end local v14    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    move/from16 v9, p3

    move/from16 v18, v10

    .end local v10    # "userId":I
    .local v18, "userId":I
    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Q6uMXfZ3DvV9D5skymL6kZ1YyJA;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V

    invoke-virtual {v14, v12}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1318
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v0, :cond_64

    .line 1319
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1320
    .local v0, "currentDefaultDeviceType":I
    if-nez v0, :cond_5c

    .line 1321
    const-string v1, "W007"

    invoke-static {v1, v13}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 1323
    :cond_5c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_64

    .line 1324
    const-string v1, "W008"

    invoke-static {v1, v13}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    .end local v0    # "currentDefaultDeviceType":I
    :cond_64
    :goto_64
    return-void
.end method

.method restoreLastMainDisplayTopTaskIfNeededLocked()V
    .registers 13

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mShouldShowLastMainDisplayTopTask:Z

    if-eqz v0, :cond_b5

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1039
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz v1, :cond_14

    .line 1043
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mRestoreLastMainTopTaskAfterResumeTop:Z

    .line 1044
    return-void

    .line 1047
    :cond_14
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    .line 1048
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetLastMainDisplayTopTaskIdLocked()V

    .line 1049
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setShouldShowLastMainDisplayTopTask(Z)V

    .line 1050
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->anyExistingTaskForIdLocked(I)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 1051
    .local v9, "task":Lcom/android/server/wm/Task;
    const-string v3, "ActivityTaskManagerServiceExt"

    if-eqz v9, :cond_9f

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_2d

    goto/16 :goto_9f

    .line 1059
    :cond_2d
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 1060
    .local v10, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 1061
    .local v11, "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6c

    .line 1062
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 1063
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_6b

    if-eqz v11, :cond_6b

    .line 1064
    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAboveHomeStack(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1065
    .local v6, "stackAboveHomeStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    .line 1066
    .local v7, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v6, :cond_6b

    if-eqz v7, :cond_6b

    .line 1067
    const-string/jumbo v8, "restoreLastMainDisplayTopTaskIfNeededLocked: keyguardOccluded."

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v7, v10, v6}, Lcom/android/server/wm/TaskDisplayArea;->moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V

    .line 1069
    invoke-virtual {v10, v5, v2, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1070
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1073
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "stackAboveHomeStack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_6b
    goto :goto_8d

    .line 1074
    :cond_6c
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1076
    const-string/jumbo v2, "restoreLastMainDisplayTopTaskIfNeededLocked"

    invoke-virtual {v10, v2, v9}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_8d

    .line 1078
    :cond_7b
    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v11, :cond_83

    .line 1079
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v7, v3

    goto :goto_84

    :cond_83
    move-object v7, v5

    .line 1078
    :goto_84
    const-string/jumbo v8, "restoreLastMainDisplayTopTaskIfNeededLocked"

    move-object v3, v10

    move-object v4, v9

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1082
    :goto_8d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_FOLDABLE:Z

    if-eqz v2, :cond_b5

    .line 1083
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1084
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_b5

    .line 1085
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v4, "W006"

    invoke-static {v4, v3}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    .line 1052
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v11    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_9f
    :goto_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreLastMainDisplayTopTaskIfNeededLocked: Failed, taskId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void

    .line 1090
    .end local v0    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "taskId":I
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :cond_b5
    :goto_b5
    return-void
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 788
    .local v0, "callerUid":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 791
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_17

    .line 792
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    .line 794
    :cond_17
    return-void

    .line 789
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot call setAppLockedUnLockPackage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .line 834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 835
    .local v0, "callerUid":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isCallerSetSelf(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_28

    .line 836
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not system uid or the packageNmae is not itself\'s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_35

    .line 839
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 841
    :cond_35
    return-void
.end method

.method public setFoldedTime()V
    .registers 3

    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFoldedTime:J

    .line 1379
    return-void
.end method

.method public setFrontScreenOnWhenAppContinuityModeLocked(Z)V
    .registers 2
    .param p1, "frontScreenOn"    # Z

    .line 1417
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFrontScreenOnWhenAppContinuityMode:Z

    .line 1418
    return-void
.end method

.method setImageForCustomStartingWindow(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "taskUserId"    # I
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "rotation"    # I

    .line 945
    const/4 v0, 0x0

    .line 947
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 951
    goto :goto_12

    .line 949
    :catch_e
    move-exception v2

    .line 950
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 952
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_12
    if-nez v0, :cond_38

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImageForCustomStartingWindow, aInfo is null, componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManagerServiceExt"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz p3, :cond_36

    :try_start_2d
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_36

    .line 957
    :catch_31
    move-exception v2

    .line 958
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 959
    .end local v2    # "e":Ljava/io/IOException;
    :cond_36
    :goto_36
    nop

    .line 960
    :goto_37
    return v1

    .line 963
    :cond_38
    const/4 v1, 0x0

    .line 965
    .local v1, "result":Z
    :try_start_39
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    .line 966
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 967
    if-eqz p3, :cond_4e

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    move-object v7, v2

    .line 966
    move v6, p2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/CustomStartingWindowController;->setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v2

    move v1, v2

    .line 968
    if-eqz p3, :cond_5c

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_5c} :catch_5d

    .line 971
    :cond_5c
    goto :goto_61

    .line 969
    :catch_5d
    move-exception v2

    .line 970
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 972
    .end local v2    # "e":Ljava/io/IOException;
    :goto_61
    return v1
.end method

.method public setScrollFilterBlockList(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mScrollFilterBlockList:Lcom/android/server/wm/BlockListManager;

    .line 984
    invoke-virtual {v0, p2}, Lcom/android/server/wm/BlockListManager;->isBlockListed(Ljava/lang/String;)Z

    move-result v0

    .line 983
    const-string/jumbo v1, "scroll_filter_block_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    return-void
.end method

.method setShouldShowLastMainDisplayTopTask(Z)V
    .registers 2
    .param p1, "shouldShowLastMainDisplayTopTask"    # Z

    .line 1115
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mShouldShowLastMainDisplayTopTask:Z

    .line 1116
    return-void
.end method

.method public setSysUiPid(I)V
    .registers 2
    .param p1, "sysUiPid"    # I

    .line 276
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    .line 277
    return-void
.end method

.method public showFrontScreenAppContinuityGuideIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "taskRecord"    # Lcom/android/server/wm/Task;

    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1383
    .local v0, "currentDisplayDeviceType":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    .line 1384
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    .line 1386
    .local v1, "isKeyguardOrAodShowing":Z
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1387
    .local v3, "realActivity":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 1388
    .local v4, "appContinuityMode":I
    if-eqz v3, :cond_28

    .line 1389
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v5, v5, Lcom/android/server/wm/PackageSettingsManager;->mAppContinuityPackages:Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;

    .line 1390
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getAppContinuityModeLocked(Ljava/lang/String;II)I

    move-result v4

    .line 1394
    :cond_28
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppContinuityGuideConfirmation:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    if-eqz v5, :cond_5c

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5c

    if-nez v1, :cond_5c

    iget v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    iget v6, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v5, v6, :cond_5c

    iget-wide v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFoldedTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5c

    .line 1400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFoldedTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5c

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppContinuityGuideConfirmation:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 1401
    invoke-virtual {v5}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getUserUsedAppContinuitySetting()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1402
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppContinuityGuideConfirmation:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    invoke-virtual {v5, v2, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->show(ZLcom/android/server/wm/Task;)V

    .line 1404
    :cond_5c
    return-void
.end method

.method public startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 36
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 681
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_b

    .line 682
    return-void

    .line 684
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 685
    .local v10, "task":Lcom/android/server/wm/Task;
    iget v15, v9, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 686
    .local v15, "userId":I
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 687
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v13, v10, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 688
    .local v13, "callingPackage":Ljava/lang/String;
    iget-object v12, v10, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 689
    .local v12, "callingFeatureId":Ljava/lang/String;
    iget v11, v10, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 690
    .local v11, "callingUid":I
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v24

    .line 691
    .local v24, "isLocked":Z
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v25

    .line 692
    .local v25, "isVerifying":Z
    const/4 v0, 0x1

    .line 693
    .local v0, "appLockForExceptionList":Z
    if-eqz v14, :cond_38

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 694
    const/4 v0, 0x0

    move/from16 v26, v0

    goto :goto_3a

    .line 699
    :cond_38
    move/from16 v26, v0

    .end local v0    # "appLockForExceptionList":Z
    .local v26, "appLockForExceptionList":Z
    :goto_3a
    if-eqz v24, :cond_1cb

    if-nez v25, :cond_1cb

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchRequestedFromNotification()Z

    move-result v0

    if-nez v0, :cond_1cb

    if-eqz v26, :cond_1cb

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 700
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "isAppPairWindowingMode":Z
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v5, v1

    .line 713
    .local v5, "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v27

    .line 715
    .local v27, "isActivityInMultiWindowMode":Z
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v28

    .line 719
    .end local v0    # "isAppPairWindowingMode":Z
    .local v28, "isAppPairWindowingMode":Z
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$MvJbB-cjeCyRqk1SxinuXq6QTZM;

    invoke-direct {v1, v5}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$MvJbB-cjeCyRqk1SxinuXq6QTZM;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 726
    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1b5

    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0, v15}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 727
    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_98

    :cond_8d
    move v5, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_1d4

    :cond_98
    :goto_98
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 728
    invoke-static {v0, v1}, Lcom/android/internal/app/AppLockPolicy;->shouldSkipApplockLaunchWithBikeMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a9

    .line 729
    if-eqz v27, :cond_a5

    .line 730
    return-void

    .line 732
    :cond_a5
    const-string v7, "ActivityTaskManagerServiceExt"

    if-nez v28, :cond_b3

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b0

    goto :goto_b3

    :cond_b0
    move-object/from16 v29, v5

    goto :goto_d9

    :cond_b3
    :goto_b3
    if-nez v27, :cond_d7

    .line 734
    const-string v0, "Start AppLock Service"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c3

    .line 736
    move v7, v1

    goto :goto_c4

    :cond_c3
    move v7, v6

    .line 737
    .local v7, "displayId":I
    :goto_c4
    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v29, v5

    .end local v5    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v29, "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZZI)V

    .line 739
    return-void

    .line 732
    .end local v7    # "displayId":I
    .end local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v5    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_d7
    move-object/from16 v29, v5

    .line 741
    .end local v5    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_d9
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v8, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 742
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 743
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v0, 0x20000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v0, "LAUNCH_FROM_RESUME"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v0, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 749
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_123

    move v3, v6

    goto :goto_124

    :cond_123
    move v3, v15

    :goto_124
    const/16 v16, 0x0

    .line 749
    move-object v1, v4

    move-object v6, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    move/from16 v4, v16

    move-object/from16 v16, v12

    move v12, v5

    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .local v16, "callingFeatureId":Ljava/lang/String;
    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 751
    .local v1, "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 752
    .local v2, "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 755
    .local v3, "options":Landroid/app/ActivityOptions;
    iget v0, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 756
    const/4 v0, 0x0

    invoke-virtual {v3, v12, v0}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 759
    :try_start_148
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 760
    invoke-virtual {v4}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v4, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 768
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v20

    const/16 v21, 0x0

    .line 770
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v22
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_16a} :catch_182

    .line 759
    move v5, v11

    .end local v11    # "callingUid":I
    .local v5, "callingUid":I
    move-object v11, v0

    move-object/from16 v30, v16

    .end local v16    # "callingFeatureId":Ljava/lang/String;
    .local v30, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v31, v13

    .end local v13    # "callingPackage":Ljava/lang/String;
    .local v31, "callingPackage":Ljava/lang/String;
    move-object/from16 v32, v14

    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v30

    move/from16 v33, v15

    .end local v15    # "userId":I
    .local v33, "userId":I
    move-object v15, v6

    move-object/from16 v16, v4

    move/from16 v23, v33

    :try_start_17b
    invoke-virtual/range {v11 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17e} :catch_180

    .line 774
    goto/16 :goto_1d4

    .line 772
    :catch_180
    move-exception v0

    goto :goto_18c

    .end local v5    # "callingUid":I
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "userId":I
    .restart local v11    # "callingUid":I
    .restart local v13    # "callingPackage":Ljava/lang/String;
    .restart local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "userId":I
    .restart local v16    # "callingFeatureId":Ljava/lang/String;
    :catch_182
    move-exception v0

    move v5, v11

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move-object/from16 v30, v16

    .line 773
    .end local v11    # "callingUid":I
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "userId":I
    .end local v16    # "callingFeatureId":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "callingUid":I
    .restart local v30    # "callingFeatureId":Ljava/lang/String;
    .restart local v31    # "callingPackage":Ljava/lang/String;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "userId":I
    :goto_18c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while launching AppLock Confirm Activity for"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", Exception is : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 728
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "options":Landroid/app/ActivityOptions;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "userId":I
    .local v5, "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v13    # "callingPackage":Ljava/lang/String;
    .restart local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "userId":I
    :cond_1a9
    move-object/from16 v29, v5

    move v5, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    .end local v11    # "callingUid":I
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "userId":I
    .local v5, "callingUid":I
    .restart local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v30    # "callingFeatureId":Ljava/lang/String;
    .restart local v31    # "callingPackage":Ljava/lang/String;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "userId":I
    goto :goto_1d4

    .line 726
    .end local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "userId":I
    .local v5, "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v13    # "callingPackage":Ljava/lang/String;
    .restart local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "userId":I
    :cond_1b5
    move-object/from16 v29, v5

    move v5, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    .end local v11    # "callingUid":I
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "userId":I
    .local v5, "callingUid":I
    .restart local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v30    # "callingFeatureId":Ljava/lang/String;
    .restart local v31    # "callingPackage":Ljava/lang/String;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "userId":I
    goto :goto_1d4

    .line 700
    .end local v5    # "callingUid":I
    .end local v27    # "isActivityInMultiWindowMode":Z
    .end local v28    # "isAppPairWindowingMode":Z
    .end local v29    # "isSystemInSplitMode":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "userId":I
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v13    # "callingPackage":Ljava/lang/String;
    .restart local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "userId":I
    :cond_1c1
    move v5, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    .end local v11    # "callingUid":I
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "userId":I
    .restart local v5    # "callingUid":I
    .restart local v30    # "callingFeatureId":Ljava/lang/String;
    .restart local v31    # "callingPackage":Ljava/lang/String;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "userId":I
    goto :goto_1d4

    .line 699
    .end local v5    # "callingUid":I
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "userId":I
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v13    # "callingPackage":Ljava/lang/String;
    .restart local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "userId":I
    :cond_1cb
    move v5, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    .line 777
    .end local v11    # "callingUid":I
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "userId":I
    .restart local v5    # "callingUid":I
    .restart local v30    # "callingFeatureId":Ljava/lang/String;
    .restart local v31    # "callingPackage":Ljava/lang/String;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "userId":I
    :goto_1d4
    return-void
.end method

.method public startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "showWhenLocked"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 515
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_8

    .line 516
    return-void

    .line 518
    :cond_8
    const/4 v1, 0x0

    .line 519
    .local v1, "stateAry":[Z
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 521
    .local v9, "displayId":[I
    move-object v10, p1

    :try_start_d
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockLaunchingState(Landroid/os/IBinder;[I)[Z

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_13

    move-object v1, v0

    .line 524
    goto :goto_1e

    .line 522
    :catch_13
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActivityTaskManagerServiceExt"

    const-string v4, "exception while querying AppLock Launching State"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 525
    .end local v1    # "stateAry":[Z
    .local v0, "stateAry":[Z
    :goto_1e
    if-eqz v0, :cond_87

    .line 526
    const/4 v1, 0x0

    aget-boolean v3, v0, v1

    iput-boolean v3, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 527
    aget-boolean v11, v0, v2

    .line 528
    .local v11, "fromNotification":Z
    const/4 v2, 0x2

    aget-boolean v12, v0, v2

    .line 530
    .local v12, "isInExceptionList":Z
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez v12, :cond_87

    :cond_34
    if-nez v12, :cond_3c

    if-nez v11, :cond_3c

    iget-boolean v2, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    if-eqz v2, :cond_87

    .line 532
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 533
    .local v13, "uid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_87

    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 534
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 535
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v2

    if-nez v2, :cond_87

    .line 536
    :cond_68
    if-eqz v11, :cond_79

    .line 537
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v7, v9, v1

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZZI)V

    goto :goto_87

    .line 540
    :cond_79
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v7, v9, v1

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZZI)V

    .line 546
    .end local v11    # "fromNotification":Z
    .end local v12    # "isInExceptionList":Z
    .end local v13    # "uid":I
    :cond_87
    :goto_87
    return-void
.end method

.method public startUser(IZZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$2S-qVbUxYKVGShAZKpNQ9Zz_xmc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$2S-qVbUxYKVGShAZKpNQ9Zz_xmc;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public stopUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "willBeRemoved"    # Z

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$YJR4CGpeMYfapA9sKV3wg0dGdts;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$YJR4CGpeMYfapA9sKV3wg0dGdts;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method updateLastMainDisplayTopTaskIdLocked(I)V
    .registers 5
    .param p1, "storedTopTaskId"    # I

    .line 1107
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    if-eq v0, p1, :cond_3d

    .line 1108
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLastMainDisplayTopTaskId:I

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLastMainDisplayTopTaskIdLocked : storedTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1110
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_2f
    const-string v1, ""

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string v1, "ActivityTaskManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_3d
    return-void
.end method
