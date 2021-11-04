.class Lcom/android/server/wm/PackageSettingsManager$TaskStarter;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStarter"
.end annotation


# instance fields
.field final callingFeatureId:Ljava/lang/String;

.field final callingPackage:Ljava/lang/String;

.field final callingUid:I

.field final intent:Landroid/content/Intent;

.field final options:Lcom/android/server/wm/SafeActivityOptions;

.field final realCallingPid:I

.field final realCallingUid:I

.field final reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;

.field final userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Ljava/lang/String;)V
    .registers 7
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;

    .line 1039
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iget v0, p2, Lcom/android/server/wm/Task;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingUid:I

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->realCallingPid:I

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->realCallingUid:I

    .line 1043
    iget-object v0, p2, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingPackage:Ljava/lang/String;

    .line 1044
    iget-object v0, p2, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingFeatureId:Ljava/lang/String;

    .line 1045
    iget-object v0, p2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->intent:Landroid/content/Intent;

    .line 1046
    const/4 v0, 0x1

    if-eqz p3, :cond_35

    .line 1047
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    if-eq p1, v0, :cond_2d

    .line 1048
    invoke-virtual {p3, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1050
    :cond_2d
    new-instance p1, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {p1, p3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->options:Lcom/android/server/wm/SafeActivityOptions;

    goto :goto_50

    .line 1052
    :cond_35
    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {p1}, Lcom/android/server/wm/PackageSettingsManager;->access$1400(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 1053
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1054
    .local v1, "option":Landroid/app/ActivityOptions;
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1055
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    # setter for: Lcom/android/server/wm/PackageSettingsManager;->mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {p1, v0}, Lcom/android/server/wm/PackageSettingsManager;->access$1402(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/SafeActivityOptions;

    .line 1057
    .end local v1    # "option":Landroid/app/ActivityOptions;
    :cond_4a
    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mFullScreenLaunchOption:Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {p1}, Lcom/android/server/wm/PackageSettingsManager;->access$1400(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 1059
    :goto_50
    iget p1, p2, Lcom/android/server/wm/Task;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->userId:I

    .line 1060
    iput-object p4, p0, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->reason:Ljava/lang/String;

    .line 1061
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/PackageSettingsManager$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/wm/PackageSettingsManager;
    .param p2, "x1"    # Lcom/android/server/wm/Task;
    .param p3, "x2"    # Landroid/app/ActivityOptions;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/android/server/wm/PackageSettingsManager$1;

    .line 1028
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wm/PackageSettingsManager$TaskStarter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$TaskStarter;

    .line 1028
    invoke-direct {p0}, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->restartTask()V

    return-void
.end method

.method private restartTask()V
    .registers 23

    .line 1064
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1065
    iget-object v0, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingUid:I

    iget v5, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->realCallingPid:I

    iget v6, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->realCallingUid:I

    iget-object v7, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingPackage:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->callingFeatureId:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v15, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->options:Lcom/android/server/wm/SafeActivityOptions;

    iget v0, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->userId:I

    const/16 v17, 0x0

    iget-object v14, v1, Lcom/android/server/wm/PackageSettingsManager$TaskStarter;->reason:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v16, v0

    invoke-virtual/range {v3 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    .line 1070
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1071
    return-void

    .line 1070
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
