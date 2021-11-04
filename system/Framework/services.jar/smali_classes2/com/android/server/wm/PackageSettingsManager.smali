.class public Lcom/android/server/wm/PackageSettingsManager;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageSettingsManager$TaskStarter;,
        Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;,
        Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;,
        Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;,
        Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;,
        Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;,
        Lcom/android/server/wm/PackageSettingsManager$FileHandler;,
        Lcom/android/server/wm/PackageSettingsManager$AspectRatioValue;,
        Lcom/android/server/wm/PackageSettingsManager$AspectRatioPolicy;,
        Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPolicy;,
        Lcom/android/server/wm/PackageSettingsManager$AppContinuityPolicy;,
        Lcom/android/server/wm/PackageSettingsManager$RequestPackageSettings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageSettingsManager"

.field private static final USE_LAZY_FILE_MANAGER_HELPER:Z = true


# instance fields
.field public final mAppContinuityPackages:Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCurrentDisplayAspectRatio:F

.field public final mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

.field public final mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

.field public final mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

.field private mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;

.field mHasDisplayCutout:Z

.field mIsEmergencyMode:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 204
    new-instance v0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 205
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;-><init>(Landroid/os/Looper;)V

    .line 207
    .local v0, "lazyFileManagerHelper":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mAppContinuityPackages:Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;

    .line 209
    new-instance v2, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Lcom/android/server/wm/PackageSettingsManager$1;)V

    iput-object v2, p0, Lcom/android/server/wm/PackageSettingsManager;->mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    .line 211
    iput-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

    .line 213
    iput-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mFixedAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;

    .line 217
    # getter for: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mLazyThread:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$100(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->start()V

    .line 219
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager;
    .param p1, "x1"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager;->mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;

    return-object p1
.end method

.method static appContinuityPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "policy"    # I

    .line 982
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 990
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 988
    :cond_d
    const-string v0, "Not applied"

    return-object v0

    .line 986
    :cond_10
    const-string v0, "Applied"

    return-object v0

    .line 984
    :cond_13
    const-string v0, "Restricted"

    return-object v0
.end method

.method static aspectRatioPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "policy"    # I

    .line 995
    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 1005
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1003
    :cond_10
    const-string v0, "Unchangeable aspect ratio"

    return-object v0

    .line 1001
    :cond_13
    const-string v0, "Unchangeable full screen"

    return-object v0

    .line 999
    :cond_16
    const-string v0, "FullScreen"

    return-object v0

    .line 997
    :cond_19
    const-string v0, "Default"

    return-object v0
.end method

.method static displayCompatPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "policy"    # I

    .line 1010
    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 1024
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1022
    :cond_16
    const-string v0, "EXCLUDE_BY_META_DATA"

    return-object v0

    .line 1020
    :cond_19
    const-string v0, "FORCED_UNRESIZEABLE_BY_BLOCK_LIST"

    return-object v0

    .line 1018
    :cond_1c
    const-string v0, "FORCED_RESIZEABLE_BY_ALLOW_LIST"

    return-object v0

    .line 1016
    :cond_1f
    const-string v0, "FORCED_UNRESIZEABLE_BY_USER_SETTING"

    return-object v0

    .line 1014
    :cond_22
    const-string v0, "FORCED_RESIZEABLE_BY_USER_SETTING"

    return-object v0

    .line 1012
    :cond_25
    const-string v0, "NONE"

    return-object v0
.end method

.method static hasDefinedAspectRatio(F)Z
    .registers 2
    .param p0, "aspectRatio"    # F

    .line 978
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isForcedResizeableDisplayCompatPolicy(I)Z
    .registers 3
    .param p0, "policy"    # I

    .line 966
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    if-eq p0, v0, :cond_b

    const/4 v1, 0x5

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static isForcedUnresizeableDisplayCompatPolicy(I)Z
    .registers 2
    .param p0, "policy"    # I

    .line 973
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method static synthetic lambda$killAndRestartTask$0(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 257
    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p0, v0, :cond_16

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 258
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 257
    :goto_17
    return v0
.end method

.method static synthetic lambda$killAndRestartTask$1(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V
    .registers 1
    .param p0, "taskStarter"    # Lcom/android/server/wm/PackageSettingsManager$TaskStarter;

    .line 264
    # invokes: Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->restartTask()V
    invoke-static {p0}, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->access$1500(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PACKAGE SETTINGS MANAGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCurrentDisplayAspectRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mIsEmergencyMode:Z

    if-eqz v1, :cond_58

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mIsEmergencyMode=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_58
    iget-boolean v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mHasDisplayCutout:Z

    if-eqz v1, :cond_71

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHasDisplayCutout=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :cond_71
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    # invokes: Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    invoke-static {v1, p1, v0}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->access$400(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 293
    return-void
.end method

.method killAndRestartTask(ILjava/lang/String;Landroid/app/ActivityOptions;ILjava/lang/String;)V
    .registers 15
    .param p1, "restartTaskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 251
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_21

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 254
    .local v5, "targetTask":Lcom/android/server/wm/Task;
    new-instance v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/PackageSettingsManager$1;)V

    move-object v3, v1

    move-object v1, v5

    .local v1, "taskStarter":Lcom/android/server/wm/PackageSettingsManager$TaskStarter;
    goto :goto_2f

    .line 256
    .end local v1    # "taskStarter":Lcom/android/server/wm/PackageSettingsManager$TaskStarter;
    .end local v5    # "targetTask":Lcom/android/server/wm/Task;
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$IJD5HlMnMcETqU6j1NPc2DfERRw;

    invoke-direct {v3, p4, p2}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$IJD5HlMnMcETqU6j1NPc2DfERRw;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 259
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    const/4 v3, 0x0

    .line 261
    .local v3, "taskStarter":Lcom/android/server/wm/PackageSettingsManager$TaskStarter;
    :goto_2f
    if-eqz v1, :cond_47

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v5, p5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 263
    if-eqz v3, :cond_47

    .line 264
    iget-object v2, p0, Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$1aHITpFWzK7IYL-9USZuWNVVI_Q;

    invoke-direct {v4, v3}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$1aHITpFWzK7IYL-9USZuWNVVI_Q;-><init>(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 267
    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .end local v3    # "taskStarter":Lcom/android/server/wm/PackageSettingsManager$TaskStarter;
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 268
    return-void

    .line 267
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 222
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 223
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_f

    :cond_d
    iget v1, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 224
    .local v1, "width":I
    :goto_f
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_18

    :cond_16
    iget v2, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 225
    .local v2, "height":I
    :goto_18
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    .line 226
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    .line 229
    nop

    .line 230
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    iput-boolean v3, p0, Lcom/android/server/wm/PackageSettingsManager;->mHasDisplayCutout:Z

    .line 233
    iget-object v3, p0, Lcom/android/server/wm/PackageSettingsManager;->mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    # invokes: Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->updateFullScreenEnabled()V
    invoke-static {v3}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->access$200(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;)V

    .line 235
    return-void
.end method

.method onEmergencyModeChanged(Z)V
    .registers 3
    .param p1, "isEmergencyMode"    # Z

    .line 238
    iput-boolean p1, p0, Lcom/android/server/wm/PackageSettingsManager;->mIsEmergencyMode:Z

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    # invokes: Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->updateFullScreenEnabled()V
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->access$200(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;)V

    .line 243
    return-void
.end method
