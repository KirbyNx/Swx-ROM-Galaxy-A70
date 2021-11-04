.class public Lcom/android/server/wm/PersonaActivityHelper;
.super Ljava/lang/Object;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;
    }
.end annotation


# static fields
.field private static final FINISH_APPS_FOR_USER_MSG:I = 0x25a

.field private static final LOCK_HIDDEN_SECUREFOLDER:I = 0x25c

.field private static final LOCK_SECUREFOLDER_CHECK_MSG:I = 0x25d

.field private static final LOCK_SECUREFOLDER_MSG:I = 0x25b

.field private static final SHOW_KNOX_SECURITY_TOAST:I = 0x259

.field private static final TAG:Ljava/lang/String; = "PersonaActivityHelper"

.field static final WINDOWING_MODE_ALL:I = -0x1


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDedicatedFingerprintState:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field final mLooper:Landroid/os/Looper;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

.field mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mUserManager:Lcom/android/server/pm/UserManagerService;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private mWms:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;Lcom/android/server/wm/RootWindowContainer;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "rootWindowContainer"    # Lcom/android/server/wm/RootWindowContainer;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 121
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLooper:Landroid/os/Looper;

    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 125
    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;-><init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDedicatedFingerprintState:Z

    .line 127
    return-void
.end method

.method private LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 392
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_12

    .line 393
    const-string v0, "PersonaActivityHelper"

    const-string v1, "Activity not in resumed state, do not run immediate lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 396
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    .line 397
    .local v0, "secureFolderId":I
    if-lez v0, :cond_7d

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 399
    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 403
    .local v1, "timeout":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 404
    .local v2, "isImmediatelyLock":Z
    :goto_36
    if-nez v2, :cond_39

    .line 405
    return-void

    .line 409
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_47} :catch_4b

    if-eqz v3, :cond_4a

    .line 410
    return-void

    .line 412
    .end local v1    # "timeout":I
    .end local v2    # "isImmediatelyLock":Z
    :cond_4a
    goto :goto_4f

    :catch_4b
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4f
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v2, 0x25b

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->removeMessages(I)V

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 417
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    const-string/jumbo v4, "isHomeActivity"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v4, "componentName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 422
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_7d
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/PersonaActivityHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PersonaActivityHelper;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDedicatedFingerprintState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/PersonaActivityHelper;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PersonaActivityHelper;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->removeMinimizedFreeformTaskExplicitly(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PersonaActivityHelper;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->lockSecureFolderIfNecessary(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "x1"    # I

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->isActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method private canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    .line 504
    .local v0, "showWhenLocked":Z
    if-nez v0, :cond_47

    .line 505
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.incallui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.android.server.telecom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 506
    const-string v2, "com.android.calendar/.alerts.PopUpActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 507
    const-string v2, "com.samsung.android.calendar/com.samsung.android.app.calendarnotification.AlertPopupActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 508
    const-string v2, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.PreCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 509
    const-string v2, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_45

    :cond_43
    const/4 v1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v1, 0x1

    :goto_46
    move v0, v1

    .line 511
    :cond_47
    return v0
.end method

.method private checkKnoxFeatureEnabled()Z
    .registers 9

    .line 460
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "knoxProperty":Ljava/lang/String;
    const/4 v1, 0x1

    .line 462
    .local v1, "isKnoxExist":Z
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 463
    :cond_10
    const/4 v1, 0x0

    .line 465
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v2, :cond_1b

    .line 466
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 468
    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    .line 469
    return v3

    .line 471
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 473
    .local v4, "ident":J
    const/4 v2, 0x0

    :try_start_28
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 474
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 475
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v7

    if-nez v7, :cond_44

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_4f
    .catchall {:try_start_28 .. :try_end_42} :catchall_4d

    if-eqz v7, :cond_49

    .line 476
    :cond_44
    nop

    .line 482
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    return v3

    .line 482
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_49
    :goto_49
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    goto :goto_54

    .line 482
    :catchall_4d
    move-exception v2

    goto :goto_55

    .line 479
    :catch_4f
    move-exception v3

    .line 480
    .local v3, "e":Ljava/lang/Exception;
    :try_start_50
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_49

    .line 485
    .end local v0    # "knoxProperty":Ljava/lang/String;
    .end local v1    # "isKnoxExist":Z
    .end local v4    # "ident":J
    :goto_54
    return v2

    .line 482
    .restart local v0    # "knoxProperty":Ljava/lang/String;
    .restart local v1    # "isKnoxExist":Z
    .restart local v4    # "ident":J
    :goto_55
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    throw v2
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 499
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 492
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_a

    .line 527
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 529
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method private static isActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I

    .line 533
    if-eqz p0, :cond_8

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_8

    .line 534
    const/4 v0, 0x1

    return v0

    .line 536
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static isKnoxWindowVisible(Lcom/android/server/wm/Task;ZIZI)Z
    .registers 8
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "checkForAll"    # Z
    .param p2, "knoxId"    # I
    .param p3, "nowVisible"    # Z
    .param p4, "windowingMode"    # I

    .line 287
    if-eqz p0, :cond_31

    .line 288
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 289
    .local v0, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_31

    .line 290
    if-eqz p1, :cond_12

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_12
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, p2, :cond_31

    .line 292
    :cond_16
    if-eqz p3, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_24

    :cond_1c
    if-nez p3, :cond_31

    .line 293
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 294
    :cond_24
    const/4 v1, -0x1

    if-eq p4, v1, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    if-eq p4, v2, :cond_2f

    :cond_2d
    if-ne p4, v1, :cond_31

    .line 296
    :cond_2f
    const/4 v1, 0x1

    return v1

    .line 302
    .end local v0    # "topRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$OrdfFRYYYWub94Y0oQOHuE0teO0(Lcom/android/server/wm/Task;ZIZI)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/PersonaActivityHelper;->isKnoxWindowVisible(Lcom/android/server/wm/Task;ZIZI)Z

    move-result p0

    return p0
.end method

.method private lockSecureFolderIfNecessary(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "disableImmediateLock":Z
    iget-boolean v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDedicatedFingerprintState:Z

    if-eqz v1, :cond_32

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v1, "b":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v2, "knox.container.proxy.EVENT_ACTIVITY_DRAWN"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 222
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_32

    const/4 v3, 0x2

    const-string v4, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_32

    .line 223
    const/4 v3, 0x0

    const-string/jumbo v4, "knox.container.proxy.EXTRA_FLAG_DISABLE_IMMEDIATELY_LOCK"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 228
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "res":Landroid/os/Bundle;
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->setFocusedUser(I)V

    .line 230
    const/4 v1, 0x1

    .line 231
    .local v1, "doLockSecureFolder":Z
    if-eqz p1, :cond_3f

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 232
    .local v2, "resultTo":Lcom/android/server/wm/ActivityRecord;
    :goto_40
    if-nez v0, :cond_52

    if-eqz v2, :cond_53

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_53

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v3, v4, :cond_53

    .line 233
    :cond_52
    const/4 v1, 0x0

    .line 235
    :cond_53
    if-eqz v1, :cond_58

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 238
    :cond_58
    return-void
.end method

.method private removeMinimizedFreeformTaskExplicitly(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 624
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 625
    .local v0, "minimizeTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 627
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v3, p1, :cond_2d

    .line 628
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->semRemoveTask(II)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 630
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2d
    goto :goto_14

    .line 634
    .end local v0    # "minimizeTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2e
    goto :goto_46

    .line 632
    :catch_2f
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove minimized Task exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaActivityHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method


# virtual methods
.method public exitAndLockSecureFolder(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->notifyKillForegroundAppsForUser(I)Z

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 642
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method public getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 432
    move-object v0, p1

    .line 433
    .local v0, "currUser":Landroid/os/UserHandle;
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 434
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 435
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 436
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v2

    .line 437
    .local v2, "focusedUser":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenshot: check focused user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaActivityHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 440
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v5

    if-nez v5, :cond_55

    :cond_4f
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 441
    :cond_55
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v5

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenshot: getCurrentScreenUserId:premium = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-object v0

    .line 446
    :cond_71
    if-eqz v3, :cond_95

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 447
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v5

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenshot: App Separation user type. ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v0

    .line 452
    :cond_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenshot: getCurrentScreenUserId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v1    # "versionInfo":Landroid/os/Bundle;
    .end local v2    # "focusedUser":I
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_aa
    return-object v0
.end method

.method getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_14

    .line 517
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 518
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 519
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 522
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public getRecentExcludedUsers()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 331
    .local v0, "excludedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_62

    .line 332
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .line 333
    .local v1, "userIds":[I
    if-eqz v1, :cond_61

    .line 334
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_61

    aget v5, v1, v4

    .line 335
    .local v5, "id":I
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 336
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 337
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 338
    :cond_3d
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 339
    iget-object v6, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hide_secure_folder_flag"

    invoke-static {v6, v7, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_54

    const/4 v6, 0x1

    goto :goto_55

    :cond_54
    move v6, v3

    .line 341
    .local v6, "isEnabledSecureFolder":Z
    :goto_55
    if-nez v6, :cond_5e

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v5    # "id":I
    .end local v6    # "isEnabledSecureFolder":Z
    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 348
    :cond_61
    return-object v0

    .line 331
    .end local v1    # "userIds":[I
    :cond_62
    :goto_62
    return-object v0
.end method

.method public isIntentFromShowWhenLockedCase(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 352
    const/4 v0, 0x1

    if-eqz p2, :cond_b

    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 353
    return v0

    .line 356
    :cond_b
    if-eqz p1, :cond_14e

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_14e

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14e

    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.incallui.call.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 359
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 360
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 361
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm.plugin.voip.ui.videoActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.hangouts.hangout.IncomingRingActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.hangouts.elane.CallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 364
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.skype.teams.views.activities.PreCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.skype.teams.views.activities.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 366
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.calendar.alerts.PopUpActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 367
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.calendarnotification.AlertPopupActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 369
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.service.singlesignon.activity.ChangePasswordActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.calendarnotification.view.AlertPopupActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.reminder.ui.alarm.fullscreenview.AlarmActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 372
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.reminder.ui.alarm.fullscreenview.RingtoneAlarmActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 373
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.calendarnotification.view.AlertPopupActivityForTablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 374
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cisco.jabber.telephony.call.callinprogress.CallInProgressActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 375
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cisco.jabber.telephony.call.CallIncomingActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 376
    :cond_14d
    return v0

    .line 384
    :cond_14e
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxWindowVisibleLocked(ZIZII)Z
    .registers 19
    .param p1, "checkForAll"    # Z
    .param p2, "knoxId"    # I
    .param p3, "nowVisible"    # Z
    .param p4, "displayMode"    # I
    .param p5, "windowingMode"    # I

    .line 310
    move-object v1, p0

    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v0, :cond_d

    goto :goto_63

    .line 311
    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 312
    iget-object v0, v1, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "displayNdx":I
    :goto_1d
    if-ltz v0, :cond_58

    .line 313
    iget-object v5, v1, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 314
    .local v5, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v6, 0x0

    .line 315
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_55

    .line 316
    sget-object v7, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$OrdfFRYYYWub94Y0oQOHuE0teO0;

    const-class v8, Lcom/android/server/wm/Task;

    .line 317
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 316
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v7

    .line 318
    .local v7, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v5, v7, v4}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v8

    move-object v6, v8

    .line 319
    invoke-interface {v7}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 320
    if-eqz v6, :cond_55

    .line 321
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_12 .. :try_end_51} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 312
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 325
    .end local v0    # "displayNdx":I
    :cond_58
    :try_start_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 326
    return v2

    .line 325
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 310
    :cond_63
    :goto_63
    return v2
.end method

.method public isQuickSwitchExceptionalCase(I)Z
    .registers 8
    .param p1, "taskId"    # I

    .line 664
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_44

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 665
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 666
    .local v2, "taskRecord":Lcom/android/server/wm/Task;
    if-nez v2, :cond_16

    .line 667
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 669
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 670
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_21

    .line 671
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 673
    :cond_21
    :try_start_21
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_39

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 674
    const/4 v4, 0x1

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 676
    .end local v2    # "taskRecord":Lcom/android/server/wm/Task;
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3e

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_44

    .line 679
    goto :goto_5f

    .line 676
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/PersonaActivityHelper;
    .end local p1    # "taskId":I
    throw v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_44

    .line 677
    .restart local p0    # "this":Lcom/android/server/wm/PersonaActivityHelper;
    .restart local p1    # "taskId":I
    :catch_44
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaActivityHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5f
    return v0
.end method

.method public needNotificationForGen(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "knox_gen_first_notification"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v3, v2

    :cond_13
    move v0, v3

    .line 657
    goto :goto_30

    .line 655
    :catch_15
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaActivityHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_30
    return v0
.end method

.method notifyActivityResumedLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isTopOfTask"    # Z

    .line 247
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 248
    return-void

    .line 250
    :cond_9
    if-nez v0, :cond_c

    return-void

    .line 252
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    .line 253
    .local v1, "activityState":Lcom/android/server/wm/ActivityStack$ActivityState;
    iget v11, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 254
    .local v11, "userId":I
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    .line 255
    .local v12, "component":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v13

    .line 256
    .local v13, "activityType":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v14

    .line 257
    .local v14, "windowingMode":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v15

    .line 258
    .local v15, "fullscreenFlag":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3c

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_3a
    move v9, v2

    goto :goto_3d

    :cond_3c
    move v9, v3

    .line 259
    .local v9, "visibleFlag":Z
    :goto_3d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/PersonaActivityHelper;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    .line 260
    .local v16, "showWhenLocked":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isDexMode()Z

    move-result v17

    .line 262
    .local v17, "isDesktopModeTask":Z
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v1, v4, :cond_63

    .line 263
    move-object/from16 v10, p0

    iget-object v4, v10, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v16, :cond_57

    .line 266
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_57

    move v5, v2

    goto :goto_58

    :cond_57
    move v5, v3

    .line 263
    :goto_58
    move-object v2, v4

    move v3, v11

    move-object v4, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PersonaManagerService;->postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V

    .line 273
    :cond_63
    return-void
.end method

.method public notifyKillForegroundAppsForUser(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 276
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 277
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    const/4 v1, 0x1

    return v1

    .line 283
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1f
    return v1
.end method

.method notifyResolveActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "targetUserId"    # I

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 190
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 191
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 192
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 193
    const-string v1, "crossProfileTargetUserId"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "targetUserId set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaActivityHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_38
    return-object v0
.end method

.method notifySetResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 204
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 205
    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method

.method notifySplitScreenModeDismissed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 241
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 242
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 243
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 244
    return-void
.end method

.method notifyStartActivityAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "mKnoxInfo"    # Landroid/os/Bundle;

    .line 164
    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 171
    :cond_44
    const-string v0, "com.samsung.knox.container.requestId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, "knoxCreationRequestId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 173
    .local v3, "callingUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " KnoxContainerManager.EXTRA_REQUEST_ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PersonaActivityHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eq v2, v1, :cond_7f

    .line 175
    const/16 v1, 0x3e8

    if-ne v3, v1, :cond_7b

    .line 176
    return-object p1

    .line 178
    :cond_7b
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 179
    return-object p1

    .line 184
    .end local v2    # "knoxCreationRequestId":I
    .end local v3    # "callingUid":I
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    if-nez p1, :cond_88

    goto :goto_89

    .line 185
    :cond_88
    return-object p1

    .line 184
    :cond_89
    :goto_89
    return-object p1
.end method

.method notifyStartActivityFromRecents(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "windowingMode"    # I

    .line 200
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 201
    :cond_7
    return-void
.end method

.method public notifyTaskStackChanged()V
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 647
    return-void
.end method

.method onSystemReady()V
    .registers 8

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 142
    :cond_11
    new-instance v1, Lcom/android/server/wm/PersonaActivityHelper$1;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/PersonaActivityHelper$1;-><init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Handler;)V

    .line 152
    .local v1, "contentObserver":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 153
    const-string v3, "FINGERPRINT_PLUS_STATE"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v4

    .line 157
    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_4d

    const/4 v6, 0x1

    :cond_4d
    iput-boolean v6, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDedicatedFingerprintState:Z

    .line 161
    :cond_4f
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    monitor-enter v0

    .line 131
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 132
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
