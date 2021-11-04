.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 152
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 155
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "factory"    # Lcom/android/server/wm/ActivityStarter$Factory;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 160
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 161
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 162
    new-instance v0, Lcom/android/server/wm/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStartController$StartHandler;-><init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 164
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 165
    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStartController;

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private applyWindowingModeOptionsAndFlagToFirstIntent([Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)V
    .registers 11
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "firstActivityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "lastActivityOptions"    # Landroid/app/ActivityOptions;

    .line 746
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 747
    return-void

    .line 749
    :cond_5
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 750
    .local v1, "firstIntent":Landroid/content/Intent;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p1, v2

    .line 751
    .local v2, "lastIntent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 752
    .local v4, "launchWindowingMode":I
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/16 v6, 0x1000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v0

    .line 753
    .local v3, "hasAdjacent":Z
    :goto_1c
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v5

    if-eqz v5, :cond_30

    if-eqz v3, :cond_30

    .line 754
    invoke-virtual {p2, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 755
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 756
    invoke-virtual {p3, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 757
    invoke-virtual {v2, v6}, Landroid/content/Intent;->removeFlags(I)V

    .line 759
    :cond_30
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v5

    .line 760
    .local v5, "forceLaunchWindowingMode":I
    invoke-static {v5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 761
    invoke-virtual {p2, v5}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 762
    invoke-virtual {p3, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 764
    :cond_40
    return-void
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .registers 2
    .param p0, "x$0"    # I

    .line 577
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V
    .registers 3
    .param p1, "launch"    # Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .registers 7
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 302
    if-eqz p2, :cond_9

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 307
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 958
    .local v0, "pendingLaunches":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "palNdx":I
    :goto_8
    if-ltz v1, :cond_26

    .line 959
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 960
    .local v2, "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 961
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_23

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 962
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 958
    .end local v2    # "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 965
    .end local v1    # "palNdx":I
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method final doPendingActivityLaunches(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;Landroid/app/ActivityOptions;)V
    .registers 15
    .param p1, "pal"    # Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 938
    const/4 v0, 0x0

    const-string/jumbo v1, "pendingActivityLaunch-for-process-kill"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 941
    .local v0, "starter":Lcom/android/server/wm/ActivityStarter;
    :try_start_8
    iget-object v3, p1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    move-object v2, v0

    move-object v9, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    .line 946
    goto :goto_38

    .line 943
    :catch_1a
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during pending activity launch for process kill. pal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 948
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method doPendingActivityLaunches(Z)V
    .registers 14
    .param p1, "doResume"    # Z

    .line 921
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 923
    .local v0, "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    move v8, v1

    .line 924
    .local v8, "resume":Z
    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 927
    .local v1, "starter":Lcom/android/server/wm/ActivityStarter;
    :try_start_25
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    move-object v2, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_39

    .line 932
    goto :goto_57

    .line 929
    :catch_39
    move-exception v2

    .line 930
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during pending activity launch pal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 933
    .end local v0    # "pal":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v1    # "starter":Lcom/android/server/wm/ActivityStarter;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "resume":Z
    :goto_57
    goto :goto_0

    .line 934
    :cond_58
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 984
    const/4 v0, 0x0

    .line 986
    .local v0, "dumped":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    .line 988
    .local v3, "dumpPackagePresent":Z
    :goto_8
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "  "

    if-eqz v4, :cond_3b

    if-eqz v3, :cond_18

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 989
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 990
    :cond_18
    if-nez v0, :cond_1e

    .line 991
    const/4 v0, 0x1

    .line 992
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 994
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v4, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 999
    :cond_3b
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_78

    .line 1000
    if-eqz v3, :cond_55

    .line 1001
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_54

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1003
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_55

    :cond_54
    goto :goto_56

    :cond_55
    :goto_55
    move v1, v2

    .line 1005
    .local v1, "dump":Z
    :goto_56
    if-eqz v1, :cond_78

    .line 1006
    if-nez v0, :cond_5e

    .line 1007
    const/4 v0, 0x1

    .line 1008
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1010
    :cond_5e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1013
    if-eqz v3, :cond_78

    .line 1014
    return-void

    .line 1019
    .end local v1    # "dump":Z
    :cond_78
    if-nez v0, :cond_82

    .line 1020
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    const-string v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    :cond_82
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1026
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    .line 1027
    .local v1, "activity":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1028
    .end local v1    # "activity":Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    goto :goto_6

    .line 1029
    :cond_18
    return-void
.end method

.method dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 978
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    const-string/jumbo v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 981
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .registers 2

    .line 974
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .registers 3
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_c

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 185
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/wm/ActivityStack;

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_5

    .line 194
    return-void

    .line 197
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 198
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 970
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 971
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .registers 5
    .param p1, "delayMs"    # J

    .line 915
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 54
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "resolvedTypes"    # [Ljava/lang/String;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "userId"    # I
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p14, "allowBackgroundActivityStart"    # Z

    .line 485
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move-object/from16 v1, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    if-eqz v1, :cond_5a9

    .line 488
    if-eqz v10, :cond_5a0

    .line 491
    array-length v0, v1

    array-length v2, v10

    if-ne v0, v2, :cond_597

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz v11, :cond_47

    .line 498
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 499
    .local v2, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v2, :cond_47

    .line 500
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 502
    .local v3, "tmpOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2f

    .line 503
    invoke-virtual {v3, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 505
    :cond_2f
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 506
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 510
    :cond_3c
    invoke-direct {v7, v1, v3, v2}, Lcom/android/server/wm/ActivityStartController;->applyWindowingModeOptionsAndFlagToFirstIntent([Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)V

    .line 518
    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v4, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v0, v4

    move-object v12, v0

    goto :goto_48

    .line 523
    .end local v2    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v3    # "tmpOptions":Landroid/app/ActivityOptions;
    :cond_47
    move-object v12, v0

    .end local v0    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_48
    if-eqz p3, :cond_4d

    .line 524
    move/from16 v0, p3

    goto :goto_51

    .line 525
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_51
    move v13, v0

    .line 526
    .local v13, "realCallingPid":I
    const/4 v0, -0x1

    move/from16 v14, p4

    if-eq v14, v0, :cond_59

    .line 527
    move v2, v14

    goto :goto_5d

    .line 528
    :cond_59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :goto_5d
    move v15, v2

    .line 531
    .local v15, "realCallingUid":I
    if-ltz p2, :cond_65

    .line 532
    const/4 v2, -0x1

    move/from16 v6, p2

    move v5, v2

    .local v2, "callingPid":I
    goto :goto_70

    .line 533
    .end local v2    # "callingPid":I
    :cond_65
    if-nez v8, :cond_6c

    .line 534
    move v2, v13

    .line 535
    .restart local v2    # "callingPid":I
    move v3, v15

    move v5, v2

    move v6, v3

    .end local p2    # "callingUid":I
    .local v3, "callingUid":I
    goto :goto_70

    .line 537
    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_6c
    move v2, v0

    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    move v3, v0

    move v6, v2

    move v5, v3

    .line 539
    .end local v2    # "callingUid":I
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    :goto_70
    const/16 v2, -0x2710

    invoke-static {v6, v15, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v4

    .line 541
    .local v4, "filterCallingUid":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v2

    .line 542
    .local v3, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 545
    .local v23, "origId":J
    const/4 v2, 0x0

    .line 546
    .local v2, "launchPair":Z
    const/16 v16, 0x0

    .line 547
    .local v16, "optionsForPair":Landroid/app/ActivityOptions;
    array-length v0, v1

    move-object/from16 p2, v3

    .end local v3    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-array v3, v0, [Landroid/content/Intent;

    .line 550
    .local v3, "intentsForPairCheck":[Landroid/content/Intent;
    array-length v0, v1

    const/16 v25, 0x0

    move-object/from16 v17, v3

    .end local v3    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v17, "intentsForPairCheck":[Landroid/content/Intent;
    if-eqz v0, :cond_9d

    aget-object v0, v1, v25

    if-eqz v0, :cond_9d

    aget-object v0, v1, v25

    .line 551
    invoke-virtual {v0}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_9d

    const/4 v0, 0x1

    goto :goto_9f

    :cond_9d
    move/from16 v0, v25

    .line 552
    .local v0, "hasPairWindowingMode":Z
    :goto_9f
    if-nez v0, :cond_b1

    iget-object v3, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v3}, Lcom/android/server/wm/AppPairController;->shouldChangeOnlyLayout()Z

    move-result v3

    if-eqz v3, :cond_ac

    goto :goto_b1

    :cond_ac
    move/from16 v26, v2

    move-object/from16 v3, v16

    goto :goto_ce

    .line 553
    :cond_b1
    :goto_b1
    const/4 v2, 0x1

    .line 554
    if-nez v11, :cond_b9

    .line 555
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v3, "optionsForPair":Landroid/app/ActivityOptions;
    goto :goto_bf

    .line 557
    .end local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    :cond_b9
    iget-object v3, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v11, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 559
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    :goto_bf
    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "hasPairWindowingMode":Z
    .local v16, "hasPairWindowingMode":Z
    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setLaunchPair(Z)V

    .line 560
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppPairController;->preStartPairActivities(Landroid/app/ActivityOptions;)V

    move/from16 v26, v2

    .line 563
    .end local v2    # "launchPair":Z
    .end local v16    # "hasPairWindowingMode":Z
    .local v26, "launchPair":Z
    :goto_ce
    move/from16 v27, v26

    .line 564
    .local v27, "launchAppPair":Z
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_f4

    if-eqz v27, :cond_f4

    .line 565
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 566
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_f1

    .line 567
    move-object/from16 v16, v3

    const/4 v2, 0x1

    .end local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v16, "optionsForPair":Landroid/app/ActivityOptions;
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 569
    .local v3, "candidate":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_f6

    .line 570
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V

    goto :goto_f6

    .line 566
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v3, "optionsForPair":Landroid/app/ActivityOptions;
    :cond_f1
    move-object/from16 v16, v3

    .end local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    goto :goto_f6

    .line 564
    .end local v0    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    :cond_f4
    move-object/from16 v16, v3

    .line 577
    .end local v3    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    :cond_f6
    :goto_f6
    :try_start_f6
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_578

    move-object v3, v0

    .line 578
    .end local p7    # "intents":[Landroid/content/Intent;
    .local v3, "intents":[Landroid/content/Intent;
    :try_start_ff
    array-length v0, v3

    new-array v0, v0, [Lcom/android/server/wm/ActivityStarter;
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_565

    move-object v2, v0

    .line 581
    .local v2, "starters":[Lcom/android/server/wm/ActivityStarter;
    const/4 v0, 0x0

    move-object/from16 v19, p9

    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v0, "i":I
    .local v19, "resultTo":Landroid/os/IBinder;
    :goto_106
    :try_start_106
    array-length v1, v3
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_552

    const/16 v28, 0x0

    if-ge v0, v1, :cond_3c6

    .line 582
    :try_start_10b
    aget-object v1, v3, v0

    .line 583
    .local v1, "intent":Landroid/content/Intent;
    const/16 v29, 0x0

    .line 586
    .local v29, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-virtual {v1}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v20

    if-nez v20, :cond_391

    .line 591
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_11e

    const/16 v20, 0x1

    goto :goto_120

    :cond_11e
    move/from16 v20, v25

    :goto_120
    move/from16 p7, v20

    .line 593
    .local p7, "componentSpecified":Z
    move-object/from16 v20, v2

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v20, "starters":[Lcom/android/server/wm/ActivityStarter;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_129
    .catchall {:try_start_10b .. :try_end_129} :catchall_3ae

    .line 596
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    move/from16 v21, p11

    .line 597
    .local v21, "appUserId":I
    if-eqz v26, :cond_1b5

    .line 598
    :try_start_12d
    invoke-virtual {v2}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v1

    .line 600
    .local v1, "pairActivityUserId":I
    move-object/from16 p9, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local p9, "intent":Landroid/content/Intent;
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_172

    .line 601
    const/16 v22, 0x1

    const-string/jumbo v30, "startPairActivities"
    :try_end_13e
    .catchall {:try_start_12d .. :try_end_13e} :catchall_19f

    move/from16 v31, v1

    .end local v1    # "pairActivityUserId":I
    .local v31, "pairActivityUserId":I
    move-object/from16 v1, p0

    move-object/from16 v32, v12

    move-object/from16 v12, v20

    const/16 v18, 0x1

    .end local v20    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v32, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    move/from16 v2, v31

    move-object/from16 v33, p2

    move-object/from16 v35, v3

    move-object/from16 v36, v16

    move-object/from16 v34, v17

    move/from16 v14, v18

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v33, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v34, "intentsForPairCheck":[Landroid/content/Intent;
    .local v35, "intents":[Landroid/content/Intent;
    .local v36, "optionsForPair":Landroid/app/ActivityOptions;
    move/from16 v3, v22

    move/from16 p2, v4

    .end local v4    # "filterCallingUid":I
    .local p2, "filterCallingUid":I
    move v4, v13

    move/from16 v37, v5

    .end local v5    # "callingPid":I
    .local v37, "callingPid":I
    move v5, v15

    move/from16 v38, v6

    .end local v6    # "callingUid":I
    .local v38, "callingUid":I
    move-object/from16 v6, v30

    :try_start_160
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_167

    move/from16 v21, v1

    goto :goto_187

    .line 732
    .end local v0    # "i":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v21    # "appUserId":I
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v31    # "pairActivityUserId":I
    .end local p7    # "componentSpecified":Z
    .end local p9    # "intent":Landroid/content/Intent;
    :catchall_167
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v19

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .line 600
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v0    # "i":I
    .restart local v1    # "pairActivityUserId":I
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v20    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v21    # "appUserId":I
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p7    # "componentSpecified":Z
    .restart local p9    # "intent":Landroid/content/Intent;
    :cond_172
    move-object/from16 v33, p2

    move/from16 v31, v1

    move-object/from16 v35, v3

    move/from16 p2, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v34, v17

    move-object/from16 v12, v20

    const/4 v14, 0x1

    .line 604
    .end local v1    # "pairActivityUserId":I
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v20    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v31    # "pairActivityUserId":I
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .local p2, "filterCallingUid":I
    :goto_187
    const/4 v1, 0x0

    .line 605
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .local v1, "resultTo":Landroid/os/IBinder;
    :try_start_188
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/app/ActivityOptions;->setLaunchPair(Z)V
    :try_end_191
    .catchall {:try_start_188 .. :try_end_191} :catchall_194

    move/from16 v2, v21

    goto :goto_1ce

    .line 732
    .end local v0    # "i":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v21    # "appUserId":I
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v31    # "pairActivityUserId":I
    .end local p7    # "componentSpecified":Z
    .end local p9    # "intent":Landroid/content/Intent;
    :catchall_194
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v1

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v1    # "resultTo":Landroid/os/IBinder;
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_19f
    move-exception v0

    move-object/from16 v33, p2

    move-object/from16 v35, v3

    move-object/from16 v32, v12

    move v8, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v36, v16

    move-object/from16 v5, v17

    move-object/from16 v16, v19

    move-object/from16 v11, v33

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .local p2, "filterCallingUid":I
    goto/16 :goto_58a

    .line 597
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v0    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v20    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v21    # "appUserId":I
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p7    # "componentSpecified":Z
    :cond_1b5
    move-object/from16 v33, p2

    move-object/from16 p9, v2

    move-object/from16 v35, v3

    move/from16 p2, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v34, v17

    move-object/from16 v12, v20

    const/4 v14, 0x1

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v20    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .local p2, "filterCallingUid":I
    .restart local p9    # "intent":Landroid/content/Intent;
    move-object/from16 v1, v19

    move/from16 v2, v21

    .line 607
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .end local v21    # "appUserId":I
    .restart local v1    # "resultTo":Landroid/os/IBinder;
    .local v2, "appUserId":I
    :goto_1ce
    if-eqz v27, :cond_1f3

    .line 608
    nop

    .line 609
    :try_start_1d1
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->isStartedAsWindowTypeLauncher()Z

    move-result v3
    :try_end_1d5
    .catchall {:try_start_1d1 .. :try_end_1d5} :catchall_1e8

    .line 608
    move-object/from16 v4, v36

    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v4, "optionsForPair":Landroid/app/ActivityOptions;
    :try_start_1d7
    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1db

    goto :goto_1f5

    .line 732
    .end local v0    # "i":I
    .end local v2    # "appUserId":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p7    # "componentSpecified":Z
    .end local p9    # "intent":Landroid/content/Intent;
    :catchall_1db
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v1

    move-object/from16 v36, v4

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    :catchall_1e8
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v1

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    goto/16 :goto_58a

    .line 607
    .end local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v0    # "i":I
    .restart local v2    # "appUserId":I
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local p7    # "componentSpecified":Z
    .restart local p9    # "intent":Landroid/content/Intent;
    :cond_1f3
    move-object/from16 v4, v36

    .line 614
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    :goto_1f5
    :try_start_1f5
    iget-object v3, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    aget-object v18, v10, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, p9

    move/from16 v21, v2

    move/from16 v22, p2

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 620
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_211
    .catchall {:try_start_1f5 .. :try_end_211} :catchall_380

    move-object v3, v5

    .line 625
    if-eqz v3, :cond_24c

    .line 626
    :try_start_214
    iget-object v5, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 629
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14
    :try_end_226
    .catchall {:try_start_214 .. :try_end_226} :catchall_23f

    .line 627
    move-object/from16 v16, v1

    move/from16 v1, p2

    move/from16 p2, v2

    move-object/from16 v2, p9

    .end local p9    # "intent":Landroid/content/Intent;
    .local v1, "filterCallingUid":I
    .local v2, "intent":Landroid/content/Intent;
    .local v16, "resultTo":Landroid/os/IBinder;
    .local p2, "appUserId":I
    :try_start_22e
    invoke-interface {v5, v2, v1, v6, v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v5
    :try_end_232
    .catchall {:try_start_22e .. :try_end_232} :catchall_235

    move-object/from16 v29, v5

    goto :goto_256

    .line 732
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local p2    # "appUserId":I
    .end local p7    # "componentSpecified":Z
    :catchall_235
    move-exception v0

    move v8, v1

    move-object/from16 v36, v4

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v16    # "resultTo":Landroid/os/IBinder;
    .local v1, "resultTo":Landroid/os/IBinder;
    .local p2, "filterCallingUid":I
    :catchall_23f
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v8, p2

    move-object/from16 v36, v4

    move-object/from16 v11, v33

    move-object/from16 v5, v34

    .end local p2    # "filterCallingUid":I
    .local v1, "filterCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_58a

    .line 625
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v0    # "i":I
    .local v1, "resultTo":Landroid/os/IBinder;
    .local v2, "appUserId":I
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local p2    # "filterCallingUid":I
    .restart local p7    # "componentSpecified":Z
    .restart local p9    # "intent":Landroid/content/Intent;
    :cond_24c
    move-object/from16 v16, v1

    move/from16 v1, p2

    move/from16 p2, v2

    move-object/from16 v2, p9

    .end local p9    # "intent":Landroid/content/Intent;
    .local v1, "filterCallingUid":I
    .local v2, "intent":Landroid/content/Intent;
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .local p2, "appUserId":I
    move-object/from16 v5, v29

    .line 632
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v5, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_256
    if-eqz v3, :cond_28a

    .line 633
    :try_start_258
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_26e

    .line 638
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_268
    .catchall {:try_start_258 .. :try_end_268} :catchall_280

    move-object/from16 v11, v33

    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v11, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :try_start_26a
    invoke-virtual {v11, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28c

    .line 635
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_26e
    move-object/from16 v11, v33

    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v14, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v6, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "filterCallingUid":I
    .end local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "realCallingPid":I
    .end local v15    # "realCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local v23    # "origId":J
    .end local v26    # "launchPair":Z
    .end local v27    # "launchAppPair":Z
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v6
    :try_end_278
    .catchall {:try_start_26a .. :try_end_278} :catchall_278

    .line 732
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p2    # "appUserId":I
    .end local p7    # "componentSpecified":Z
    .restart local v1    # "filterCallingUid":I
    .restart local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v13    # "realCallingPid":I
    .restart local v15    # "realCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "origId":J
    .restart local v26    # "launchPair":Z
    .restart local v27    # "launchAppPair":Z
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_278
    move-exception v0

    move v8, v1

    move-object/from16 v36, v4

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_280
    move-exception v0

    move-object/from16 v11, v33

    move v8, v1

    move-object/from16 v36, v4

    move-object/from16 v5, v34

    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto/16 :goto_58a

    .line 632
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v0    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p2    # "appUserId":I
    .restart local p7    # "componentSpecified":Z
    :cond_28a
    move-object/from16 v11, v33

    .line 642
    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :goto_28c
    move-object/from16 v6, v35

    .end local v35    # "intents":[Landroid/content/Intent;
    .local v6, "intents":[Landroid/content/Intent;
    :try_start_28e
    array-length v14, v6
    :try_end_28f
    .catchall {:try_start_28e .. :try_end_28f} :catchall_372

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v0, v14, :cond_297

    const/4 v14, 0x1

    goto :goto_299

    :cond_297
    move/from16 v14, v25

    .line 646
    .local v14, "top":Z
    :goto_299
    if-eqz v14, :cond_29e

    .line 647
    move-object/from16 v17, p10

    goto :goto_2b5

    .line 649
    :cond_29e
    if-eqz v4, :cond_2b3

    .line 650
    :try_start_2a0
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v17
    :try_end_2a8
    .catchall {:try_start_2a0 .. :try_end_2a8} :catchall_2a9

    goto :goto_2b5

    .line 732
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v14    # "top":Z
    .end local p2    # "appUserId":I
    .end local p7    # "componentSpecified":Z
    :catchall_2a9
    move-exception v0

    move v8, v1

    move-object/from16 v36, v4

    move-object/from16 v35, v6

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .line 652
    .restart local v0    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v14    # "top":Z
    .restart local p2    # "appUserId":I
    .restart local p7    # "componentSpecified":Z
    :cond_2b3
    move-object/from16 v17, v28

    :goto_2b5
    nop

    .line 654
    .local v17, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-nez v17, :cond_2ca

    .line 655
    if-nez v0, :cond_2bd

    const/16 v19, 0x1

    goto :goto_2bf

    :cond_2bd
    move/from16 v19, v25

    .line 656
    .local v19, "root":Z
    :goto_2bf
    if-eqz v19, :cond_2c3

    move-object/from16 v28, v32

    :cond_2c3
    move-object/from16 v17, v28

    move-object/from16 v36, v4

    move-object/from16 v4, v17

    goto :goto_2ce

    .line 654
    .end local v19    # "root":Z
    :cond_2ca
    move-object/from16 v36, v4

    move-object/from16 v4, v17

    .line 659
    .end local v17    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v4, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    :goto_2ce
    move/from16 v17, v1

    move-object/from16 v35, v6

    move-object/from16 v6, p12

    .end local v1    # "filterCallingUid":I
    .end local v6    # "intents":[Landroid/content/Intent;
    .local v17, "filterCallingUid":I
    .restart local v35    # "intents":[Landroid/content/Intent;
    :try_start_2d4
    invoke-virtual {v7, v2, v6}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    move-object/from16 p9, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p9    # "intent":Landroid/content/Intent;
    aget-object v2, v10, v0

    .line 662
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 664
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1
    :try_end_2f1
    .catchall {:try_start_2d4 .. :try_end_2f1} :catchall_369

    .line 665
    move/from16 v2, v37

    .end local v37    # "callingPid":I
    .local v2, "callingPid":I
    :try_start_2f3
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1
    :try_end_2f7
    .catchall {:try_start_2f3 .. :try_end_2f7} :catchall_35e

    .line 666
    move/from16 v37, v2

    move/from16 v2, v38

    .end local v38    # "callingUid":I
    .local v2, "callingUid":I
    .restart local v37    # "callingPid":I
    :try_start_2fb
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1
    :try_end_303
    .catchall {:try_start_2fb .. :try_end_303} :catchall_353

    .line 668
    move/from16 v38, v2

    move-object/from16 v2, p6

    .end local v2    # "callingUid":I
    .restart local v38    # "callingUid":I
    :try_start_307
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 670
    invoke-virtual {v1, v15}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 671
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 672
    move/from16 v2, p7

    .end local p7    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 677
    move/from16 v19, v2

    move-object/from16 v2, p13

    .end local v2    # "componentSpecified":Z
    .local v19, "componentSpecified":Z
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1
    :try_end_329
    .catchall {:try_start_307 .. :try_end_329} :catchall_369

    .line 678
    move/from16 v2, p14

    :try_start_32b
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    aput-object v1, v12, v0
    :try_end_331
    .catchall {:try_start_32b .. :try_end_331} :catchall_34c

    .line 581
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v14    # "top":Z
    .end local v19    # "componentSpecified":Z
    .end local p2    # "appUserId":I
    .end local p9    # "intent":Landroid/content/Intent;
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, p4

    move-object/from16 p2, v11

    move-object v2, v12

    move-object/from16 v19, v16

    move/from16 v4, v17

    move-object/from16 v12, v32

    move-object/from16 v17, v34

    move-object/from16 v3, v35

    move-object/from16 v16, v36

    move/from16 v5, v37

    move/from16 v6, v38

    move-object/from16 v11, p10

    goto/16 :goto_106

    .line 732
    .end local v0    # "i":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_34c
    move-exception v0

    move/from16 v8, v17

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v38    # "callingUid":I
    .local v2, "callingUid":I
    :catchall_353
    move-exception v0

    move/from16 v38, v2

    move/from16 v2, p14

    move/from16 v8, v17

    move-object/from16 v5, v34

    .end local v2    # "callingUid":I
    .restart local v38    # "callingUid":I
    goto/16 :goto_58a

    .end local v37    # "callingPid":I
    .local v2, "callingPid":I
    :catchall_35e
    move-exception v0

    move/from16 v37, v2

    move/from16 v2, p14

    move/from16 v8, v17

    move-object/from16 v5, v34

    .end local v2    # "callingPid":I
    .restart local v37    # "callingPid":I
    goto/16 :goto_58a

    :catchall_369
    move-exception v0

    move/from16 v2, p14

    move/from16 v8, v17

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .end local v17    # "filterCallingUid":I
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v1    # "filterCallingUid":I
    .local v4, "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v6    # "intents":[Landroid/content/Intent;
    :catchall_372
    move-exception v0

    move/from16 v2, p14

    move-object/from16 v36, v4

    move-object/from16 v35, v6

    move-object/from16 v6, p12

    move v8, v1

    move-object/from16 v5, v34

    .end local v1    # "filterCallingUid":I
    .end local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v6    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    goto/16 :goto_58a

    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local v17    # "filterCallingUid":I
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v1, "resultTo":Landroid/os/IBinder;
    .restart local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "filterCallingUid":I
    :catchall_380
    move-exception v0

    move-object/from16 v6, p12

    move/from16 v2, p14

    move-object/from16 v16, v1

    move-object/from16 v36, v4

    move-object/from16 v11, v33

    move/from16 v8, p2

    move-object/from16 v5, v34

    .end local v1    # "resultTo":Landroid/os/IBinder;
    .end local v4    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v33    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local p2    # "filterCallingUid":I
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v17    # "filterCallingUid":I
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    goto/16 :goto_58a

    .line 587
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v0    # "i":I
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v3, "intents":[Landroid/content/Intent;
    .local v4, "filterCallingUid":I
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v16, "optionsForPair":Landroid/app/ActivityOptions;
    .local v17, "intentsForPairCheck":[Landroid/content/Intent;
    .local v19, "resultTo":Landroid/os/IBinder;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_391
    move-object/from16 v11, p2

    move-object/from16 v35, v3

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v34, v17

    move-object/from16 v6, p12

    move-object v12, v2

    move/from16 v17, v4

    move/from16 v2, p14

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v17, "filterCallingUid":I
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    :try_start_3a6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "realCallingPid":I
    .end local v15    # "realCallingUid":I
    .end local v17    # "filterCallingUid":I
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .end local v23    # "origId":J
    .end local v26    # "launchPair":Z
    .end local v27    # "launchAppPair":Z
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v3
    :try_end_3ae
    .catchall {:try_start_3a6 .. :try_end_3ae} :catchall_41b

    .line 732
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v13    # "realCallingPid":I
    .restart local v15    # "realCallingUid":I
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v17, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "origId":J
    .restart local v26    # "launchPair":Z
    .restart local v27    # "launchAppPair":Z
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_3ae
    move-exception v0

    move-object/from16 v11, p2

    move/from16 v2, p14

    move-object/from16 v35, v3

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v6, p12

    move v8, v4

    move-object/from16 v5, v17

    move-object/from16 v16, v19

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v17, "filterCallingUid":I
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    goto/16 :goto_58a

    .line 581
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v0    # "i":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .local v17, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_3c6
    move-object/from16 v11, p2

    move-object/from16 v35, v3

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v34, v17

    move-object/from16 v6, p12

    move-object v12, v2

    move/from16 v17, v4

    move/from16 v2, p14

    .line 681
    .end local v0    # "i":I
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v12, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v17, "filterCallingUid":I
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    :try_start_3db
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_3df
    .catchall {:try_start_3db .. :try_end_3df} :catchall_54a

    const/4 v1, 0x1

    if-le v0, v1, :cond_424

    .line 682
    :try_start_3e2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivities: different apps ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 684
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3ef
    if-ge v3, v1, :cond_409

    .line 685
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_401

    const-string v4, "]"

    goto :goto_403

    :cond_401
    const-string v4, ", "

    :goto_403
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ef

    .line 687
    .end local v3    # "i":I
    :cond_409
    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v3, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41a
    .catchall {:try_start_3e2 .. :try_end_41a} :catchall_41b

    goto :goto_424

    .line 732
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "size":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_41b
    move-exception v0

    move/from16 v8, v17

    move-object/from16 v16, v19

    move-object/from16 v5, v34

    goto/16 :goto_58a

    .line 691
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :cond_424
    :goto_424
    move-object/from16 v1, v19

    .line 692
    .local v1, "sourceResultTo":Landroid/os/IBinder;
    const/4 v0, 0x1

    :try_start_427
    new-array v3, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 694
    .local v3, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_42e
    .catchall {:try_start_427 .. :try_end_42e} :catchall_54a

    :try_start_42e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 695
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_436
    .catchall {:try_start_42e .. :try_end_436} :catchall_538

    .line 697
    const/4 v0, 0x0

    move-object/from16 v5, v19

    .end local v19    # "resultTo":Landroid/os/IBinder;
    .local v0, "i":I
    .local v5, "resultTo":Landroid/os/IBinder;
    :goto_439
    :try_start_439
    array-length v14, v12

    if-ge v0, v14, :cond_508

    .line 698
    aget-object v14, v12, v0

    invoke-virtual {v14, v5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v14

    .line 699
    invoke-virtual {v14, v3}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v14
    :try_end_44a
    .catchall {:try_start_439 .. :try_end_44a} :catchall_528

    .line 700
    .local v14, "startResult":I
    if-gez v14, :cond_49a

    .line 702
    add-int/lit8 v16, v0, 0x1

    move/from16 v2, v16

    .local v2, "j":I
    :goto_450
    move-object/from16 v16, v5

    .end local v5    # "resultTo":Landroid/os/IBinder;
    .local v16, "resultTo":Landroid/os/IBinder;
    :try_start_452
    array-length v5, v12
    :try_end_453
    .catchall {:try_start_452 .. :try_end_453} :catchall_491

    if-ge v2, v5, :cond_46c

    .line 703
    :try_start_455
    iget-object v5, v7, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v6, v12, v2

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_45c
    .catchall {:try_start_455 .. :try_end_45c} :catchall_463

    .line 702
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, p12

    move-object/from16 v5, v16

    goto :goto_450

    .line 727
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v14    # "startResult":I
    :catchall_463
    move-exception v0

    move-object/from16 p2, v1

    move/from16 v8, v17

    move-object/from16 v5, v34

    goto/16 :goto_531

    .line 705
    .restart local v0    # "i":I
    .restart local v14    # "startResult":I
    :cond_46c
    nop

    .line 727
    :try_start_46d
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v4
    :try_end_473
    .catchall {:try_start_46d .. :try_end_473} :catchall_488

    .line 732
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v26, :cond_482

    .line 733
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    move-object/from16 v5, v34

    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    goto :goto_484

    .line 732
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :cond_482
    move-object/from16 v5, v34

    .line 736
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    :goto_484
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    return v14

    .line 729
    .end local v0    # "i":I
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v14    # "startResult":I
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_488
    move-exception v0

    move-object/from16 v5, v34

    move-object/from16 p2, v1

    move/from16 v8, v17

    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    goto/16 :goto_541

    .line 727
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_491
    move-exception v0

    move-object/from16 v5, v34

    move-object/from16 p2, v1

    move/from16 v8, v17

    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    goto/16 :goto_531

    .line 707
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v0    # "i":I
    .local v5, "resultTo":Landroid/os/IBinder;
    .restart local v14    # "startResult":I
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :cond_49a
    move-object/from16 v16, v5

    move-object/from16 v5, v34

    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    :try_start_49e
    aget-object v2, v3, v25
    :try_end_4a0
    .catchall {:try_start_49e .. :try_end_4a0} :catchall_502

    .line 708
    .local v2, "started":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_4bf

    :try_start_4a2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6
    :try_end_4a6
    .catchall {:try_start_4a2 .. :try_end_4a6} :catchall_4b8

    move/from16 v8, v17

    .end local v17    # "filterCallingUid":I
    .local v8, "filterCallingUid":I
    if-ne v6, v8, :cond_4c1

    .line 711
    :try_start_4aa
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;
    :try_end_4ac
    .catchall {:try_start_4aa .. :try_end_4ac} :catchall_4b3

    move-object/from16 p2, v1

    move-object/from16 p7, v2

    const/16 v16, 0x1

    .end local v16    # "resultTo":Landroid/os/IBinder;
    .local v6, "resultTo":Landroid/os/IBinder;
    goto :goto_4dd

    .line 727
    .end local v0    # "i":I
    .end local v2    # "started":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "resultTo":Landroid/os/IBinder;
    .end local v14    # "startResult":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    :catchall_4b3
    move-exception v0

    move-object/from16 p2, v1

    goto/16 :goto_531

    .end local v8    # "filterCallingUid":I
    .restart local v17    # "filterCallingUid":I
    :catchall_4b8
    move-exception v0

    move/from16 v8, v17

    move-object/from16 p2, v1

    .end local v17    # "filterCallingUid":I
    .restart local v8    # "filterCallingUid":I
    goto/16 :goto_531

    .line 708
    .end local v8    # "filterCallingUid":I
    .restart local v0    # "i":I
    .restart local v2    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "startResult":I
    .restart local v17    # "filterCallingUid":I
    :cond_4bf
    move/from16 v8, v17

    .line 713
    .end local v17    # "filterCallingUid":I
    .restart local v8    # "filterCallingUid":I
    :cond_4c1
    move-object v6, v1

    .line 715
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v6    # "resultTo":Landroid/os/IBinder;
    move-object/from16 p2, v1

    .end local v1    # "sourceResultTo":Landroid/os/IBinder;
    .local p2, "sourceResultTo":Landroid/os/IBinder;
    :try_start_4c4
    array-length v1, v12

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4db

    .line 716
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 p7, v2

    .end local v2    # "started":Lcom/android/server/wm/ActivityRecord;
    .local p7, "started":Lcom/android/server/wm/ActivityRecord;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4dd

    .line 715
    .end local p7    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "started":Lcom/android/server/wm/ActivityRecord;
    :cond_4db
    move-object/from16 p7, v2

    .line 720
    .end local v2    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local p7    # "started":Lcom/android/server/wm/ActivityRecord;
    :goto_4dd
    if-eqz v26, :cond_4ed

    .line 721
    nop

    .line 722
    aget-object v1, v3, v25

    if-eqz v1, :cond_4e9

    aget-object v1, v3, v25

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_4eb

    :cond_4e9
    move-object/from16 v1, v28

    :goto_4eb
    aput-object v1, v5, v0
    :try_end_4ed
    .catchall {:try_start_4c4 .. :try_end_4ed} :catchall_4fe

    .line 697
    .end local v14    # "startResult":I
    .end local p7    # "started":Lcom/android/server/wm/ActivityRecord;
    :cond_4ed
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p14

    move-object/from16 v34, v5

    move-object v5, v6

    move/from16 v17, v8

    move-object/from16 v8, p1

    move-object/from16 v6, p12

    goto/16 :goto_439

    .line 727
    .end local v0    # "i":I
    :catchall_4fe
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_531

    .end local v6    # "resultTo":Landroid/os/IBinder;
    .end local v8    # "filterCallingUid":I
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v1    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v17    # "filterCallingUid":I
    :catchall_502
    move-exception v0

    move-object/from16 p2, v1

    move/from16 v8, v17

    .end local v1    # "sourceResultTo":Landroid/os/IBinder;
    .end local v17    # "filterCallingUid":I
    .restart local v8    # "filterCallingUid":I
    .restart local p2    # "sourceResultTo":Landroid/os/IBinder;
    goto :goto_531

    .line 697
    .end local v8    # "filterCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v0    # "i":I
    .restart local v1    # "sourceResultTo":Landroid/os/IBinder;
    .local v5, "resultTo":Landroid/os/IBinder;
    .restart local v17    # "filterCallingUid":I
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :cond_508
    move-object/from16 p2, v1

    move-object/from16 v16, v5

    move/from16 v8, v17

    move-object/from16 v5, v34

    .line 727
    .end local v0    # "i":I
    .end local v1    # "sourceResultTo":Landroid/os/IBinder;
    .end local v17    # "filterCallingUid":I
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "sourceResultTo":Landroid/os/IBinder;
    :try_start_510
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 728
    nop

    .line 729
    monitor-exit v4
    :try_end_517
    .catchall {:try_start_510 .. :try_end_517} :catchall_548

    :try_start_517
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_51a
    .catchall {:try_start_517 .. :try_end_51a} :catchall_546

    .line 732
    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    if-eqz v26, :cond_523

    .line 733
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    .line 736
    :cond_523
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    nop

    .line 739
    return v25

    .line 727
    .end local v8    # "filterCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v1    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .local v5, "resultTo":Landroid/os/IBinder;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v17    # "filterCallingUid":I
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_528
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v16, v5

    move/from16 v8, v17

    move-object/from16 v5, v34

    .end local v1    # "sourceResultTo":Landroid/os/IBinder;
    .end local v17    # "filterCallingUid":I
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "sourceResultTo":Landroid/os/IBinder;
    :goto_531
    :try_start_531
    iget-object v1, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 728
    nop

    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v13    # "realCallingPid":I
    .end local v15    # "realCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local v23    # "origId":J
    .end local v26    # "launchPair":Z
    .end local v27    # "launchAppPair":Z
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0

    .line 729
    .restart local v1    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v13    # "realCallingPid":I
    .restart local v15    # "realCallingUid":I
    .restart local v17    # "filterCallingUid":I
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "origId":J
    .restart local v26    # "launchPair":Z
    .restart local v27    # "launchAppPair":Z
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_538
    move-exception v0

    move-object/from16 p2, v1

    move/from16 v8, v17

    move-object/from16 v5, v34

    move-object/from16 v16, v19

    .end local v1    # "sourceResultTo":Landroid/os/IBinder;
    .end local v17    # "filterCallingUid":I
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "sourceResultTo":Landroid/os/IBinder;
    :goto_541
    monitor-exit v4
    :try_end_542
    .catchall {:try_start_531 .. :try_end_542} :catchall_548

    :try_start_542
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "realCallingPid":I
    .end local v15    # "realCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local v23    # "origId":J
    .end local v26    # "launchPair":Z
    .end local v27    # "launchAppPair":Z
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_546
    .catchall {:try_start_542 .. :try_end_546} :catchall_546

    .line 732
    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v13    # "realCallingPid":I
    .restart local v15    # "realCallingUid":I
    .restart local v16    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "origId":J
    .restart local v26    # "launchPair":Z
    .restart local v27    # "launchAppPair":Z
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_546
    move-exception v0

    goto :goto_58a

    .line 729
    .restart local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p2    # "sourceResultTo":Landroid/os/IBinder;
    :catchall_548
    move-exception v0

    goto :goto_541

    .line 732
    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v8    # "filterCallingUid":I
    .end local v12    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local p2    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v17    # "filterCallingUid":I
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_54a
    move-exception v0

    move/from16 v8, v17

    move-object/from16 v5, v34

    move-object/from16 v16, v19

    .end local v17    # "filterCallingUid":I
    .end local v34    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    goto :goto_58a

    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .local v3, "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    .local v12, "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v16, "optionsForPair":Landroid/app/ActivityOptions;
    .local v17, "intentsForPairCheck":[Landroid/content/Intent;
    .local p2, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_552
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v35, v3

    move v8, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v5, v17

    move-object/from16 v16, v19

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v6    # "callingUid":I
    .end local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    goto :goto_58a

    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v3    # "intents":[Landroid/content/Intent;
    .restart local v4    # "filterCallingUid":I
    .local v5, "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p9, "resultTo":Landroid/os/IBinder;
    :catchall_565
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v35, v3

    move v8, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v5, v17

    move-object/from16 v16, p9

    .end local v3    # "intents":[Landroid/content/Intent;
    .end local v4    # "filterCallingUid":I
    .end local v6    # "callingUid":I
    .end local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    goto :goto_58a

    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .restart local v4    # "filterCallingUid":I
    .local v5, "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p7, "intents":[Landroid/content/Intent;
    :catchall_578
    move-exception v0

    move-object/from16 v11, p2

    move v8, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v32, v12

    move-object/from16 v36, v16

    move-object/from16 v5, v17

    move-object/from16 v35, p7

    move-object/from16 v16, p9

    .end local v4    # "filterCallingUid":I
    .end local v6    # "callingUid":I
    .end local v12    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v17    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p2    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local p7    # "intents":[Landroid/content/Intent;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v8    # "filterCallingUid":I
    .restart local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v16, "resultTo":Landroid/os/IBinder;
    .restart local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v35    # "intents":[Landroid/content/Intent;
    .restart local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .restart local v37    # "callingPid":I
    .restart local v38    # "callingUid":I
    :goto_58a
    if-eqz v26, :cond_593

    .line 733
    iget-object v1, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    .line 736
    :cond_593
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    throw v0

    .line 492
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v8    # "filterCallingUid":I
    .end local v11    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "realCallingPid":I
    .end local v15    # "realCallingUid":I
    .end local v16    # "resultTo":Landroid/os/IBinder;
    .end local v23    # "origId":J
    .end local v26    # "launchPair":Z
    .end local v27    # "launchAppPair":Z
    .end local v32    # "launchActivityOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "intents":[Landroid/content/Intent;
    .end local v36    # "optionsForPair":Landroid/app/ActivityOptions;
    .end local v37    # "callingPid":I
    .end local v38    # "callingUid":I
    .local p2, "callingUid":I
    .restart local p7    # "intents":[Landroid/content/Intent;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :cond_597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_5a0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_5a9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 36
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "validateIncomingUser"    # Z
    .param p12, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p13, "allowBackgroundActivityStart"    # Z

    .line 469
    const-string/jumbo v0, "startActivityInPackage"

    .line 471
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 471
    const-string/jumbo v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 475
    .end local p10    # "userId":I
    .local v1, "userId":I
    const/4 v8, 0x0

    const-string/jumbo v19, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, v1

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 26
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "validateIncomingUser"    # Z
    .param p10, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p11, "allowBackgroundActivityStart"    # Z

    .line 445
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 35
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p13, "userId"    # I
    .param p14, "inTask"    # Lcom/android/server/wm/Task;
    .param p15, "reason"    # Ljava/lang/String;
    .param p16, "validateIncomingUser"    # Z
    .param p17, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p18, "allowBackgroundActivityStart"    # Z

    .line 324
    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p12

    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_17

    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v0, :cond_32

    :cond_17
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 325
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    const/16 v1, -0x66

    return v1

    .line 332
    .end local v0    # "msg":Landroid/os/Message;
    :cond_32
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p16

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 337
    .end local p13    # "userId":I
    .local v0, "userId":I
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    if-eqz v9, :cond_a4

    .line 338
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 339
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_a4

    .line 341
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 342
    .local v1, "callingUserId":I
    invoke-static {v9, v1, v0, v8, v7}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 345
    .local v2, "chooserIntent":Landroid/content/Intent;
    if-eqz v2, :cond_75

    .line 346
    move-object v3, v2

    .line 347
    .end local p6    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .end local p7    # "resolvedType":Ljava/lang/String;
    .local v4, "resolvedType":Ljava/lang/String;
    goto :goto_78

    .line 345
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "intent":Landroid/content/Intent;
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :cond_75
    move-object/from16 v4, p7

    move-object v3, v9

    .line 350
    .end local p6    # "intent":Landroid/content/Intent;
    .end local p7    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :goto_78
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 351
    const/4 v5, 0x0

    .line 352
    .local v5, "callee":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_8e

    .line 353
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_92

    .line 355
    :cond_8e
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 357
    :goto_92
    if-eqz v8, :cond_a7

    if-eqz v5, :cond_a7

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a7

    .line 358
    invoke-static {v5}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 359
    const/4 v0, 0x0

    goto :goto_a7

    .line 367
    .end local v1    # "callingUserId":I
    .end local v2    # "chooserIntent":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "resolvedType":Ljava/lang/String;
    .end local v5    # "callee":Ljava/lang/String;
    .restart local p6    # "intent":Landroid/content/Intent;
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :cond_a4
    move-object/from16 v4, p7

    move-object v3, v9

    .end local p6    # "intent":Landroid/content/Intent;
    .end local p7    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :cond_a7
    :goto_a7
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v1, :cond_143

    .line 369
    if-eqz v8, :cond_143

    .line 370
    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 372
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, v8}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    move-result v2

    .line 374
    .local v2, "hiddenDisplayId":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_143

    .line 381
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v9, 0x66

    const-string v11, "SPEG"

    if-eqz v5, :cond_129

    .line 382
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "intentPackageName":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f5

    .line 386
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") is trying to startActivityInPackage from another package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v9

    .line 392
    :cond_f5
    if-nez v10, :cond_fc

    .line 393
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    goto :goto_102

    .line 394
    :cond_fc
    iget-object v9, v6, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v9

    :goto_102
    nop

    .line 395
    .local v9, "activityOptions":Landroid/app/ActivityOptions;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reuse old hidden display #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v9, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 399
    new-instance v11, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v11, v9}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v5, v11

    .line 400
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local p12    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v5, "options":Lcom/android/server/wm/SafeActivityOptions;
    goto :goto_144

    .line 401
    .end local v5    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p12    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :cond_129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Intent launched from "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has no component"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v9

    .line 410
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "hiddenDisplayId":I
    :cond_143
    move-object v5, v10

    .end local p12    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :goto_144
    move-object/from16 v1, p15

    invoke-virtual {v6, v3, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 411
    move/from16 v9, p1

    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 412
    move/from16 v10, p2

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 413
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 414
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 415
    move-object/from16 v11, p5

    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 416
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 417
    move-object/from16 v12, p8

    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 418
    move-object/from16 v13, p9

    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 419
    move/from16 v14, p10

    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 420
    move/from16 v15, p11

    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 421
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 422
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 423
    move/from16 p6, v0

    move-object/from16 v0, p14

    .end local v0    # "userId":I
    .local p6, "userId":I
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 424
    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 425
    move/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v2

    .line 410
    return v2
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 202
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 203
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 204
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 208
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 210
    :cond_14
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 211
    .local v2, "displayId":I
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 212
    iget-object v3, p4, Lcom/android/server/wm/TaskDisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 213
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 212
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 217
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 221
    :try_start_29
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_7e

    .line 223
    .local v1, "homeStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 224
    nop

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startHomeActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 227
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 228
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 229
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 230
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setCallerPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 235
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 236
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz v3, :cond_7d

    .line 240
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 242
    :cond_7d
    return-void

    .line 223
    .end local v1    # "homeStack":Lcom/android/server/wm/ActivityStack;
    :catchall_7e
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 224
    throw v1
.end method

.method startSetupActivity()V
    .registers 11

    .line 249
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_5

    .line 250
    return-void

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a0

    .line 258
    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a0

    .line 259
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 268
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 269
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_52

    .line 270
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 271
    :cond_52
    const/4 v5, 0x0

    :goto_53
    nop

    .line 272
    .local v5, "vers":Ljava/lang/String;
    if-nez v5, :cond_68

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_68

    .line 273
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_68
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_a0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 279
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 283
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 284
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 289
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_a0
    return-void
.end method

.method startSplitScreenMode(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Z)I
    .registers 46
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "taskId"    # I
    .param p8, "intent"    # Landroid/content/Intent;
    .param p9, "resolvedType"    # Ljava/lang/String;
    .param p10, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "userId"    # I
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "allowBackgroundActivityStart"    # Z

    .line 772
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p7

    move-object/from16 v1, p8

    if-eqz v1, :cond_2e7

    .line 776
    if-eqz p3, :cond_f

    .line 777
    move/from16 v0, p3

    goto :goto_13

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_13
    move v10, v0

    .line 778
    .local v10, "realCallingPid":I
    const/4 v0, -0x1

    move/from16 v11, p4

    if-eq v11, v0, :cond_1b

    .line 779
    move v2, v11

    goto :goto_1f

    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :goto_1f
    move v12, v2

    .line 782
    .local v12, "realCallingUid":I
    if-ltz p2, :cond_27

    .line 783
    const/4 v2, -0x1

    move/from16 v13, p2

    move v14, v2

    .local v2, "callingPid":I
    goto :goto_32

    .line 784
    .end local v2    # "callingPid":I
    :cond_27
    if-nez v8, :cond_2e

    .line 785
    move v2, v10

    .line 786
    .restart local v2    # "callingPid":I
    move v3, v12

    move v14, v2

    move v13, v3

    .end local p2    # "callingUid":I
    .local v3, "callingUid":I
    goto :goto_32

    .line 788
    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_2e
    move v2, v0

    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    move v3, v0

    move v13, v2

    move v14, v3

    .line 790
    .end local v2    # "callingUid":I
    .local v13, "callingUid":I
    .local v14, "callingPid":I
    :goto_32
    const/16 v2, -0x2710

    invoke-static {v13, v12, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v15

    .line 792
    .local v15, "filterCallingUid":I
    const/4 v6, 0x1

    new-array v5, v6, [Landroid/content/Intent;

    .line 796
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v4, p10

    invoke-virtual {v4, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 797
    .local v3, "optionsForNewTask":Landroid/app/ActivityOptions;
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPairWindowingMode(I)V

    .line 798
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 799
    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setLaunchPair(Z)V

    .line 800
    invoke-virtual/range {p8 .. p8}, Landroid/content/Intent;->isStartedAsWindowTypeLauncher()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 803
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 807
    .local v6, "optionsForRecentTask":Landroid/app/ActivityOptions;
    nop

    .line 808
    invoke-virtual/range {p8 .. p8}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_66

    const/4 v2, 0x1

    goto :goto_67

    :cond_66
    const/4 v2, 0x0

    :goto_67
    move/from16 v22, v2

    .line 809
    .local v22, "setNewTaskAsPrimary":Z
    if-eqz v22, :cond_73

    .line 810
    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 811
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_76

    .line 813
    :cond_73
    invoke-virtual {v6, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 815
    :goto_76
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_84

    .line 816
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 819
    :cond_84
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/AppPairController;->preStartPairActivities(Landroid/app/ActivityOptions;Z)V

    .line 821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 826
    .local v23, "origId":J
    const/4 v0, 0x0

    .line 829
    .local v0, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :try_start_91
    invoke-virtual/range {p8 .. p8}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_2bb

    .line 834
    invoke-virtual/range {p8 .. p8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_a0

    const/16 v16, 0x1

    goto :goto_a2

    :cond_a0
    move/from16 v16, v2

    :goto_a2
    move/from16 v25, v16

    .line 836
    .local v25, "componentSpecified":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_a9
    .catchall {:try_start_91 .. :try_end_a9} :catchall_2d1

    .line 838
    .end local p8    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    move/from16 v17, p11

    .line 839
    .local v17, "appUserId":I
    :try_start_ab
    invoke-virtual {v2}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v1

    .line 841
    .local v1, "pairActivityUserId":I
    move-object/from16 v26, v0

    .end local v0    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v26, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_2b0

    if-ne v1, v0, :cond_cf

    move-object/from16 v18, v3

    move/from16 v3, p11

    .end local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .local v18, "optionsForNewTask":Landroid/app/ActivityOptions;
    if-eq v3, v1, :cond_c0

    if-lez v1, :cond_c0

    goto :goto_d3

    .line 848
    :cond_c0
    move/from16 v27, v1

    move-object/from16 p8, v2

    move-object/from16 v30, v5

    move-object v11, v6

    move/from16 v1, v17

    move-object/from16 v29, v18

    const/4 v0, 0x1

    const/16 v28, 0x0

    goto :goto_f2

    .line 841
    .end local v18    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    :cond_cf
    move-object/from16 v18, v3

    move/from16 v3, p11

    .line 843
    .end local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v18    # "optionsForNewTask":Landroid/app/ActivityOptions;
    :goto_d3
    const/4 v0, 0x1

    :try_start_d4
    const-string/jumbo v19, "startSplitScreenMode"
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_2a5

    move/from16 v27, v1

    .end local v1    # "pairActivityUserId":I
    .local v27, "pairActivityUserId":I
    move-object/from16 v1, p0

    move-object/from16 p8, v2

    const/16 v28, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p8    # "intent":Landroid/content/Intent;
    move/from16 v2, v27

    move-object/from16 v29, v18

    .end local v18    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .local v29, "optionsForNewTask":Landroid/app/ActivityOptions;
    move v3, v0

    move v4, v10

    move-object/from16 v30, v5

    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v30, "intentsForPairCheck":[Landroid/content/Intent;
    move v5, v12

    move-object v11, v6

    const/4 v0, 0x1

    .end local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v11, "optionsForRecentTask":Landroid/app/ActivityOptions;
    move-object/from16 v6, v19

    :try_start_ec
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    .line 848
    .end local v17    # "appUserId":I
    .local v1, "appUserId":I
    :goto_f2
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_29b

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v3, v15

    .end local v15    # "filterCallingUid":I
    .local v3, "filterCallingUid":I
    move-object v15, v2

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v20, v1

    move/from16 v21, v3

    :try_start_102
    invoke-virtual/range {v15 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 852
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, v2, v1}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_10e
    .catchall {:try_start_102 .. :try_end_10e} :catchall_291

    move-object v2, v4

    .line 855
    if-eqz v2, :cond_13e

    .line 856
    :try_start_111
    iget-object v4, v7, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 859
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_133

    .line 857
    move-object/from16 v15, p8

    .end local p8    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_125
    invoke-interface {v4, v15, v3, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v4
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_12a

    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_142

    .line 906
    .end local v1    # "appUserId":I
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v25    # "componentSpecified":Z
    .end local v27    # "pairActivityUserId":I
    :catchall_12a
    move-exception v0

    move-object/from16 v6, p12

    move/from16 p2, v3

    move-object/from16 v4, v30

    goto/16 :goto_2dc

    .end local v15    # "intent":Landroid/content/Intent;
    .restart local p8    # "intent":Landroid/content/Intent;
    :catchall_133
    move-exception v0

    move-object/from16 v15, p8

    move-object/from16 v6, p12

    move/from16 p2, v3

    move-object/from16 v4, v30

    .end local p8    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    goto/16 :goto_2dc

    .line 855
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v1    # "appUserId":I
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "componentSpecified":Z
    .restart local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v27    # "pairActivityUserId":I
    .restart local p8    # "intent":Landroid/content/Intent;
    :cond_13e
    move-object/from16 v15, p8

    .end local p8    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v4, v26

    .line 862
    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_142
    nop

    .line 863
    :try_start_143
    invoke-virtual/range {v29 .. v29}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v5
    :try_end_14b
    .catchall {:try_start_143 .. :try_end_14b} :catchall_288

    .line 865
    .local v5, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v6, p12

    :try_start_14d
    invoke-virtual {v7, v15, v6}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 866
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 867
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 868
    move/from16 p8, v1

    move-object/from16 v1, p9

    .end local v1    # "appUserId":I
    .local p8, "appUserId":I
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 869
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 870
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 871
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 872
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 873
    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 874
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 875
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 876
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 878
    move/from16 v1, v25

    .end local v25    # "componentSpecified":Z
    .local v1, "componentSpecified":Z
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 879
    move/from16 v16, v1

    move/from16 v1, p13

    .end local v1    # "componentSpecified":Z
    .local v16, "componentSpecified":Z
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v17, v0

    .line 881
    .local v17, "starters":Lcom/android/server/wm/ActivityStarter;
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    move-object/from16 p2, v0

    .line 884
    .local p2, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_1a4
    .catchall {:try_start_14d .. :try_end_1a4} :catchall_286

    :try_start_1a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 885
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_1ac
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_26d

    .line 887
    if-nez v22, :cond_1dd

    .line 888
    :try_start_1ae
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    :try_end_1b2
    .catchall {:try_start_1ae .. :try_end_1b2} :catchall_1cc

    move-object/from16 v18, v2

    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_1b4
    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v11}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v14, v13, v9, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_1bc
    .catchall {:try_start_1b4 .. :try_end_1bc} :catchall_1bd

    goto :goto_1df

    .line 902
    :catchall_1bd
    move-exception v0

    move-object/from16 v20, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v30

    move/from16 v31, v3

    move-object/from16 v3, p2

    move/from16 p2, v31

    goto/16 :goto_266

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1cc
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v30

    move/from16 v31, v3

    move-object/from16 v3, p2

    move/from16 p2, v31

    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_266

    .line 887
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1dd
    move-object/from16 v18, v2

    .line 891
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_1df
    move-object/from16 v2, v17

    move/from16 v31, v3

    move-object/from16 v3, p2

    move/from16 p2, v31

    .end local v17    # "starters":Lcom/android/server/wm/ActivityStarter;
    .local v2, "starters":Lcom/android/server/wm/ActivityStarter;
    .local v3, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .local p2, "filterCallingUid":I
    :try_start_1e7
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_1ef
    .catchall {:try_start_1e7 .. :try_end_1ef} :catchall_25f

    .line 892
    .local v0, "startResult":I
    if-gez v0, :cond_21c

    .line 893
    move-object/from16 v17, v4

    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v17, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :try_start_1f3
    iget-object v4, v7, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v4, v2}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_1f8
    .catchall {:try_start_1f3 .. :try_end_1f8} :catchall_216

    .line 894
    nop

    .line 902
    :try_start_1f9
    iget-object v4, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v1
    :try_end_1ff
    .catchall {:try_start_1f9 .. :try_end_1ff} :catchall_20f

    .line 906
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    move-object/from16 v4, v30

    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v4, "intentsForPairCheck":[Landroid/content/Intent;
    invoke-virtual {v1, v4}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    .line 907
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    return v0

    .line 904
    .end local v0    # "startResult":I
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_20f
    move-exception v0

    move-object/from16 v4, v30

    move-object/from16 v20, v2

    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    goto/16 :goto_27c

    .line 902
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_216
    move-exception v0

    move-object/from16 v4, v30

    move-object/from16 v20, v2

    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    goto :goto_266

    .line 896
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v0    # "startResult":I
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    :cond_21c
    move-object/from16 v17, v4

    move-object/from16 v4, v30

    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v4, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v22, :cond_237

    .line 897
    move/from16 v19, v0

    .end local v0    # "startResult":I
    .local v19, "startResult":I
    :try_start_224
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    :try_end_228
    .catchall {:try_start_224 .. :try_end_228} :catchall_233

    move-object/from16 v20, v2

    .end local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    .local v20, "starters":Lcom/android/server/wm/ActivityStarter;
    :try_start_22a
    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v11}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v14, v13, v9, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    goto :goto_23b

    .line 902
    .end local v19    # "startResult":I
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    :catchall_233
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    goto :goto_266

    .line 896
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v0    # "startResult":I
    .restart local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    :cond_237
    move/from16 v19, v0

    move-object/from16 v20, v2

    .line 900
    .end local v0    # "startResult":I
    .end local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v19    # "startResult":I
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    :goto_23b
    aget-object v0, v3, v28

    if-eqz v0, :cond_244

    aget-object v0, v3, v28

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_245

    :cond_244
    const/4 v0, 0x0

    :goto_245
    aput-object v0, v4, v28
    :try_end_247
    .catchall {:try_start_22a .. :try_end_247} :catchall_25d

    .line 902
    .end local v19    # "startResult":I
    :try_start_247
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 903
    nop

    .line 904
    monitor-exit v1
    :try_end_24e
    .catchall {:try_start_247 .. :try_end_24e} :catchall_284

    :try_start_24e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_281

    .line 906
    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "componentSpecified":Z
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .end local v27    # "pairActivityUserId":I
    .end local p8    # "appUserId":I
    iget-object v0, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    .line 907
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    nop

    .line 910
    return v28

    .line 902
    .restart local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "componentSpecified":Z
    .restart local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v27    # "pairActivityUserId":I
    .restart local p8    # "appUserId":I
    :catchall_25d
    move-exception v0

    goto :goto_266

    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_25f
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v4

    move-object/from16 v4, v30

    .end local v2    # "starters":Lcom/android/server/wm/ActivityStarter;
    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v4, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    :goto_266
    :try_start_266
    iget-object v2, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 903
    nop

    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v10    # "realCallingPid":I
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v12    # "realCallingUid":I
    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "componentSpecified":Z
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .end local v22    # "setNewTaskAsPrimary":Z
    .end local v23    # "origId":J
    .end local v27    # "pairActivityUserId":I
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "filterCallingUid":I
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p7    # "taskId":I
    .end local p8    # "appUserId":I
    .end local p9    # "resolvedType":Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v0

    .line 904
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "filterCallingUid":I
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v10    # "realCallingPid":I
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v12    # "realCallingUid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "componentSpecified":Z
    .local v17, "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v22    # "setNewTaskAsPrimary":Z
    .restart local v23    # "origId":J
    .restart local v27    # "pairActivityUserId":I
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .local p2, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "taskId":I
    .restart local p8    # "appUserId":I
    .restart local p9    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_26d
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v30

    move/from16 v31, v3

    move-object/from16 v3, p2

    move/from16 p2, v31

    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v3, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .local v4, "intentsForPairCheck":[Landroid/content/Intent;
    .local v17, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .local p2, "filterCallingUid":I
    :goto_27c
    monitor-exit v1
    :try_end_27d
    .catchall {:try_start_266 .. :try_end_27d} :catchall_284

    :try_start_27d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v10    # "realCallingPid":I
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v12    # "realCallingUid":I
    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v22    # "setNewTaskAsPrimary":Z
    .end local v23    # "origId":J
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "filterCallingUid":I
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p7    # "taskId":I
    .end local p9    # "resolvedType":Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_281
    .catchall {:try_start_27d .. :try_end_281} :catchall_281

    .line 906
    .end local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "componentSpecified":Z
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .end local v27    # "pairActivityUserId":I
    .end local p8    # "appUserId":I
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v10    # "realCallingPid":I
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v12    # "realCallingUid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v22    # "setNewTaskAsPrimary":Z
    .restart local v23    # "origId":J
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "filterCallingUid":I
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "taskId":I
    .restart local p9    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_281
    move-exception v0

    goto/16 :goto_2dc

    .line 904
    .restart local v3    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v16    # "componentSpecified":Z
    .restart local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .restart local v27    # "pairActivityUserId":I
    .restart local p8    # "appUserId":I
    :catchall_284
    move-exception v0

    goto :goto_27c

    .line 906
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v5    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v16    # "componentSpecified":Z
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "starters":Lcom/android/server/wm/ActivityStarter;
    .end local v27    # "pairActivityUserId":I
    .end local p2    # "filterCallingUid":I
    .end local p8    # "appUserId":I
    .local v3, "filterCallingUid":I
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    :catchall_286
    move-exception v0

    goto :goto_28b

    :catchall_288
    move-exception v0

    move-object/from16 v6, p12

    :goto_28b
    move/from16 p2, v3

    move-object/from16 v4, v30

    .end local v3    # "filterCallingUid":I
    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p2    # "filterCallingUid":I
    goto/16 :goto_2dc

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local p2    # "filterCallingUid":I
    .restart local v3    # "filterCallingUid":I
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .local p8, "intent":Landroid/content/Intent;
    :catchall_291
    move-exception v0

    move-object/from16 v15, p8

    move-object/from16 v6, p12

    move/from16 p2, v3

    move-object/from16 v4, v30

    .end local v3    # "filterCallingUid":I
    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p8    # "intent":Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local p2    # "filterCallingUid":I
    goto :goto_2dc

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p2    # "filterCallingUid":I
    .local v15, "filterCallingUid":I
    .restart local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local p8    # "intent":Landroid/content/Intent;
    :catchall_29b
    move-exception v0

    move-object/from16 v6, p12

    move/from16 p2, v15

    move-object/from16 v4, v30

    move-object/from16 v15, p8

    .end local v30    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local p8    # "intent":Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    .restart local p2    # "filterCallingUid":I
    goto :goto_2dc

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p2    # "filterCallingUid":I
    .local v2, "intent":Landroid/content/Intent;
    .local v5, "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "filterCallingUid":I
    .local v18, "optionsForNewTask":Landroid/app/ActivityOptions;
    :catchall_2a5
    move-exception v0

    move-object v4, v5

    move-object v11, v6

    move/from16 p2, v15

    move-object/from16 v29, v18

    move-object/from16 v6, p12

    move-object v15, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v18    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p2    # "filterCallingUid":I
    goto :goto_2dc

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p2    # "filterCallingUid":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .local v3, "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "filterCallingUid":I
    :catchall_2b0
    move-exception v0

    move-object/from16 v29, v3

    move-object v4, v5

    move-object v11, v6

    move/from16 p2, v15

    move-object/from16 v6, p12

    move-object v15, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p2    # "filterCallingUid":I
    goto :goto_2dc

    .line 830
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p2    # "filterCallingUid":I
    .local v0, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "filterCallingUid":I
    .restart local p8    # "intent":Landroid/content/Intent;
    :cond_2bb
    move-object/from16 v26, v0

    move-object/from16 v29, v3

    move-object v4, v5

    move-object v11, v6

    move/from16 p2, v15

    move-object/from16 v6, p12

    .end local v0    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v15    # "filterCallingUid":I
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p2    # "filterCallingUid":I
    :try_start_2c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v10    # "realCallingPid":I
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v12    # "realCallingUid":I
    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .end local v22    # "setNewTaskAsPrimary":Z
    .end local v23    # "origId":J
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "filterCallingUid":I
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p7    # "taskId":I
    .end local p8    # "intent":Landroid/content/Intent;
    .end local p9    # "resolvedType":Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_2cd
    .catchall {:try_start_2c5 .. :try_end_2cd} :catchall_2cd

    .line 906
    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v10    # "realCallingPid":I
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v12    # "realCallingUid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    .restart local v22    # "setNewTaskAsPrimary":Z
    .restart local v23    # "origId":J
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "filterCallingUid":I
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "taskId":I
    .restart local p8    # "intent":Landroid/content/Intent;
    .restart local p9    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "allowBackgroundActivityStart":Z
    :catchall_2cd
    move-exception v0

    move-object/from16 v15, p8

    goto :goto_2dc

    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local p2    # "filterCallingUid":I
    .restart local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .restart local v15    # "filterCallingUid":I
    :catchall_2d1
    move-exception v0

    move-object/from16 v29, v3

    move-object v4, v5

    move-object v11, v6

    move/from16 p2, v15

    move-object/from16 v6, p12

    move-object/from16 v15, p8

    .end local v3    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .end local v5    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v6    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local p8    # "intent":Landroid/content/Intent;
    .restart local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .restart local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .restart local p2    # "filterCallingUid":I
    :goto_2dc
    iget-object v1, v7, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/AppPairController;->postStartPairActivities([Landroid/content/Intent;)V

    .line 907
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    throw v0

    .line 773
    .end local v4    # "intentsForPairCheck":[Landroid/content/Intent;
    .end local v10    # "realCallingPid":I
    .end local v11    # "optionsForRecentTask":Landroid/app/ActivityOptions;
    .end local v12    # "realCallingUid":I
    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v22    # "setNewTaskAsPrimary":Z
    .end local v23    # "origId":J
    .end local v29    # "optionsForNewTask":Landroid/app/ActivityOptions;
    .local p2, "callingUid":I
    .restart local p8    # "intent":Landroid/content/Intent;
    :cond_2e7
    move-object/from16 v6, p12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "intent is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
