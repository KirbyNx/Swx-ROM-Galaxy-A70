.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static final sTargetWindowingModes:[I


# instance fields
.field mAddingToTask:Z

.field private mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mComponentCallCounter:Lcom/android/server/am/kpm/ComponentCallCounter;

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDoResume:Z

.field private mFreezeForSplit:Z

.field private mFrozeTaskList:Z

.field private mInTask:Lcom/android/server/wm/Task;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

.field private mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mPreferredWindowingMode:I

.field private mPrimaryCandidate:Lcom/android/server/wm/ActivityStack;

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private mRestrictedBgActivity:Z

.field private mReuseTask:Lcom/android/server/wm/Task;

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mSavedFrontTaskIds:Landroid/util/SparseIntArray;

.field private mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceStack:Lcom/android/server/wm/ActivityStack;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/wm/ActivityStack;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->sTargetWindowingModes:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x3
        0x4
        0xc
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 7
    .param p1, "controller"    # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 311
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 315
    invoke-static {}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->getInstance()Lcom/android/server/am/kpm/ComponentCallCounterDefault;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mComponentCallCounter:Lcom/android/server/am/kpm/ComponentCallCounter;

    .line 329
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseIntArray;

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    .line 666
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 667
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 668
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 670
    if-nez v0, :cond_47

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStarter, mRootWindowContainer is null. caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_47
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 675
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 677
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3838
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p1, :cond_11

    goto :goto_1b

    .line 3841
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    goto :goto_20

    .line 3839
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 3850
    :goto_20
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 3854
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_16

    if-nez p2, :cond_a

    if-eqz p3, :cond_16

    .line 3857
    :cond_a
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_2d

    .line 3862
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    const/4 v0, 0x3

    if-eq v1, v0, :cond_24

    goto :goto_2d

    .line 3872
    :cond_24
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_2d

    .line 3869
    :cond_29
    or-int/2addr p4, v0

    .line 3870
    goto :goto_2d

    .line 3866
    :cond_2b
    or-int/2addr p4, v0

    .line 3867
    nop

    .line 3876
    :goto_2d
    return p4
.end method

.method private canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "bottomTaskId"    # I

    .line 3776
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3777
    return v0

    .line 3779
    :cond_4
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, p2, :cond_9

    .line 3781
    return v0

    .line 3783
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3785
    return v0

    .line 3787
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->isSavedFrontTask(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3789
    return v0

    .line 3791
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 46
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "realCallingPid"    # I
    .param p4, "safeOptions"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .line 1647
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 1648
    .local v6, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1649
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 1650
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1648
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1651
    const/4 v7, 0x0

    if-eqz v3, :cond_2a

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_2b

    :cond_2a
    move v0, v7

    :goto_2b
    move v15, v0

    .line 1653
    .local v15, "userId":I
    const-string v14, " succeeded"

    const-string v13, "ActivityTaskManager"

    const/16 v16, -0x65

    const-string v12, "Start activity "

    if-eqz p5, :cond_4e0

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e0

    .line 1654
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1655
    .local v11, "cmpPackageName":Ljava/lang/String;
    const-string v0, "com.android.settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, ":android:show_fragment"

    const-string v10, "OutOfMemoryError is happened"

    const-string/jumbo v9, "restriction_policy"

    move-object/from16 v17, v10

    const-string v10, "ActivityManager"

    move-object/from16 v18, v10

    if-eqz v0, :cond_22d

    .line 1657
    nop

    .line 1658
    :try_start_56
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    .line 1659
    .local v0, "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v0, :cond_1ef

    invoke-interface {v0, v7, v15}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v9

    if-nez v9, :cond_1ef

    .line 1660
    const/4 v9, 0x0

    .line 1661
    .local v9, "isActivityAllowed":Z
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6b} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6b} :catch_20f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_6b} :catch_1f9

    .line 1662
    .local v8, "activity":Ljava/lang/String;
    if-nez v8, :cond_9c

    .line 1663
    :try_start_6d
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_71} :catch_90
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_84
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6d .. :try_end_71} :catch_74

    move-object/from16 v8, v19

    goto :goto_9c

    .line 1688
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v8    # "activity":Ljava/lang/String;
    .end local v9    # "isActivityAllowed":Z
    :catch_74
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move/from16 v17, v15

    goto/16 :goto_207

    .line 1686
    :catch_84
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move/from16 v17, v15

    goto/16 :goto_219

    .line 1684
    :catch_90
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move/from16 v17, v15

    goto/16 :goto_227

    .line 1665
    .restart local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .restart local v8    # "activity":Ljava/lang/String;
    .restart local v9    # "isActivityAllowed":Z
    :cond_9c
    :goto_9c
    :try_start_9c
    sget-object v10, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v7, v10
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_20f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9c .. :try_end_9f} :catch_1f9

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v9    # "isActivityAllowed":Z
    .local v20, "isActivityAllowed":Z
    :goto_a2
    if-ge v9, v7, :cond_bb

    :try_start_a4
    aget-object v21, v10, v9

    move-object/from16 v22, v21

    .line 1666
    .local v22, "exception":Ljava/lang/String;
    move/from16 v21, v7

    move-object/from16 v7, v22

    .end local v22    # "exception":Ljava/lang/String;
    .local v7, "exception":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b0} :catch_90
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_84
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a4 .. :try_end_b0} :catch_74

    if-eqz v22, :cond_b6

    .line 1667
    const/4 v9, 0x1

    .line 1668
    .end local v20    # "isActivityAllowed":Z
    .restart local v9    # "isActivityAllowed":Z
    move/from16 v20, v9

    goto :goto_bb

    .line 1665
    .end local v7    # "exception":Ljava/lang/String;
    .end local v9    # "isActivityAllowed":Z
    .restart local v20    # "isActivityAllowed":Z
    :cond_b6
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v21

    goto :goto_a2

    .line 1671
    :cond_bb
    :goto_bb
    if-eqz v20, :cond_124

    .line 1672
    const/high16 v7, 0x800000

    :try_start_bf
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1673
    const/4 v7, 0x5

    const/4 v9, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "ActivityStarter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_de} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_de} :catch_110
    .catch Ljava/lang/OutOfMemoryError; {:try_start_bf .. :try_end_de} :catch_102

    move-object v10, v8

    .end local v8    # "activity":Ljava/lang/String;
    .local v10, "activity":Ljava/lang/String;
    move v8, v7

    move-object/from16 v26, v10

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    const/4 v7, 0x0

    .end local v10    # "activity":Ljava/lang/String;
    .local v26, "activity":Ljava/lang/String;
    move v10, v7

    move-object v7, v11

    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .local v7, "cmpPackageName":Ljava/lang/String;
    move/from16 v11, v21

    move-object/from16 v29, v12

    move-object/from16 v12, v22

    move-object/from16 v30, v13

    move-object/from16 v13, v24

    move-object/from16 v31, v14

    move-object/from16 v14, v25

    move/from16 v17, v15

    .end local v15    # "userId":I
    .local v17, "userId":I
    :try_start_f9
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    goto/16 :goto_227

    .line 1688
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v20    # "isActivityAllowed":Z
    .end local v26    # "activity":Ljava/lang/String;
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .restart local v15    # "userId":I
    :catch_102
    move-exception v0

    move-object v7, v11

    move-object/from16 v31, v14

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    goto/16 :goto_205

    .line 1686
    :catch_110
    move-exception v0

    move-object v7, v11

    move-object/from16 v31, v14

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    goto/16 :goto_217

    .line 1684
    :catch_11a
    move-exception v0

    move-object v7, v11

    move-object/from16 v31, v14

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    goto/16 :goto_225

    .line 1676
    .restart local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .restart local v8    # "activity":Ljava/lang/String;
    .restart local v20    # "isActivityAllowed":Z
    :cond_124
    move-object/from16 v26, v8

    move-object v7, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move/from16 v17, v15

    .end local v8    # "activity":Ljava/lang/String;
    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    .restart local v26    # "activity":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings restriction policy blocks "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v26

    .end local v26    # "activity":Ljava/lang/String;
    .local v15, "activity":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from starting!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_14b} :catch_1e9
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_14b} :catch_1e3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f9 .. :try_end_14b} :catch_1dd

    move-object/from16 v14, v30

    :try_start_14d
    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_150} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_1d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14d .. :try_end_150} :catch_1cb

    .line 1677
    move/from16 v13, v17

    const/4 v12, 0x1

    .end local v17    # "userId":I
    .local v13, "userId":I
    :try_start_153
    invoke-interface {v0, v12, v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 1678
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1679
    const/4 v8, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v17, "ActivityStarter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_165
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_165} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_165} :catch_1b9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_153 .. :try_end_165} :catch_1b0

    move-object/from16 v10, v29

    :try_start_167
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_178} :catch_1a8
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_178} :catch_1a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_167 .. :try_end_178} :catch_198

    const/4 v9, 0x5

    move-object v12, v10

    const/4 v10, 0x0

    move-object/from16 v32, v12

    move-object/from16 v12, v17

    move/from16 v17, v13

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    move-object/from16 v13, v21

    move-object/from16 v33, v14

    move-object/from16 v14, v22

    move-object/from16 v18, v15

    .end local v15    # "activity":Ljava/lang/String;
    .local v18, "activity":Ljava/lang/String;
    move/from16 v15, v17

    :try_start_18b
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_18b .. :try_end_18e} :catch_195
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_192
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18b .. :try_end_18e} :catch_18f

    .line 1681
    return v16

    .line 1688
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v18    # "activity":Ljava/lang/String;
    .end local v20    # "isActivityAllowed":Z
    :catch_18f
    move-exception v0

    goto/16 :goto_207

    .line 1686
    :catch_192
    move-exception v0

    goto/16 :goto_219

    .line 1684
    :catch_195
    move-exception v0

    goto/16 :goto_227

    .line 1688
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_198
    move-exception v0

    move-object/from16 v32, v10

    move/from16 v17, v13

    move-object/from16 v33, v14

    goto :goto_1b7

    .line 1686
    :catch_1a0
    move-exception v0

    move-object/from16 v32, v10

    move/from16 v17, v13

    move-object/from16 v33, v14

    goto :goto_1c0

    .line 1684
    :catch_1a8
    move-exception v0

    move-object/from16 v32, v10

    move/from16 v17, v13

    move-object/from16 v33, v14

    goto :goto_1c9

    .line 1688
    :catch_1b0
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_1b7
    goto/16 :goto_207

    .line 1686
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_1b9
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_1c0
    goto/16 :goto_219

    .line 1684
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_1c2
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_1c9
    goto/16 :goto_227

    .line 1688
    :catch_1cb
    move-exception v0

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    goto :goto_207

    .line 1686
    :catch_1d1
    move-exception v0

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    goto :goto_219

    .line 1684
    :catch_1d7
    move-exception v0

    move-object/from16 v33, v14

    move-object/from16 v32, v29

    goto :goto_227

    .line 1688
    :catch_1dd
    move-exception v0

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    goto :goto_207

    .line 1686
    :catch_1e3
    move-exception v0

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    goto :goto_219

    .line 1684
    :catch_1e9
    move-exception v0

    move-object/from16 v32, v29

    move-object/from16 v33, v30

    goto :goto_227

    .line 1659
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .local v15, "userId":I
    :cond_1ef
    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move/from16 v17, v15

    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    goto :goto_227

    .line 1688
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .restart local v15    # "userId":I
    :catch_1f9
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    :goto_205
    move/from16 v17, v15

    .line 1689
    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    :goto_207
    move-object/from16 v15, v27

    move-object/from16 v14, v28

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    goto :goto_227

    .line 1686
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .restart local v15    # "userId":I
    :catch_20f
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    :goto_217
    move/from16 v17, v15

    .line 1687
    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    :goto_219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_227

    .line 1684
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .restart local v15    # "userId":I
    :catch_21d
    move-exception v0

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    :goto_225
    move/from16 v17, v15

    .line 1690
    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    :goto_227
    move/from16 v2, v17

    move-object/from16 v36, v32

    goto/16 :goto_3b4

    .line 1691
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "userId":I
    .restart local v11    # "cmpPackageName":Ljava/lang/String;
    .restart local v15    # "userId":I
    :cond_22d
    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move-object/from16 v14, v18

    move-object/from16 v38, v17

    move/from16 v17, v15

    move-object/from16 v15, v38

    .end local v11    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v7    # "cmpPackageName":Ljava/lang/String;
    .restart local v17    # "userId":I
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33f

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 1692
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    move-object v15, v14

    move-object/from16 v34, v32

    goto/16 :goto_342

    .line 1707
    :cond_251
    const-string v0, "com.vlingo.midas"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_268

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    goto :goto_268

    :cond_262
    move/from16 v2, v17

    move-object/from16 v36, v32

    goto/16 :goto_3b4

    .line 1709
    :cond_268
    :goto_268
    nop

    .line 1710
    :try_start_269
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0
    :try_end_271
    .catch Landroid/os/RemoteException; {:try_start_269 .. :try_end_271} :catch_336
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_271} :catch_32f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_269 .. :try_end_271} :catch_31e

    .line 1711
    .local v0, "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v0, :cond_31b

    move/from16 v13, v17

    const/4 v12, 0x1

    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :try_start_276
    invoke-interface {v0, v12, v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v9
    :try_end_27a
    .catch Landroid/os/RemoteException; {:try_start_276 .. :try_end_27a} :catch_315
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_27a} :catch_30f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_276 .. :try_end_27a} :catch_306

    if-eqz v9, :cond_2a1

    :try_start_27c
    invoke-interface {v0, v12, v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v9
    :try_end_280
    .catch Landroid/os/RemoteException; {:try_start_27c .. :try_end_280} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_27c .. :try_end_280} :catch_293
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27c .. :try_end_280} :catch_289

    if-nez v9, :cond_283

    goto :goto_2a1

    :cond_283
    move/from16 v17, v13

    move-object/from16 v34, v32

    goto/16 :goto_339

    .line 1726
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :catch_289
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v35, v14

    move-object v2, v15

    move-object/from16 v34, v32

    goto/16 :goto_324

    .line 1724
    :catch_293
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v34, v32

    goto/16 :goto_332

    .line 1722
    :catch_29a
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v34, v32

    goto/16 :goto_339

    .line 1712
    .restart local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_2a1
    :goto_2a1
    :try_start_2a1
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2a5
    .catch Landroid/os/RemoteException; {:try_start_2a1 .. :try_end_2a5} :catch_315
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a5} :catch_30f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a1 .. :try_end_2a5} :catch_306

    .line 1713
    .restart local v8    # "activity":Ljava/lang/String;
    if-nez v8, :cond_2ae

    .line 1714
    :try_start_2a7
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9
    :try_end_2ab
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2ab} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2ab} :catch_293
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a7 .. :try_end_2ab} :catch_289

    move-object v8, v9

    move-object v11, v8

    goto :goto_2af

    .line 1713
    :cond_2ae
    move-object v11, v8

    .line 1716
    .end local v8    # "activity":Ljava/lang/String;
    .local v11, "activity":Ljava/lang/String;
    :goto_2af
    :try_start_2af
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1717
    const/4 v8, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "ActivityStarter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2be
    .catch Landroid/os/RemoteException; {:try_start_2af .. :try_end_2be} :catch_315
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2be} :catch_30f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2af .. :try_end_2be} :catch_306

    move-object/from16 v10, v32

    :try_start_2c0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""
    :try_end_2d1
    .catch Landroid/os/RemoteException; {:try_start_2c0 .. :try_end_2d1} :catch_300
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2d1} :catch_2fa
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c0 .. :try_end_2d1} :catch_2f1

    const/4 v9, 0x5

    move-object v12, v10

    const/4 v10, 0x0

    move-object/from16 v19, v11

    .end local v11    # "activity":Ljava/lang/String;
    .local v19, "activity":Ljava/lang/String;
    move/from16 v11, v17

    move-object/from16 v34, v12

    move-object/from16 v12, v18

    move/from16 v17, v13

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    move-object/from16 v13, v21

    move-object/from16 v35, v14

    move-object/from16 v14, v22

    move-object v2, v15

    move/from16 v15, v17

    :try_start_2e7
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_2e7 .. :try_end_2ea} :catch_2ef
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ea} :catch_2ed
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e7 .. :try_end_2ea} :catch_2eb

    .line 1720
    return v16

    .line 1726
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .end local v19    # "activity":Ljava/lang/String;
    :catch_2eb
    move-exception v0

    goto :goto_324

    .line 1724
    :catch_2ed
    move-exception v0

    goto :goto_332

    .line 1722
    :catch_2ef
    move-exception v0

    goto :goto_339

    .line 1726
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_2f1
    move-exception v0

    move-object/from16 v34, v10

    move/from16 v17, v13

    move-object/from16 v35, v14

    move-object v2, v15

    goto :goto_30e

    .line 1724
    :catch_2fa
    move-exception v0

    move-object/from16 v34, v10

    move/from16 v17, v13

    goto :goto_314

    .line 1722
    :catch_300
    move-exception v0

    move-object/from16 v34, v10

    move/from16 v17, v13

    goto :goto_31a

    .line 1726
    :catch_306
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v35, v14

    move-object v2, v15

    move-object/from16 v34, v32

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_30e
    goto :goto_324

    .line 1724
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_30f
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v34, v32

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_314
    goto :goto_332

    .line 1722
    .end local v17    # "userId":I
    .restart local v13    # "userId":I
    :catch_315
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v34, v32

    .end local v13    # "userId":I
    .restart local v17    # "userId":I
    :goto_31a
    goto :goto_339

    .line 1711
    .restart local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_31b
    move-object/from16 v34, v32

    goto :goto_339

    .line 1726
    .end local v0    # "rp":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :catch_31e
    move-exception v0

    move-object/from16 v35, v14

    move-object v2, v15

    move-object/from16 v34, v32

    .line 1727
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    :goto_324
    move-object/from16 v15, v35

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v17

    move-object/from16 v36, v34

    goto/16 :goto_3b4

    .line 1724
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_32f
    move-exception v0

    move-object/from16 v34, v32

    .line 1725
    .local v0, "e":Ljava/lang/Exception;
    :goto_332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_339

    .line 1722
    :catch_336
    move-exception v0

    move-object/from16 v34, v32

    .line 1728
    :goto_339
    move/from16 v2, v17

    move-object/from16 v36, v34

    goto/16 :goto_3b4

    .line 1691
    :cond_33f
    move-object v15, v14

    move-object/from16 v34, v32

    .line 1694
    :goto_342
    :try_start_342
    const-string/jumbo v0, "kioskmode"

    .line 1695
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1694
    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0
    :try_end_34d
    .catch Landroid/os/RemoteException; {:try_start_342 .. :try_end_34d} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_34d} :catch_3a2

    .line 1696
    .local v0, "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    if-eqz v0, :cond_39d

    move/from16 v2, v17

    const/4 v14, 0x1

    .end local v17    # "userId":I
    .local v2, "userId":I
    :try_start_352
    invoke-interface {v0, v14, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_391

    .line 1697
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1698
    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_368
    .catch Landroid/os/RemoteException; {:try_start_352 .. :try_end_368} :catch_399
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_368} :catch_394

    move-object/from16 v10, v34

    :try_start_36a
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " failed. Task manager is not allowed."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""
    :try_end_37b
    .catch Landroid/os/RemoteException; {:try_start_36a .. :try_end_37b} :catch_38d
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_37b} :catch_388

    move-object/from16 v36, v10

    const/4 v10, 0x0

    move-object v3, v15

    move v15, v2

    :try_start_380
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_383
    .catch Landroid/os/RemoteException; {:try_start_380 .. :try_end_383} :catch_386
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_383} :catch_384

    .line 1700
    return v16

    .line 1704
    .end local v0    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    :catch_384
    move-exception v0

    goto :goto_3a8

    .line 1702
    :catch_386
    move-exception v0

    goto :goto_3b3

    .line 1704
    :catch_388
    move-exception v0

    move-object/from16 v36, v10

    move-object v3, v15

    goto :goto_3a8

    .line 1702
    :catch_38d
    move-exception v0

    move-object/from16 v36, v10

    goto :goto_3b3

    .line 1696
    .restart local v0    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    :cond_391
    move-object/from16 v36, v34

    goto :goto_3b3

    .line 1704
    .end local v0    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    :catch_394
    move-exception v0

    move-object v3, v15

    move-object/from16 v36, v34

    goto :goto_3a8

    .line 1702
    :catch_399
    move-exception v0

    move-object/from16 v36, v34

    goto :goto_3b3

    .line 1696
    .end local v2    # "userId":I
    .restart local v0    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    .restart local v17    # "userId":I
    :cond_39d
    move/from16 v2, v17

    move-object/from16 v36, v34

    .end local v17    # "userId":I
    .restart local v2    # "userId":I
    goto :goto_3b3

    .line 1704
    .end local v0    # "km":Lcom/samsung/android/knox/kiosk/IKioskMode;
    .end local v2    # "userId":I
    .restart local v17    # "userId":I
    :catch_3a2
    move-exception v0

    move-object v3, v15

    move/from16 v2, v17

    move-object/from16 v36, v34

    .line 1705
    .end local v17    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "userId":I
    :goto_3a8
    const-string v8, "Is edm running?"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3b3

    .line 1702
    .end local v2    # "userId":I
    .restart local v17    # "userId":I
    :catch_3ae
    move-exception v0

    move/from16 v2, v17

    move-object/from16 v36, v34

    .line 1706
    .end local v17    # "userId":I
    .restart local v2    # "userId":I
    :goto_3b3
    nop

    .line 1731
    :goto_3b4
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4dd

    .line 1733
    :try_start_3ba
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getPasswordPolicy()Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    move-result-object v0

    .line 1734
    .local v0, "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getSecurityPolicy()Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    move-result-object v3

    .line 1735
    .local v3, "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    if-eqz v0, :cond_3d0

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;->isChangeRequestedAsUser(I)I

    move-result v8

    if-lez v8, :cond_3d0

    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityStarter;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_3d8

    :cond_3d0
    if-eqz v3, :cond_49e

    .line 1736
    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_498

    .line 1737
    :cond_3d8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8
    :try_end_3dc
    .catch Landroid/os/RemoteException; {:try_start_3ba .. :try_end_3dc} :catch_4ac
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_3dc} :catch_4a4

    const/4 v15, 0x1

    :try_start_3dd
    invoke-interface {v8, v15}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v8

    move-object v14, v8

    .line 1738
    .local v14, "list":Ljava/util/List;
    if-eqz v14, :cond_486

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_486

    .line 1739
    const/4 v8, 0x0

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    .line 1740
    .local v13, "topActivity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1741
    .local v8, "isActivityAllowed":Z
    const/4 v9, 0x0

    .line 1742
    .local v9, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 1744
    .local v12, "activity":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    array-length v11, v10

    move/from16 v17, v9

    const/4 v9, 0x0

    .end local v9    # "isTopActivityException":Z
    .local v17, "isTopActivityException":Z
    :goto_405
    if-ge v9, v11, :cond_42c

    aget-object v18, v10, v9
    :try_end_409
    .catch Landroid/os/RemoteException; {:try_start_3dd .. :try_end_409} :catch_493
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_409} :catch_48e

    move-object/from16 v19, v18

    .line 1745
    .local v19, "exception":Ljava/lang/String;
    if-eqz v13, :cond_418

    move-object/from16 v15, v19

    .end local v19    # "exception":Ljava/lang/String;
    .local v15, "exception":Ljava/lang/String;
    :try_start_40f
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_41a

    .line 1746
    const/16 v17, 0x1

    goto :goto_41a

    .line 1745
    .end local v15    # "exception":Ljava/lang/String;
    .restart local v19    # "exception":Ljava/lang/String;
    :cond_418
    move-object/from16 v15, v19

    .line 1748
    .end local v19    # "exception":Ljava/lang/String;
    .restart local v15    # "exception":Ljava/lang/String;
    :cond_41a
    :goto_41a
    if-eqz v12, :cond_428

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_428

    .line 1749
    const/4 v8, 0x1

    .line 1750
    move/from16 v18, v17

    move/from16 v17, v8

    goto :goto_430

    .line 1744
    .end local v15    # "exception":Ljava/lang/String;
    :cond_428
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_405

    :cond_42c
    move/from16 v18, v17

    move/from16 v17, v8

    .line 1753
    .end local v8    # "isActivityAllowed":Z
    .local v17, "isActivityAllowed":Z
    .local v18, "isTopActivityException":Z
    :goto_430
    if-eqz v18, :cond_47a

    if-nez v17, :cond_47a

    .line 1754
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1755
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v15, "ActivityStarter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_442
    .catch Landroid/os/RemoteException; {:try_start_40f .. :try_end_442} :catch_4ac
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_442} :catch_4a4

    move-object/from16 v9, v36

    :try_start_444
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed. Blocked due to password change enforcement."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""
    :try_end_455
    .catch Landroid/os/RemoteException; {:try_start_444 .. :try_end_455} :catch_476
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_455} :catch_472

    const/4 v8, 0x5

    move-object v10, v9

    const/4 v9, 0x5

    move-object/from16 v37, v10

    const/4 v10, 0x0

    move-object/from16 v19, v12

    .end local v12    # "activity":Ljava/lang/String;
    .local v19, "activity":Ljava/lang/String;
    move-object v12, v15

    move-object/from16 v20, v13

    .end local v13    # "topActivity":Ljava/lang/String;
    .local v20, "topActivity":Ljava/lang/String;
    move-object/from16 v13, v22

    move-object/from16 v21, v14

    .end local v14    # "list":Ljava/util/List;
    .local v21, "list":Ljava/util/List;
    move-object/from16 v14, v23

    move-object/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .local v22, "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    move v15, v2

    :try_start_46a
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_46d
    .catch Landroid/os/RemoteException; {:try_start_46a .. :try_end_46d} :catch_470
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_46d} :catch_46e

    .line 1757
    return v16

    .line 1763
    .end local v0    # "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .end local v17    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v19    # "activity":Ljava/lang/String;
    .end local v20    # "topActivity":Ljava/lang/String;
    .end local v21    # "list":Ljava/util/List;
    .end local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    :catch_46e
    move-exception v0

    goto :goto_4a8

    .line 1761
    :catch_470
    move-exception v0

    goto :goto_4b0

    .line 1763
    :catch_472
    move-exception v0

    move-object/from16 v37, v9

    goto :goto_4a7

    .line 1761
    :catch_476
    move-exception v0

    move-object/from16 v37, v9

    goto :goto_4af

    .line 1753
    .restart local v0    # "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .restart local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v12    # "activity":Ljava/lang/String;
    .restart local v13    # "topActivity":Ljava/lang/String;
    .restart local v14    # "list":Ljava/util/List;
    .restart local v17    # "isActivityAllowed":Z
    .restart local v18    # "isTopActivityException":Z
    :cond_47a
    move-object/from16 v22, v3

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v37, v36

    const/4 v3, 0x1

    .end local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .end local v12    # "activity":Ljava/lang/String;
    .end local v13    # "topActivity":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/List;
    .restart local v19    # "activity":Ljava/lang/String;
    .restart local v20    # "topActivity":Ljava/lang/String;
    .restart local v21    # "list":Ljava/util/List;
    .restart local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    goto :goto_4b0

    .line 1738
    .end local v17    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v19    # "activity":Ljava/lang/String;
    .end local v20    # "topActivity":Ljava/lang/String;
    .end local v21    # "list":Ljava/util/List;
    .end local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v14    # "list":Ljava/util/List;
    :cond_486
    move-object/from16 v22, v3

    move-object/from16 v21, v14

    move v3, v15

    move-object/from16 v37, v36

    .end local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .end local v14    # "list":Ljava/util/List;
    .restart local v21    # "list":Ljava/util/List;
    .restart local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    goto :goto_4b0

    .line 1763
    .end local v0    # "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .end local v21    # "list":Ljava/util/List;
    .end local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    :catch_48e
    move-exception v0

    move v3, v15

    move-object/from16 v37, v36

    goto :goto_4a8

    .line 1761
    :catch_493
    move-exception v0

    move v3, v15

    move-object/from16 v37, v36

    goto :goto_4b0

    .line 1736
    .restart local v0    # "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .restart local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    :cond_498
    move-object/from16 v22, v3

    move-object/from16 v37, v36

    const/4 v3, 0x1

    .end local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    goto :goto_4b0

    .line 1735
    .end local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    :cond_49e
    move-object/from16 v22, v3

    move-object/from16 v37, v36

    const/4 v3, 0x1

    .end local v3    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .restart local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    goto :goto_4b0

    .line 1763
    .end local v0    # "pwdPolicy":Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .end local v22    # "secPolicy":Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    :catch_4a4
    move-exception v0

    move-object/from16 v37, v36

    :goto_4a7
    const/4 v3, 0x1

    .line 1764
    .local v0, "e":Ljava/lang/Exception;
    :goto_4a8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b1

    .line 1761
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4ac
    move-exception v0

    move-object/from16 v37, v36

    :goto_4af
    const/4 v3, 0x1

    .line 1765
    :goto_4b0
    nop

    .line 1769
    :goto_4b1
    :try_start_4b1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    move-result-object v0

    .line 1770
    .local v0, "appPolicy":Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    if-eqz v0, :cond_4d7

    invoke-virtual {v0, v7, v3, v2}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_4d7

    .line 1771
    const-string v3, "ActivityStarter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4d6
    .catch Ljava/lang/Exception; {:try_start_4b1 .. :try_end_4d6} :catch_4d8

    .line 1773
    return v16

    .line 1777
    .end local v0    # "appPolicy":Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    :cond_4d7
    goto :goto_4e7

    .line 1775
    :catch_4d8
    move-exception v0

    .line 1776
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e7

    .line 1731
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4dd
    move-object/from16 v37, v36

    goto :goto_4e7

    .line 1653
    .end local v2    # "userId":I
    .end local v7    # "cmpPackageName":Ljava/lang/String;
    .local v15, "userId":I
    :cond_4e0
    move-object/from16 v37, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    move v2, v15

    .line 1783
    .end local v15    # "userId":I
    .restart local v2    # "userId":I
    :goto_4e7
    if-eqz v4, :cond_50e

    .line 1784
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v3, p3

    if-ne v3, v0, :cond_510

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1785
    invoke-virtual {v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_50a

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1786
    invoke-virtual {v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_506

    goto :goto_510

    :cond_506
    move-object/from16 v7, p2

    goto/16 :goto_5a3

    .line 1785
    :cond_50a
    move-object/from16 v7, p2

    goto/16 :goto_5a3

    .line 1783
    :cond_50e
    move/from16 v3, p3

    .line 1787
    :cond_510
    :goto_510
    move-object/from16 v7, p2

    if-eqz v7, :cond_5a3

    .line 1789
    iget-object v15, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1790
    .local v15, "pkgName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2, v15}, Lcom/android/server/wm/RootWindowContainer;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    .line 1793
    .local v17, "ar":Lcom/android/server/wm/ActivityRecord;
    if-nez v17, :cond_5a2

    .line 1795
    :try_start_51e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    move-result-object v0

    .line 1796
    .local v0, "appPolicy":Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    if-eqz v0, :cond_573

    invoke-virtual {v0, v15, v2}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_573

    .line 1797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " which is at prevent start black list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v33

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1800
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v37

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_51e .. :try_end_56d} :catch_59c

    move-object v1, v15

    .end local v15    # "pkgName":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    move v15, v2

    :try_start_56f
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1803
    return v16

    .line 1796
    .end local v1    # "pkgName":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_573
    move-object v1, v15

    move-object/from16 v14, v37

    .line 1805
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    move v15, v2

    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_56f .. :try_end_599} :catch_59a

    .line 1810
    .end local v0    # "appPolicy":Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    goto :goto_5a3

    .line 1808
    :catch_59a
    move-exception v0

    goto :goto_59e

    .end local v1    # "pkgName":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :catch_59c
    move-exception v0

    move-object v1, v15

    .line 1809
    .end local v15    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "pkgName":Ljava/lang/String;
    :goto_59e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a3

    .line 1793
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pkgName":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_5a2
    move-object v1, v15

    .line 1815
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v17    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_5a3
    :goto_5a3
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1817
    const/4 v1, 0x0

    return v1
.end method

.method private complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 13
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3066
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3067
    invoke-virtual {v0}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3068
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPairWindowingMode(I)V

    .line 3071
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3072
    .local v0, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_26

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    move v3, v2

    goto :goto_27

    :cond_26
    move v3, v1

    .line 3074
    .local v3, "resetTask":Z
    :goto_27
    if-eqz v3, :cond_31

    .line 3075
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3078
    :cond_31
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_46

    .line 3089
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    .line 3090
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3091
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_140

    .line 3092
    :cond_46
    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    const/4 v7, 0x0

    if-nez v6, :cond_f0

    .line 3093
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_f0

    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 3094
    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto/16 :goto_f0

    .line 3132
    :cond_5d
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v5

    if-nez v4, :cond_8e

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_8e

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_8e

    .line 3137
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3138
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3139
    .local v1, "act":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_8a

    .line 3140
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3141
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 3142
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3143
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3144
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v7, v4, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3145
    .end local v2    # "task":Lcom/android/server/wm/Task;
    goto :goto_8c

    .line 3146
    :cond_8a
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3148
    .end local v1    # "act":Lcom/android/server/wm/ActivityRecord;
    :goto_8c
    goto/16 :goto_140

    :cond_8e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 3149
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_a0

    goto/16 :goto_140

    .line 3152
    :cond_a0
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_ab

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_d1

    :cond_ab
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3154
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_d1

    .line 3160
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 3161
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3163
    :cond_cc
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_140

    .line 3164
    :cond_d1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 3167
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_140

    .line 3168
    :cond_dc
    if-nez p2, :cond_140

    .line 3169
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_140

    .line 3171
    :cond_e1
    if-nez v3, :cond_e6

    .line 3176
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_140

    .line 3177
    :cond_e6
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v1, :cond_140

    .line 3183
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_140

    .line 3098
    :cond_f0
    :goto_f0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v4, v5}, Lcom/android/server/wm/Task;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3104
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_105

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_105

    .line 3108
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 3111
    :cond_105
    if-eqz v4, :cond_11a

    .line 3112
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 3115
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3117
    :cond_116
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_13f

    .line 3122
    :cond_11a
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3123
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_13f

    .line 3126
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3127
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3128
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_13c

    move v1, v2

    :cond_13c
    invoke-virtual {v5, p1, v6, v1}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 3132
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_13f
    :goto_13f
    nop

    .line 3185
    :cond_140
    :goto_140
    return-void
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2767
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 2768
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    :goto_b
    nop

    .line 2769
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1e

    .line 2771
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-nez v1, :cond_a8

    .line 2773
    :cond_1e
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 2775
    .local v1, "windowingMode":I
    :goto_26
    const/4 v2, 0x0

    .line 2776
    .local v2, "inheritSourceRecord":Z
    if-eqz p2, :cond_32

    iget-boolean v3, p2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v3, :cond_32

    .line 2778
    const/4 v2, 0x1

    .line 2779
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 2782
    :cond_32
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_49

    if-nez v2, :cond_49

    .line 2787
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2788
    const/4 v1, 0x4

    goto :goto_49

    .line 2789
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2790
    const/4 v1, 0x3

    .line 2794
    :cond_49
    :goto_49
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v3, :cond_53

    .line 2795
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2797
    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2800
    if-eqz v2, :cond_6b

    .line 2801
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2802
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2803
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    goto :goto_a8

    .line 2804
    :cond_6b
    if-eqz p2, :cond_a8

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-boolean v3, p2, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_a8

    if-eqz p3, :cond_8b

    .line 2806
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 2807
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_a8

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v3

    if-nez v3, :cond_a8

    :cond_8b
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_a8

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_a8

    .line 2810
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2811
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2816
    .end local v1    # "windowingMode":I
    .end local v2    # "inheritSourceRecord":Z
    :cond_a8
    :goto_a8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move-object v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 2820
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d5

    .line 2822
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_d0

    .line 2823
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2825
    :cond_d0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2828
    :cond_d5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 2829
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_e8

    .line 2830
    :cond_e2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_e8
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2831
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2832
    return-void
.end method

.method private computeLaunchingTaskFlags()V
    .registers 11

    .line 3418
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_f3

    .line 3420
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f3

    goto :goto_24

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3422
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_f3

    .line 3423
    :goto_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3424
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3425
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d5

    .line 3433
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 3434
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 3439
    if-nez v5, :cond_4d

    goto :goto_a0

    .line 3440
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3435
    :cond_78
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3436
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3448
    :cond_a0
    :goto_a0
    if-nez v5, :cond_c5

    .line 3449
    const v6, 0x18082000

    .line 3451
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 3452
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3453
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3454
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3455
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3460
    .end local v6    # "flagsOfInterest":I
    goto :goto_d0

    :cond_c5
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_ce

    .line 3461
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_d0

    .line 3464
    :cond_ce
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3467
    :goto_d0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 3468
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_111

    .line 3426
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_d5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3469
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_f3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3475
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_111

    :cond_104
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_111

    .line 3476
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_10f

    goto :goto_111

    .line 3483
    :cond_10f
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3487
    :cond_111
    :goto_111
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_154

    .line 3488
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_13f

    .line 3491
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_154

    if-nez v0, :cond_154

    .line 3492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_154

    .line 3496
    :cond_13f
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_149

    .line 3500
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_154

    .line 3501
    :cond_149
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 3504
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3507
    :cond_154
    :goto_154
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 2172
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    .line 2173
    move v0, p2

    goto :goto_b

    .line 2174
    :cond_6
    if-ltz p0, :cond_a

    move v0, p0

    goto :goto_b

    :cond_a
    move v0, p1

    .line 2172
    :goto_b
    return v0
.end method

.method private computeSourceStack()V
    .registers 5

    .line 3510
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3511
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 3512
    return-void

    .line 3514
    :cond_8
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_15

    .line 3515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 3516
    return-void

    .line 3523
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_58

    .line 3524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity called from finishing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3527
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 3533
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3534
    .local v0, "sourceTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    goto :goto_56

    :cond_55
    move-object v2, v1

    :goto_56
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 3536
    .end local v0    # "sourceTask":Lcom/android/server/wm/Task;
    :cond_58
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3537
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 3538
    return-void
.end method

.method private computeTargetTask()Lcom/android/server/wm/Task;
    .registers 5

    .line 2743
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    .line 2746
    return-object v1

    .line 2747
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_20

    .line 2748
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2749
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_25

    .line 2750
    return-object v0

    .line 2752
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2754
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2755
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3a

    .line 2756
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 2759
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2762
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 32
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "verificationBundle"    # Landroid/os/Bundle;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 2067
    move-object/from16 v9, p1

    if-eqz v9, :cond_2c

    iget-boolean v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_2c

    .line 2069
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 2070
    .local v11, "packageManager":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v15, p3

    move/from16 v14, p7

    invoke-virtual {v11, v15, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v12

    .line 2071
    .local v12, "isRequesterInstantApp":Z
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move-object/from16 v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    goto :goto_32

    .line 2067
    .end local v11    # "packageManager":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "isRequesterInstantApp":Z
    :cond_2c
    move-object/from16 v10, p0

    move-object/from16 v15, p3

    move/from16 v14, p7

    .line 2075
    :goto_32
    nop

    .line 2077
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 2078
    const/4 v0, 0x0

    if-nez v9, :cond_3c

    move-object v1, v0

    goto :goto_3e

    :cond_3c
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 2084
    :goto_3e
    if-nez v9, :cond_43

    move-object/from16 v20, v0

    goto :goto_47

    :cond_43
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v2

    .line 2085
    :goto_47
    if-nez v9, :cond_4c

    move-object/from16 v21, v0

    goto :goto_50

    :cond_4c
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_50
    if-eqz v9, :cond_58

    iget-boolean v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    :goto_59
    move/from16 v22, v2

    .line 2087
    if-nez v9, :cond_5e

    goto :goto_60

    :cond_5e
    iget-object v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_60
    move-object/from16 v23, v0

    .line 2075
    move-object/from16 v12, p2

    move-object v14, v1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    invoke-static/range {v12 .. v23}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3823
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 3824
    return-void

    .line 3827
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3829
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    .line 3827
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 3832
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 3834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 3835
    return-void
.end method

.method private deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 9
    .param p1, "topStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3022
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3023
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_48

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3024
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_48

    .line 3026
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_38

    const/4 v3, 0x2

    .line 3028
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 3032
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v3, v4, :cond_48

    :cond_46
    move v3, v2

    goto :goto_49

    :cond_48
    move v3, v1

    .line 3033
    .local v3, "dontStart":Z
    :goto_49
    if-nez v3, :cond_4c

    .line 3034
    return v1

    .line 3038
    :cond_4c
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3039
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_58

    .line 3040
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3042
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3043
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_63

    .line 3046
    return v2

    .line 3049
    :cond_63
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3053
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2, v4, v5, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 3056
    const/4 v1, 0x3

    return v1
.end method

.method private executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .registers 77
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 1061
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aeb

    .line 1064
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 1065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 1066
    const/4 v13, 0x0

    iput-object v13, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1068
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1069
    .local v12, "caller":Landroid/app/IApplicationThread;
    iget-object v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1070
    .local v11, "intent":Landroid/content/Intent;
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1071
    .local v10, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1072
    .local v9, "resolvedType":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1073
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1074
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1075
    .local v6, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 1076
    .local v5, "resultTo":Landroid/os/IBinder;
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 1077
    .local v4, "resultWho":Ljava/lang/String;
    iget v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 1078
    .local v3, "requestCode":I
    iget v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1079
    .local v0, "callingPid":I
    iget v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1080
    .local v1, "callingUid":I
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 1081
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 1082
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v18, v13

    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .local v18, "callingFeatureId":Ljava/lang/String;
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 1083
    .local v13, "realCallingPid":I
    move-object/from16 v33, v10

    .end local v10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 1084
    .local v10, "realCallingUid":I
    move/from16 v34, v10

    .end local v10    # "realCallingUid":I
    .local v34, "realCallingUid":I
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 1085
    .local v10, "startFlags":I
    move/from16 v35, v10

    .end local v10    # "startFlags":I
    .local v35, "startFlags":I
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 1086
    .local v10, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v36, v9

    .end local v9    # "resolvedType":Ljava/lang/String;
    .local v36, "resolvedType":Ljava/lang/String;
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 1088
    .local v9, "inTask":Lcom/android/server/wm/Task;
    const/16 v19, 0x0

    .line 1091
    .local v19, "err":I
    if-eqz v10, :cond_52

    invoke-virtual {v10}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_54

    :cond_52
    const/16 v16, 0x0

    .line 1093
    .local v16, "verificationBundle":Landroid/os/Bundle;
    :goto_54
    const/16 v20, 0x0

    .line 1094
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v37, v9

    .end local v9    # "inTask":Lcom/android/server/wm/Task;
    .local v37, "inTask":Lcom/android/server/wm/Task;
    const-string v9, "ActivityTaskManager"

    if-eqz v12, :cond_ab

    .line 1095
    move/from16 v21, v1

    .end local v1    # "callingUid":I
    .local v21, "callingUid":I
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1096
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_76

    .line 1097
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 1098
    move/from16 v20, v0

    .end local v0    # "callingPid":I
    .local v20, "callingPid":I
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v22, v2

    move/from16 v38, v20

    move v2, v0

    .end local v21    # "callingUid":I
    .local v0, "callingUid":I
    goto :goto_b5

    .line 1100
    .end local v20    # "callingPid":I
    .local v0, "callingPid":I
    .restart local v21    # "callingUid":I
    :cond_76
    move-object/from16 v20, v1

    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    .end local v2    # "callingPackage":Ljava/lang/String;
    .local v22, "callingPackage":Ljava/lang/String;
    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v19, -0x5e

    move/from16 v38, v0

    move-object/from16 v1, v20

    move/from16 v2, v21

    goto :goto_b5

    .line 1094
    .end local v21    # "callingUid":I
    .end local v22    # "callingPackage":Ljava/lang/String;
    .local v1, "callingUid":I
    .restart local v2    # "callingPackage":Ljava/lang/String;
    :cond_ab
    move/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "callingUid":I
    .end local v2    # "callingPackage":Ljava/lang/String;
    .restart local v21    # "callingUid":I
    .restart local v22    # "callingPackage":Ljava/lang/String;
    move/from16 v38, v0

    move-object/from16 v1, v20

    move/from16 v2, v21

    .line 1106
    .end local v0    # "callingPid":I
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "callingUid":I
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callingUid":I
    .local v38, "callingPid":I
    :goto_b5
    move-object/from16 v39, v12

    .end local v12    # "caller":Landroid/app/IApplicationThread;
    .local v39, "caller":Landroid/app/IApplicationThread;
    if-eqz v8, :cond_c6

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_c6

    .line 1107
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    move/from16 v58, v0

    .line 1108
    .local v58, "userId":I
    const-string v12, " {"

    const-string/jumbo v14, "} from uid "

    const-string v15, "START u"

    move-object/from16 v20, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v19, :cond_15b

    .line 1109
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_12e

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v58

    .end local v58    # "userId":I
    .local v7, "userId":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v23, v1

    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v1, " {act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " typ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flg=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v3

    move/from16 v21, v7

    const/4 v7, 0x1

    goto :goto_162

    .line 1116
    .end local v7    # "userId":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v58    # "userId":I
    :cond_12e
    move-object/from16 v23, v1

    move/from16 v7, v58

    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v58    # "userId":I
    .restart local v7    # "userId":I
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    move/from16 v24, v3

    move/from16 v21, v7

    const/4 v1, 0x0

    const/4 v7, 0x1

    .end local v3    # "requestCode":I
    .end local v7    # "userId":I
    .local v21, "userId":I
    .local v24, "requestCode":I
    invoke-virtual {v11, v7, v7, v7, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_162

    .line 1108
    .end local v21    # "userId":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "requestCode":I
    .restart local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v3    # "requestCode":I
    .restart local v58    # "userId":I
    :cond_15b
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v21, v58

    const/4 v7, 0x1

    .line 1121
    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "requestCode":I
    .end local v58    # "userId":I
    .restart local v21    # "userId":I
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "requestCode":I
    :goto_162
    const/4 v1, 0x0

    .line 1122
    .local v1, "cmp":Landroid/content/ComponentName;
    const-string v3, ""

    .line 1123
    .local v3, "className":Ljava/lang/String;
    if-nez v19, :cond_1bd

    .line 1126
    :try_start_167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1127
    .local v0, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v1, v25

    .line 1128
    const-string v7, ":android:show_fragment"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1129
    if-nez v3, :cond_182

    if-eqz v1, :cond_182

    .line 1130
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_181} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_167 .. :try_end_181} :catch_186

    move-object v3, v7

    .line 1136
    .end local v0    # "mEdmIntent":Landroid/content/Intent;
    :cond_182
    move-object v0, v1

    move-object/from16 v26, v3

    goto :goto_195

    .line 1134
    :catch_186
    move-exception v0

    .line 1135
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "unknown"

    move-object v0, v1

    move-object/from16 v26, v3

    goto :goto_195

    .line 1132
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_18e
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "unknown"

    .line 1136
    .end local v3    # "className":Ljava/lang/String;
    .local v0, "className":Ljava/lang/String;
    move-object/from16 v26, v0

    move-object v0, v1

    .line 1137
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .local v0, "cmp":Landroid/content/ComponentName;
    .local v26, "className":Ljava/lang/String;
    :goto_195
    move-object/from16 v7, v23

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v7, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v1, p0

    move v3, v2

    .end local v2    # "callingUid":I
    .local v3, "callingUid":I
    move-object v2, v11

    move/from16 v23, v24

    move-object/from16 v24, v14

    move v14, v3

    .end local v3    # "callingUid":I
    .end local v24    # "requestCode":I
    .local v14, "callingUid":I
    .local v23, "requestCode":I
    move-object v3, v8

    move-object/from16 v27, v4

    .end local v4    # "resultWho":Ljava/lang/String;
    .local v27, "resultWho":Ljava/lang/String;
    move v4, v13

    move-object/from16 v28, v15

    move-object v15, v5

    .end local v5    # "resultTo":Landroid/os/IBinder;
    .local v15, "resultTo":Landroid/os/IBinder;
    move-object v5, v10

    move-object/from16 v58, v6

    .end local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v58, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    move-object v6, v0

    move-object/from16 v60, v7

    move-object/from16 v54, v12

    move-object/from16 v40, v20

    move/from16 v59, v21

    const/4 v12, 0x1

    .end local v7    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "userId":I
    .local v40, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v59, "userId":I
    .local v60, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v61, v0

    goto :goto_1d5

    .line 1123
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v14    # "callingUid":I
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v26    # "className":Ljava/lang/String;
    .end local v27    # "resultWho":Ljava/lang/String;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v58    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v59    # "userId":I
    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v1    # "cmp":Landroid/content/ComponentName;
    .restart local v2    # "callingUid":I
    .local v3, "className":Ljava/lang/String;
    .restart local v4    # "resultWho":Ljava/lang/String;
    .restart local v5    # "resultTo":Landroid/os/IBinder;
    .restart local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "userId":I
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "requestCode":I
    :cond_1bd
    move-object/from16 v27, v4

    move-object/from16 v58, v6

    move-object/from16 v54, v12

    move-object/from16 v28, v15

    move-object/from16 v40, v20

    move/from16 v59, v21

    move-object/from16 v60, v23

    move/from16 v23, v24

    move-object v15, v5

    move v12, v7

    move-object/from16 v24, v14

    move v14, v2

    .end local v2    # "callingUid":I
    .end local v4    # "resultWho":Ljava/lang/String;
    .end local v5    # "resultTo":Landroid/os/IBinder;
    .end local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "userId":I
    .end local v24    # "requestCode":I
    .restart local v14    # "callingUid":I
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    .local v23, "requestCode":I
    .restart local v27    # "resultWho":Ljava/lang/String;
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v58    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v59    # "userId":I
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v61, v1

    move-object v7, v3

    .line 1141
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "className":Ljava/lang/String;
    .local v7, "className":Ljava/lang/String;
    .local v61, "cmp":Landroid/content/ComponentName;
    :goto_1d5
    const/4 v0, 0x0

    .line 1142
    .local v0, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1143
    .local v1, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_210

    .line 1144
    move-object/from16 v6, p0

    move-object/from16 v5, v28

    iget-object v2, v6, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/RootWindowContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1145
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v2, :cond_203

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will send result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_203
    if-eqz v0, :cond_20e

    .line 1149
    if-ltz v23, :cond_20e

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_20e

    .line 1150
    move-object v1, v0

    move-object v4, v0

    goto :goto_215

    .line 1155
    :cond_20e
    move-object v4, v0

    goto :goto_215

    .line 1143
    :cond_210
    move-object/from16 v6, p0

    move-object/from16 v5, v28

    move-object v4, v0

    .line 1155
    .end local v0    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v4, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_215
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v62

    .line 1156
    .local v62, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v62, v0

    if-eqz v0, :cond_260

    if-eqz v4, :cond_260

    .line 1159
    if-ltz v23, :cond_229

    .line 1160
    invoke-static {v10}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1161
    const/16 v0, -0x5d

    return v0

    .line 1163
    :cond_229
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1164
    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_236

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v1

    if-nez v1, :cond_236

    .line 1165
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_237

    .line 1167
    :cond_236
    move-object v1, v0

    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_237
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1168
    .end local v27    # "resultWho":Ljava/lang/String;
    .local v0, "resultWho":Ljava/lang/String;
    iget v3, v4, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1169
    .end local v23    # "requestCode":I
    .local v3, "requestCode":I
    const/4 v2, 0x0

    iput-object v2, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1170
    if-eqz v1, :cond_243

    .line 1171
    invoke-virtual {v1, v4, v0, v3}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1173
    :cond_243
    iget v2, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v2, v14, :cond_255

    .line 1184
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1185
    .end local v22    # "callingPackage":Ljava/lang/String;
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v12, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v65, v0

    move-object/from16 v63, v1

    move/from16 v64, v3

    move-object/from16 v66, v12

    move-object v12, v2

    .end local v18    # "callingFeatureId":Ljava/lang/String;
    .local v12, "callingFeatureId":Ljava/lang/String;
    goto :goto_26a

    .line 1173
    .end local v2    # "callingPackage":Ljava/lang/String;
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v18    # "callingFeatureId":Ljava/lang/String;
    .restart local v22    # "callingPackage":Ljava/lang/String;
    :cond_255
    move-object/from16 v65, v0

    move-object/from16 v63, v1

    move/from16 v64, v3

    move-object/from16 v66, v18

    move-object/from16 v12, v22

    goto :goto_26a

    .line 1189
    .end local v0    # "resultWho":Ljava/lang/String;
    .end local v3    # "requestCode":I
    .restart local v23    # "requestCode":I
    .restart local v27    # "resultWho":Ljava/lang/String;
    :cond_260
    move-object/from16 v63, v1

    move-object/from16 v66, v18

    move-object/from16 v12, v22

    move/from16 v64, v23

    move-object/from16 v65, v27

    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "callingFeatureId":Ljava/lang/String;
    .end local v22    # "callingPackage":Ljava/lang/String;
    .end local v23    # "requestCode":I
    .end local v27    # "resultWho":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v63, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v64, "requestCode":I
    .local v65, "resultWho":Ljava/lang/String;
    .local v66, "callingFeatureId":Ljava/lang/String;
    :goto_26a
    if-nez v19, :cond_274

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_274

    .line 1192
    const/16 v19, -0x5b

    .line 1195
    :cond_274
    if-nez v19, :cond_27a

    if-nez v8, :cond_27a

    .line 1198
    const/16 v19, -0x5c

    .line 1201
    :cond_27a
    const-string v1, "Failure checking voice capabilities"

    if-nez v19, :cond_2db

    if-eqz v4, :cond_2db

    .line 1202
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2d8

    .line 1207
    const/high16 v0, 0x10000000

    and-int v0, v62, v0

    if-nez v0, :cond_2d5

    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v2, :cond_2d5

    .line 1210
    :try_start_29a
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1212
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_2a9
    .catch Landroid/os/RemoteException; {:try_start_29a .. :try_end_2a9} :catch_2cc

    .line 1211
    move-object/from16 v3, v36

    .end local v36    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_2ab
    invoke-interface {v0, v2, v11, v3}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c9

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c5
    .catch Landroid/os/RemoteException; {:try_start_2ab .. :try_end_2c5} :catch_2ca

    .line 1215
    const/16 v0, -0x61

    move/from16 v19, v0

    .line 1220
    :cond_2c9
    goto :goto_2dd

    .line 1217
    :catch_2ca
    move-exception v0

    goto :goto_2cf

    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v36    # "resolvedType":Ljava/lang/String;
    :catch_2cc
    move-exception v0

    move-object/from16 v3, v36

    .line 1218
    .end local v36    # "resolvedType":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_2cf
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    const/16 v19, -0x61

    goto :goto_2dd

    .line 1207
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v36    # "resolvedType":Ljava/lang/String;
    :cond_2d5
    move-object/from16 v3, v36

    .end local v36    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    goto :goto_2dd

    .line 1202
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v36    # "resolvedType":Ljava/lang/String;
    :cond_2d8
    move-object/from16 v3, v36

    .end local v36    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    goto :goto_2dd

    .line 1201
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local v36    # "resolvedType":Ljava/lang/String;
    :cond_2db
    move-object/from16 v3, v36

    .line 1224
    .end local v36    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_2dd
    if-nez v19, :cond_315

    if-eqz v58, :cond_315

    .line 1228
    :try_start_2e1
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2, v11, v3}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_309

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_305
    .catch Landroid/os/RemoteException; {:try_start_2e1 .. :try_end_305} :catch_30c

    .line 1232
    const/16 v0, -0x61

    move/from16 v19, v0

    .line 1237
    :cond_309
    move/from16 v36, v19

    goto :goto_317

    .line 1234
    :catch_30c
    move-exception v0

    .line 1235
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    const/16 v19, -0x61

    move/from16 v36, v19

    goto :goto_317

    .line 1240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_315
    move/from16 v36, v19

    .end local v19    # "err":I
    .local v36, "err":I
    :goto_317
    if-nez v63, :cond_31c

    .line 1241
    const/16 v32, 0x0

    goto :goto_322

    :cond_31c
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v32, v0

    .line 1243
    .local v32, "resultStack":Lcom/android/server/wm/ActivityStack;
    :goto_322
    const-string v2, " failed"

    const-string v1, "Start activity "

    if-eqz v36, :cond_364

    .line 1244
    if-eqz v63, :cond_33b

    .line 1245
    const/16 v26, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v63

    move-object/from16 v27, v65

    move/from16 v28, v64

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1248
    :cond_33b
    invoke-static {v10}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1251
    const/16 v23, 0x5

    const/16 v24, 0x5

    const/16 v25, 0x0

    .line 1252
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1251
    const-string v27, "ActivityStarter"

    const-string v29, ""

    move/from16 v30, v59

    invoke-static/range {v23 .. v30}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1257
    return v36

    .line 1260
    :cond_364
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v18, v1

    move-object/from16 v56, v15

    move-object/from16 v67, v24

    move-object/from16 v15, p1

    .end local v15    # "resultTo":Landroid/os/IBinder;
    .local v56, "resultTo":Landroid/os/IBinder;
    iget-boolean v1, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    if-eqz v37, :cond_375

    const/16 v29, 0x1

    goto :goto_377

    :cond_375
    const/16 v29, 0x0

    :goto_377
    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move-object/from16 v22, v65

    move/from16 v23, v64

    move/from16 v24, v38

    move/from16 v25, v14

    move-object/from16 v26, v12

    move-object/from16 v27, v66

    move/from16 v28, v1

    move-object/from16 v30, v60

    move-object/from16 v31, v63

    invoke-virtual/range {v19 .. v32}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v19, v0

    .line 1263
    .local v19, "abort":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v68, v18

    move-object/from16 v18, v1

    move-object v1, v11

    move-object/from16 v69, v2

    move v2, v14

    move-object/from16 v20, v3

    .end local v3    # "resolvedType":Ljava/lang/String;
    .local v20, "resolvedType":Ljava/lang/String;
    move/from16 v3, v38

    move-object/from16 v70, v4

    .end local v4    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v70, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v20

    move-object/from16 v71, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    or-int v0, v19, v0

    .line 1265
    .end local v19    # "abort":Z
    .local v0, "abort":Z
    iget-object v2, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, v11, v14, v12}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    or-int v18, v0, v2

    .line 1268
    .end local v0    # "abort":Z
    .local v18, "abort":Z
    const/16 v19, 0x0

    .line 1269
    .local v19, "restrictedBgActivity":Z
    if-nez v18, :cond_422

    .line 1271
    const-wide/16 v4, 0x20

    :try_start_3cc
    const-string/jumbo v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1273
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z
    :try_end_3d6
    .catchall {:try_start_3cc .. :try_end_3d6} :catchall_40a

    move-object/from16 v1, p0

    move v2, v14

    move/from16 v21, v3

    move/from16 v3, v38

    move-wide/from16 v22, v4

    move-object v4, v12

    move/from16 v5, v34

    move/from16 v26, v14

    move-object v14, v6

    .end local v14    # "callingUid":I
    .local v26, "callingUid":I
    move v6, v13

    move-object/from16 v72, v7

    .end local v7    # "className":Ljava/lang/String;
    .local v72, "className":Ljava/lang/String;
    move-object/from16 v7, v60

    move/from16 v57, v13

    move-object v13, v8

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v57, "realCallingPid":I
    move-object v8, v0

    move-object/from16 v73, v9

    move-object/from16 v27, v20

    move-object/from16 v28, v37

    .end local v20    # "resolvedType":Ljava/lang/String;
    .end local v37    # "inTask":Lcom/android/server/wm/Task;
    .local v27, "resolvedType":Ljava/lang/String;
    .local v28, "inTask":Lcom/android/server/wm/Task;
    move/from16 v9, v21

    move-object/from16 v29, v33

    move-object/from16 v33, v12

    move-object v12, v10

    .end local v10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v12, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v29, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingPackage":Ljava/lang/String;
    move-object v10, v11

    :try_start_3fc
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_400
    .catchall {:try_start_3fc .. :try_end_400} :catchall_408

    move/from16 v19, v0

    .line 1278
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    move/from16 v37, v19

    goto :goto_437

    .line 1278
    :catchall_408
    move-exception v0

    goto :goto_41e

    .end local v26    # "callingUid":I
    .end local v27    # "resolvedType":Ljava/lang/String;
    .end local v28    # "inTask":Lcom/android/server/wm/Task;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v57    # "realCallingPid":I
    .end local v72    # "className":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v13, "realCallingPid":I
    .restart local v14    # "callingUid":I
    .restart local v20    # "resolvedType":Ljava/lang/String;
    .local v33, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v37    # "inTask":Lcom/android/server/wm/Task;
    :catchall_40a
    move-exception v0

    move-wide/from16 v22, v4

    move-object/from16 v72, v7

    move/from16 v57, v13

    move/from16 v26, v14

    move-object/from16 v27, v20

    move-object/from16 v29, v33

    move-object/from16 v28, v37

    move-object v14, v6

    move-object v13, v8

    move-object/from16 v33, v12

    move-object v12, v10

    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "callingUid":I
    .end local v20    # "resolvedType":Ljava/lang/String;
    .end local v37    # "inTask":Lcom/android/server/wm/Task;
    .local v12, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingUid":I
    .restart local v27    # "resolvedType":Ljava/lang/String;
    .restart local v28    # "inTask":Lcom/android/server/wm/Task;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingPackage":Ljava/lang/String;
    .restart local v57    # "realCallingPid":I
    .restart local v72    # "className":Ljava/lang/String;
    :goto_41e
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    throw v0

    .line 1269
    .end local v26    # "callingUid":I
    .end local v27    # "resolvedType":Ljava/lang/String;
    .end local v28    # "inTask":Lcom/android/server/wm/Task;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v57    # "realCallingPid":I
    .end local v72    # "className":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v12, "callingPackage":Ljava/lang/String;
    .local v13, "realCallingPid":I
    .restart local v14    # "callingUid":I
    .restart local v20    # "resolvedType":Ljava/lang/String;
    .local v33, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v37    # "inTask":Lcom/android/server/wm/Task;
    :cond_422
    move-object/from16 v72, v7

    move-object/from16 v73, v9

    move/from16 v57, v13

    move/from16 v26, v14

    move-object/from16 v27, v20

    move-object/from16 v29, v33

    move-object/from16 v28, v37

    move-object v14, v6

    move-object v13, v8

    move-object/from16 v33, v12

    move-object v12, v10

    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "callingUid":I
    .end local v20    # "resolvedType":Ljava/lang/String;
    .end local v37    # "inTask":Lcom/android/server/wm/Task;
    .local v12, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingUid":I
    .restart local v27    # "resolvedType":Ljava/lang/String;
    .restart local v28    # "inTask":Lcom/android/server/wm/Task;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingPackage":Ljava/lang/String;
    .restart local v57    # "realCallingPid":I
    .restart local v72    # "className":Ljava/lang/String;
    move/from16 v37, v19

    .line 1283
    .end local v19    # "restrictedBgActivity":Z
    .local v37, "restrictedBgActivity":Z
    :goto_437
    if-eqz v12, :cond_442

    .line 1284
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v10, v60

    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v12, v11, v13, v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_445

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_442
    move-object/from16 v10, v60

    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 1285
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_445
    iget-boolean v1, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v1, :cond_45a

    .line 1286
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1287
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 1288
    move-object/from16 v9, v33

    .end local v33    # "callingPackage":Ljava/lang/String;
    .local v9, "callingPackage":Ljava/lang/String;
    invoke-virtual {v1, v9, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_45c

    .line 1285
    .end local v9    # "callingPackage":Ljava/lang/String;
    .restart local v33    # "callingPackage":Ljava/lang/String;
    :cond_45a
    move-object/from16 v9, v33

    .line 1291
    .end local v33    # "callingPackage":Ljava/lang/String;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    :goto_45c
    if-nez v0, :cond_465

    .line 1292
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_467

    .line 1291
    :cond_465
    move-object/from16 v30, v0

    .line 1295
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v30, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_467
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_48a

    .line 1299
    :try_start_46d
    invoke-virtual {v11}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1300
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_47d
    .catch Landroid/os/RemoteException; {:try_start_46d .. :try_end_47d} :catch_484

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v18, v18, v1

    .line 1304
    .end local v0    # "watchIntent":Landroid/content/Intent;
    move/from16 v33, v18

    goto :goto_48c

    .line 1302
    :catch_484
    move-exception v0

    .line 1303
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48a
    move/from16 v33, v18

    .end local v18    # "abort":Z
    .local v33, "abort":Z
    :goto_48c
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v18, v0

    move/from16 v19, v59

    move/from16 v20, v57

    move/from16 v21, v34

    move/from16 v22, v35

    move-object/from16 v23, v9

    move-object/from16 v24, v66

    move-object/from16 v25, v70

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    .line 1316
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object v1, v11

    move-object/from16 v2, v40

    move-object v3, v13

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v6, v38

    move/from16 v7, v26

    move-object/from16 v8, v30

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_4de

    .line 1320
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1321
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1322
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1323
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1324
    .end local v27    # "resolvedType":Ljava/lang/String;
    .local v0, "resolvedType":Ljava/lang/String;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1325
    .end local v28    # "inTask":Lcom/android/server/wm/Task;
    .local v1, "inTask":Lcom/android/server/wm/Task;
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1326
    .end local v38    # "callingPid":I
    .local v2, "callingPid":I
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1327
    .end local v26    # "callingUid":I
    .local v3, "callingUid":I
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1331
    .end local v30    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v4, "checkedOptions":Landroid/app/ActivityOptions;
    const/4 v5, 0x0

    move-object/from16 v38, v1

    move v1, v2

    move v2, v3

    move-object v6, v4

    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v5, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_4ed

    .line 1316
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    .end local v4    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingUid":I
    .restart local v27    # "resolvedType":Ljava/lang/String;
    .restart local v28    # "inTask":Lcom/android/server/wm/Task;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v38    # "callingPid":I
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4de
    move-object v8, v13

    move/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move/from16 v1, v38

    move-object/from16 v7, v40

    move-object/from16 v38, v28

    .line 1334
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "callingUid":I
    .end local v27    # "resolvedType":Ljava/lang/String;
    .end local v28    # "inTask":Lcom/android/server/wm/Task;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v30    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .local v1, "callingPid":I
    .local v2, "callingUid":I
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v6, "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v38, "inTask":Lcom/android/server/wm/Task;
    :goto_4ed
    if-eqz v33, :cond_533

    .line 1335
    if-eqz v63, :cond_502

    .line 1336
    const/16 v26, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v63

    move-object/from16 v27, v65

    move/from16 v28, v64

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1341
    :cond_502
    invoke-static {v6}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1344
    const/16 v23, 0x5

    const/16 v24, 0x5

    const/16 v25, 0x1

    .line 1345
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v68

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v72

    .end local v72    # "className":Ljava/lang/String;
    .local v13, "className":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1344
    const-string v27, "ActivityStarter"

    const-string v29, ""

    move/from16 v30, v59

    invoke-static/range {v23 .. v30}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1350
    const/16 v3, 0x66

    return v3

    .line 1356
    .end local v13    # "className":Ljava/lang/String;
    .restart local v72    # "className":Ljava/lang/String;
    :cond_533
    move-object/from16 v4, v68

    move-object/from16 v13, v72

    .end local v72    # "className":Ljava/lang/String;
    .restart local v13    # "className":Ljava/lang/String;
    const-string v3, "android.intent.extra.RESULT_NEEDED"

    const/high16 v18, 0x8000000

    move/from16 v19, v1

    .end local v1    # "callingPid":I
    .local v19, "callingPid":I
    const-string v1, "android.intent.extra.INTENT"

    move-object/from16 v20, v5

    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v20, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    const-string v5, "android.intent.extra.PACKAGE_NAME"

    const/high16 v21, 0x800000

    if-eqz v8, :cond_64f

    .line 1357
    move-object/from16 v22, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v22, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    move-object/from16 v29, v12

    .end local v12    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v29, "options":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v68, v4

    move/from16 v4, v59

    .end local v59    # "userId":I
    .local v4, "userId":I
    invoke-virtual {v7, v12, v4}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_642

    .line 1359
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v41, 0x2

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v72, v13

    const/4 v12, 0x1

    .end local v13    # "className":Ljava/lang/String;
    .restart local v72    # "className":Ljava/lang/String;
    new-array v13, v12, [Landroid/content/Intent;

    const/16 v23, 0x0

    aput-object v11, v13, v23

    move-object/from16 v60, v10

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-array v10, v12, [Ljava/lang/String;

    aput-object v0, v10, v23

    const/high16 v51, 0x50000000

    const/16 v52, 0x0

    move-object/from16 v40, v7

    move-object/from16 v42, v9

    move-object/from16 v43, v66

    move/from16 v44, v2

    move/from16 v45, v4

    move-object/from16 v49, v13

    move-object/from16 v50, v10

    invoke-virtual/range {v40 .. v52}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v7

    .line 1365
    .local v7, "target":Landroid/content/IIntentSender;
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v10, "newIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v12

    .line 1368
    .local v12, "flags":I
    or-int v12, v12, v21

    .line 1379
    const/high16 v13, 0x10080000

    and-int/2addr v13, v12

    if-eqz v13, :cond_5a0

    .line 1380
    or-int v12, v12, v18

    .line 1382
    :cond_5a0
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1384
    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v7}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v10, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1386
    if-eqz v63, :cond_5b6

    .line 1387
    const/4 v13, 0x1

    invoke-virtual {v10, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1389
    :cond_5b6
    move-object v11, v10

    .line 1393
    const/4 v13, 0x0

    .line 1395
    .end local v20    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v13, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    const/4 v0, 0x0

    .line 1396
    move/from16 v2, v34

    .line 1397
    move/from16 v19, v57

    .line 1399
    move-object/from16 v30, v7

    .end local v7    # "target":Landroid/content/IIntentSender;
    .local v30, "target":Landroid/content/IIntentSender;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v27, 0x0

    move-object/from16 v31, v8

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v31, "aInfo":Landroid/content/pm/ActivityInfo;
    iget v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1400
    move-object/from16 v40, v10

    move/from16 v10, v34

    .end local v34    # "realCallingUid":I
    .local v10, "realCallingUid":I
    .local v40, "newIntent":Landroid/content/Intent;
    invoke-static {v2, v10, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v28

    .line 1399
    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v0

    move/from16 v26, v4

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1402
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v23, v12

    move-object/from16 v20, v13

    move/from16 v13, v35

    const/4 v12, 0x0

    .end local v12    # "flags":I
    .end local v35    # "startFlags":I
    .local v13, "startFlags":I
    .restart local v20    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v23, "flags":I
    invoke-virtual {v8, v11, v7, v13, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1405
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v12, :cond_635

    .line 1406
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1407
    invoke-virtual {v12}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1408
    .local v12, "focusedStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v24, v0

    .end local v0    # "resolvedType":Ljava/lang/String;
    .local v24, "resolvedType":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    move-object/from16 v7, v71

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v11, v8, v8, v8, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v67

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " on display "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    if-nez v12, :cond_624

    const/4 v7, 0x0

    goto :goto_628

    .line 1411
    :cond_624
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v7

    :goto_628
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1408
    move-object/from16 v7, v73

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63d

    .line 1405
    .end local v12    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_635
    move-object/from16 v24, v0

    move-object/from16 v22, v7

    move-object/from16 v25, v8

    move-object/from16 v7, v73

    .line 1417
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v23    # "flags":I
    .end local v30    # "target":Landroid/content/IIntentSender;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_63d
    move-object/from16 v0, v24

    move-object/from16 v8, v25

    goto :goto_665

    .line 1357
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v72    # "className":Ljava/lang/String;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v13, "className":Ljava/lang/String;
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    :cond_642
    move-object/from16 v31, v8

    move-object/from16 v60, v10

    move-object/from16 v72, v13

    move/from16 v10, v34

    move/from16 v13, v35

    move-object/from16 v7, v73

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .local v10, "realCallingUid":I
    .local v13, "startFlags":I
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v72    # "className":Ljava/lang/String;
    goto :goto_663

    .line 1356
    .end local v4    # "userId":I
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v29    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v72    # "className":Ljava/lang/String;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v12, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v13, "className":Ljava/lang/String;
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    .restart local v59    # "userId":I
    :cond_64f
    move-object/from16 v68, v4

    move-object/from16 v22, v7

    move-object/from16 v31, v8

    move-object/from16 v60, v10

    move-object/from16 v29, v12

    move-object/from16 v72, v13

    move/from16 v10, v34

    move/from16 v13, v35

    move/from16 v4, v59

    move-object/from16 v7, v73

    .line 1417
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .end local v59    # "userId":I
    .restart local v4    # "userId":I
    .local v10, "realCallingUid":I
    .local v13, "startFlags":I
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v29    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v72    # "className":Ljava/lang/String;
    :goto_663
    move-object/from16 v8, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_665
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v12, :cond_8a8

    .line 1418
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v15, 0x100000

    and-int/2addr v12, v15

    if-eqz v12, :cond_674

    const/4 v12, 0x1

    goto :goto_675

    :cond_674
    const/4 v12, 0x0

    .line 1419
    .local v12, "isLaunchedFromRecents":Z
    :goto_675
    const/4 v15, 0x1

    .line 1420
    .local v15, "appLockForExceptionList":Z
    move/from16 v23, v15

    .end local v15    # "appLockForExceptionList":Z
    .local v23, "appLockForExceptionList":Z
    iget-object v15, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v15, :cond_698

    if-eqz v8, :cond_698

    iget-object v15, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    move/from16 v35, v13

    .end local v13    # "startFlags":I
    .restart local v35    # "startFlags":I
    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1421
    invoke-virtual {v15, v13}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_69a

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69a

    .line 1422
    const/4 v15, 0x0

    .end local v23    # "appLockForExceptionList":Z
    .restart local v15    # "appLockForExceptionList":Z
    goto :goto_69c

    .line 1420
    .end local v15    # "appLockForExceptionList":Z
    .end local v35    # "startFlags":I
    .restart local v13    # "startFlags":I
    .restart local v23    # "appLockForExceptionList":Z
    :cond_698
    move/from16 v35, v13

    .line 1424
    .end local v13    # "startFlags":I
    .restart local v35    # "startFlags":I
    :cond_69a
    move/from16 v15, v23

    .end local v23    # "appLockForExceptionList":Z
    .restart local v15    # "appLockForExceptionList":Z
    :goto_69c
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    .line 1425
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_896

    move/from16 v34, v10

    .end local v10    # "realCallingUid":I
    .restart local v34    # "realCallingUid":I
    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_882

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_882

    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v23, v3

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1426
    invoke-virtual {v10, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86e

    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86e

    if-nez v12, :cond_86e

    .line 1428
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_6d8

    if-eqz v13, :cond_6e4

    .line 1429
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_6e4

    .line 1430
    :cond_6d8
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_85a

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v3

    if-nez v3, :cond_85a

    :cond_6e4
    if-eqz v15, :cond_85a

    .line 1432
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10, v11, v6, v9}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v3

    .line 1445
    .local v3, "skipLockWhenStart":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v12

    .end local v12    # "isLaunchedFromRecents":Z
    .local v30, "isLaunchedFromRecents":Z
    const-string v12, "AppLocked pkgName:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " className:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " skipLockWhenStart:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    if-nez v3, :cond_845

    .line 1447
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v10, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1450
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v41, 0x2

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v31, v3

    move-object/from16 v54, v13

    const/4 v3, 0x1

    .end local v3    # "skipLockWhenStart":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .local v31, "skipLockWhenStart":Z
    .local v54, "userInfo":Landroid/content/pm/UserInfo;
    new-array v13, v3, [Landroid/content/Intent;

    const/16 v53, 0x0

    aput-object v11, v13, v53

    move/from16 v59, v15

    .end local v15    # "appLockForExceptionList":Z
    .local v59, "appLockForExceptionList":Z
    new-array v15, v3, [Ljava/lang/String;

    aput-object v0, v15, v53

    const/high16 v51, 0x50000000

    const/16 v52, 0x0

    move-object/from16 v40, v12

    move-object/from16 v42, v9

    move-object/from16 v43, v66

    move/from16 v44, v2

    move/from16 v45, v4

    move-object/from16 v49, v13

    move-object/from16 v50, v15

    invoke-virtual/range {v40 .. v52}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 1456
    .local v3, "target":Landroid/content/IIntentSender;
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v12

    .line 1457
    .local v12, "flags":I
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v13

    .line 1458
    .local v13, "action":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v15, "newIntent":Landroid/content/Intent;
    or-int v21, v12, v21

    move-object/from16 v24, v0

    .end local v0    # "resolvedType":Ljava/lang/String;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    or-int v0, v21, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1462
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1464
    if-eqz v63, :cond_78b

    .line 1465
    move-object/from16 v0, v23

    const/4 v1, 0x1

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_78c

    .line 1464
    :cond_78b
    const/4 v1, 0x1

    .line 1467
    :goto_78c
    const-string v0, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1468
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    const-string v0, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1470
    nop

    .line 1471
    move-object/from16 v5, v70

    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_7a5

    move/from16 v0, v53

    goto :goto_7a9

    :cond_7a5
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    .line 1470
    :goto_7a9
    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1474
    if-nez v6, :cond_7b2

    const/4 v0, 0x0

    goto :goto_7b6

    :cond_7b2
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_7b6
    const-string v1, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1476
    const/4 v0, 0x0

    .line 1477
    .end local v24    # "resolvedType":Ljava/lang/String;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    move/from16 v2, v34

    .line 1478
    move/from16 v19, v57

    .line 1481
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_7e5

    .line 1482
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v18, v3

    .end local v3    # "target":Landroid/content/IIntentSender;
    .local v18, "target":Landroid/content/IIntentSender;
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1483
    move-object/from16 v46, v10

    move/from16 v10, v34

    .end local v34    # "realCallingUid":I
    .local v10, "realCallingUid":I
    .local v46, "targetIntent":Landroid/content/Intent;
    invoke-static {v2, v10, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v45

    .line 1482
    move-object/from16 v40, v1

    move-object/from16 v41, v15

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v45}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_803

    .line 1486
    .end local v1    # "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "target":Landroid/content/IIntentSender;
    .end local v46    # "targetIntent":Landroid/content/Intent;
    .restart local v3    # "target":Landroid/content/IIntentSender;
    .local v10, "targetIntent":Landroid/content/Intent;
    .restart local v34    # "realCallingUid":I
    :cond_7e5
    move-object/from16 v18, v3

    move-object/from16 v46, v10

    move/from16 v10, v34

    .end local v3    # "target":Landroid/content/IIntentSender;
    .end local v34    # "realCallingUid":I
    .local v10, "realCallingUid":I
    .restart local v18    # "target":Landroid/content/IIntentSender;
    .restart local v46    # "targetIntent":Landroid/content/Intent;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v27, 0x0

    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1487
    invoke-static {v2, v10, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v28

    .line 1486
    move-object/from16 v23, v1

    move-object/from16 v24, v15

    move-object/from16 v25, v0

    move/from16 v26, v4

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1490
    .restart local v1    # "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_803
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v23, v2

    move-object/from16 v17, v8

    move/from16 v2, v35

    const/4 v8, 0x0

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "startFlags":I
    .local v2, "startFlags":I
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v23, "callingUid":I
    invoke-virtual {v3, v15, v1, v2, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1491
    .local v3, "appLockActivityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_826

    .line 1492
    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .end local v0    # "resolvedType":Ljava/lang/String;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    move-object v11, v15

    .line 1494
    move-object/from16 v22, v1

    .line 1495
    move-object v8, v3

    move-object v1, v11

    move-object/from16 v3, v22

    move-object/from16 v0, v24

    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_8bb

    .line 1497
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_826
    move-object/from16 v24, v0

    .end local v0    # "resolvedType":Ljava/lang/String;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLock can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v11

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    move-object/from16 v0, v24

    goto/16 :goto_8bb

    .line 1446
    .end local v1    # "appLockResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "realCallingUid":I
    .end local v12    # "flags":I
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "target":Landroid/content/IIntentSender;
    .end local v23    # "callingUid":I
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v31    # "skipLockWhenStart":Z
    .end local v46    # "targetIntent":Landroid/content/Intent;
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .local v3, "skipLockWhenStart":Z
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    .local v15, "appLockForExceptionList":Z
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_845
    move-object/from16 v24, v0

    move v0, v2

    move/from16 v31, v3

    move-object/from16 v17, v8

    move-object/from16 v54, v13

    move/from16 v59, v15

    move/from16 v10, v34

    move/from16 v2, v35

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .end local v3    # "skipLockWhenStart":Z
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "appLockForExceptionList":Z
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "realCallingUid":I
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v31    # "skipLockWhenStart":Z
    .restart local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v59    # "appLockForExceptionList":Z
    goto/16 :goto_8b2

    .line 1430
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "realCallingUid":I
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v30    # "isLaunchedFromRecents":Z
    .end local v31    # "skipLockWhenStart":Z
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .local v0, "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "isLaunchedFromRecents":Z
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "appLockForExceptionList":Z
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_85a
    move-object/from16 v24, v0

    move v0, v2

    move-object/from16 v17, v8

    move/from16 v30, v12

    move-object/from16 v54, v13

    move/from16 v59, v15

    move/from16 v10, v34

    move/from16 v2, v35

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "isLaunchedFromRecents":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "appLockForExceptionList":Z
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "realCallingUid":I
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v30    # "isLaunchedFromRecents":Z
    .restart local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v59    # "appLockForExceptionList":Z
    goto :goto_8b2

    .line 1426
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "realCallingUid":I
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v30    # "isLaunchedFromRecents":Z
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .local v0, "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "isLaunchedFromRecents":Z
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "appLockForExceptionList":Z
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_86e
    move-object/from16 v24, v0

    move v0, v2

    move-object/from16 v17, v8

    move/from16 v30, v12

    move-object/from16 v54, v13

    move/from16 v59, v15

    move/from16 v10, v34

    move/from16 v2, v35

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "isLaunchedFromRecents":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "appLockForExceptionList":Z
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "realCallingUid":I
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v30    # "isLaunchedFromRecents":Z
    .restart local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v59    # "appLockForExceptionList":Z
    goto :goto_8b2

    .line 1425
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "realCallingUid":I
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v30    # "isLaunchedFromRecents":Z
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .local v0, "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "isLaunchedFromRecents":Z
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "appLockForExceptionList":Z
    .restart local v34    # "realCallingUid":I
    .restart local v35    # "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_882
    move-object/from16 v24, v0

    move v0, v2

    move-object/from16 v17, v8

    move/from16 v30, v12

    move-object/from16 v54, v13

    move/from16 v59, v15

    move/from16 v10, v34

    move/from16 v2, v35

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "isLaunchedFromRecents":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "appLockForExceptionList":Z
    .end local v34    # "realCallingUid":I
    .end local v35    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "realCallingUid":I
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v30    # "isLaunchedFromRecents":Z
    .restart local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v59    # "appLockForExceptionList":Z
    goto :goto_8b2

    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v30    # "isLaunchedFromRecents":Z
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .local v0, "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "isLaunchedFromRecents":Z
    .restart local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "appLockForExceptionList":Z
    .restart local v35    # "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_896
    move-object/from16 v24, v0

    move v0, v2

    move-object/from16 v17, v8

    move/from16 v30, v12

    move-object/from16 v54, v13

    move/from16 v59, v15

    move/from16 v2, v35

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "isLaunchedFromRecents":Z
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "appLockForExceptionList":Z
    .end local v35    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    .restart local v30    # "isLaunchedFromRecents":Z
    .restart local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v59    # "appLockForExceptionList":Z
    goto :goto_8b2

    .line 1417
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v30    # "isLaunchedFromRecents":Z
    .end local v54    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v59    # "appLockForExceptionList":Z
    .local v0, "resolvedType":Ljava/lang/String;
    .local v2, "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "startFlags":I
    .restart local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_8a8
    move-object/from16 v24, v0

    move v0, v2

    move-object/from16 v17, v8

    move v2, v13

    move-object/from16 v5, v70

    const/16 v53, 0x0

    .line 1508
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "startFlags":I
    .end local v70    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "callingUid":I
    .local v2, "startFlags":I
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "resolvedType":Ljava/lang/String;
    :goto_8b2
    move/from16 v23, v0

    move-object v1, v11

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    move-object/from16 v0, v24

    .end local v11    # "intent":Landroid/content/Intent;
    .end local v17    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .local v0, "resolvedType":Ljava/lang/String;
    .local v1, "intent":Landroid/content/Intent;
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "callingUid":I
    :goto_8bb
    if-eqz v3, :cond_900

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v11, :cond_900

    .line 1509
    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v15, p1

    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move-object/from16 v11, p0

    move-object/from16 v35, v9

    move-object/from16 v34, v29

    move-object/from16 v31, v39

    const/4 v9, 0x1

    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v29    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v39    # "caller":Landroid/app/IApplicationThread;
    .local v31, "caller":Landroid/app/IApplicationThread;
    .local v34, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v35, "callingPackage":Ljava/lang/String;
    move/from16 v59, v57

    move-object/from16 v74, v72

    const/4 v9, 0x0

    .end local v57    # "realCallingPid":I
    .end local v72    # "className":Ljava/lang/String;
    .local v59, "realCallingPid":I
    .local v74, "className":Ljava/lang/String;
    move-object/from16 v14, v35

    move-object/from16 v9, p0

    move-object/from16 v22, v8

    move-object v8, v15

    move-object/from16 v67, v56

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v56    # "resultTo":Landroid/os/IBinder;
    .local v22, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v67, "resultTo":Landroid/os/IBinder;
    move-object/from16 v15, v66

    move-object/from16 v17, v0

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1511
    const/4 v0, 0x0

    .line 1512
    move/from16 v23, v10

    .line 1513
    move/from16 v19, v59

    .line 1517
    const/16 v20, 0x0

    .line 1519
    iget-object v11, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v3, v2, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    move-object v12, v0

    move-object v13, v1

    move-object v14, v11

    move/from16 v15, v19

    move-object/from16 v17, v20

    move/from16 v70, v23

    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_91b

    .line 1508
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v31    # "caller":Landroid/app/IApplicationThread;
    .end local v34    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "callingPackage":Ljava/lang/String;
    .end local v59    # "realCallingPid":I
    .end local v67    # "resultTo":Landroid/os/IBinder;
    .end local v74    # "className":Ljava/lang/String;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    .restart local v29    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v39    # "caller":Landroid/app/IApplicationThread;
    .restart local v56    # "resultTo":Landroid/os/IBinder;
    .restart local v57    # "realCallingPid":I
    .restart local v72    # "className":Ljava/lang/String;
    :cond_900
    move-object/from16 v22, v8

    move-object/from16 v35, v9

    move-object v9, v14

    move-object/from16 v34, v29

    move-object/from16 v31, v39

    move-object/from16 v67, v56

    move/from16 v59, v57

    move-object/from16 v74, v72

    move-object/from16 v8, p1

    .line 1522
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v29    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v39    # "caller":Landroid/app/IApplicationThread;
    .end local v56    # "resultTo":Landroid/os/IBinder;
    .end local v57    # "realCallingPid":I
    .end local v72    # "className":Ljava/lang/String;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "caller":Landroid/app/IApplicationThread;
    .restart local v34    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v35    # "callingPackage":Ljava/lang/String;
    .restart local v59    # "realCallingPid":I
    .restart local v67    # "resultTo":Landroid/os/IBinder;
    .restart local v74    # "className":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v1

    move/from16 v15, v19

    move-object/from16 v17, v20

    move-object/from16 v14, v22

    move/from16 v70, v23

    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v19    # "callingPid":I
    .end local v20    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v23    # "callingUid":I
    .local v12, "resolvedType":Ljava/lang/String;
    .local v13, "intent":Landroid/content/Intent;
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v15, "callingPid":I
    .local v17, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v70, "callingUid":I
    :goto_91b
    new-instance v0, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1524
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    iget-boolean v11, v8, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    if-eqz v58, :cond_92a

    const/16 v54, 0x1

    goto :goto_92c

    :cond_92a
    const/16 v54, 0x0

    :goto_92c
    move-object/from16 v71, v3

    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v71, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v55, v3

    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v41, v60

    move/from16 v42, v15

    move/from16 v43, v70

    move-object/from16 v44, v35

    move-object/from16 v45, v66

    move-object/from16 v46, v13

    move-object/from16 v47, v12

    move-object/from16 v48, v14

    move-object/from16 v50, v63

    move-object/from16 v51, v65

    move/from16 v52, v64

    move/from16 v53, v11

    move-object/from16 v56, v6

    move-object/from16 v57, v5

    invoke-direct/range {v39 .. v57}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    move-object v11, v0

    .line 1527
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v11, v9, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1530
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->hasAliasActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_965

    .line 1531
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 1535
    :cond_965
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v0, :cond_96f

    if-eqz v5, :cond_96f

    .line 1538
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v0, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1542
    :cond_96f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_9ad

    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_9ad

    .line 1544
    :try_start_977
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1545
    .local v0, "copiedIntent":Landroid/content/Intent;
    const-string v1, "LAUNCH_FROM_NOTIFICATION"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_993

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1546
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_997

    .line 1550
    :cond_993
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/wm/ActivityRecord;->setLaunchingRequestFromNotification(Z)V
    :try_end_997
    .catch Ljava/lang/Exception; {:try_start_977 .. :try_end_997} :catch_998

    .line 1554
    .end local v0    # "copiedIntent":Landroid/content/Intent;
    :cond_997
    goto :goto_9ad

    .line 1552
    :catch_998
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while parsing intent but ignorable, was : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9ad
    :goto_9ad
    const/4 v0, 0x0

    .line 1561
    .local v0, "callerPkgName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1562
    .local v1, "callerUserId":I
    if-eqz v60, :cond_9c7

    move-object/from16 v7, v60

    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v7, "callerApp":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_9c9

    .line 1563
    iget-object v3, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1564
    iget v1, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    move/from16 v39, v1

    goto :goto_9cb

    .line 1562
    .end local v7    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_9c7
    move-object/from16 v7, v60

    .line 1567
    .end local v60    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v7    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_9c9
    move/from16 v39, v1

    .end local v1    # "callerUserId":I
    .local v39, "callerUserId":I
    :goto_9cb
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v23

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v40, v12

    .end local v12    # "resolvedType":Ljava/lang/String;
    .local v40, "resolvedType":Ljava/lang/String;
    iget-object v12, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x0

    const-string v27, "activity"

    move-object/from16 v24, v1

    move-object/from16 v25, v0

    move/from16 v26, v39

    move/from16 v29, v4

    invoke-virtual/range {v23 .. v29}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_9f1

    .line 1569
    const/16 v1, -0xc8

    return v1

    .line 1574
    :cond_9f1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result v1

    if-eqz v1, :cond_a06

    if-eqz v14, :cond_a06

    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a06

    .line 1575
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mComponentCallCounter:Lcom/android/server/am/kpm/ComponentCallCounter;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/server/am/kpm/ComponentCallCounter;->countActivity(Ljava/lang/String;)V

    .line 1579
    :cond_a06
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1583
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v58, :cond_a95

    if-eqz v12, :cond_a95

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a29

    .line 1584
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v10, :cond_a23

    goto :goto_a29

    :cond_a23
    move/from16 v18, v2

    move-object/from16 v3, v74

    goto/16 :goto_a99

    .line 1585
    :cond_a29
    :goto_a29
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v23, "Activity start"

    move-object/from16 v18, v1

    move/from16 v19, v15

    move/from16 v20, v70

    move/from16 v21, v59

    move/from16 v22, v10

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a90

    .line 1587
    if-eqz v37, :cond_a45

    invoke-direct {v9, v11}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_a5d

    .line 1588
    :cond_a45
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v3, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v21, v5

    move/from16 v22, v2

    move-object/from16 v23, v12

    move-object/from16 v24, v7

    move-object/from16 v25, v17

    invoke-direct/range {v19 .. v25}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1591
    :cond_a5d
    invoke-static {v6}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1594
    const/16 v23, 0x5

    const/16 v24, 0x5

    const/16 v25, 0x0

    .line 1595
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v68

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v74

    .end local v74    # "className":Ljava/lang/String;
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v2

    move-object/from16 v2, v69

    .end local v2    # "startFlags":I
    .local v18, "startFlags":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1594
    const-string v27, "ActivityStarter"

    const-string v29, ""

    move/from16 v30, v4

    invoke-static/range {v23 .. v30}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1600
    const/16 v1, 0x64

    return v1

    .line 1585
    .end local v3    # "className":Ljava/lang/String;
    .end local v18    # "startFlags":I
    .restart local v2    # "startFlags":I
    .restart local v74    # "className":Ljava/lang/String;
    :cond_a90
    move/from16 v18, v2

    move-object/from16 v3, v74

    .end local v2    # "startFlags":I
    .end local v74    # "className":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v18    # "startFlags":I
    goto :goto_a99

    .line 1583
    .end local v3    # "className":Ljava/lang/String;
    .end local v18    # "startFlags":I
    .restart local v2    # "startFlags":I
    .restart local v74    # "className":Ljava/lang/String;
    :cond_a95
    move/from16 v18, v2

    move-object/from16 v3, v74

    .line 1604
    .end local v2    # "startFlags":I
    .end local v74    # "className":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v18    # "startFlags":I
    :goto_a99
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 1605
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1607
    iget-object v1, v8, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/16 v19, 0x1

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    move-object v2, v11

    move-object/from16 v26, v3

    move-object/from16 v22, v71

    .end local v3    # "className":Ljava/lang/String;
    .end local v71    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v22, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v26, "className":Ljava/lang/String;
    move-object v3, v5

    move/from16 v23, v4

    .end local v4    # "userId":I
    .local v23, "userId":I
    move-object/from16 v4, v58

    move-object/from16 v24, v5

    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v24, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v5, v20

    move-object/from16 v30, v6

    .end local v6    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v30, "checkedOptions":Landroid/app/ActivityOptions;
    move/from16 v6, v18

    move-object/from16 v20, v7

    .end local v7    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v7, v19

    move-object/from16 v8, v30

    move/from16 v19, v21

    move-object/from16 v9, v38

    move-object/from16 v21, v20

    move/from16 v20, v10

    .end local v10    # "realCallingUid":I
    .local v20, "realCallingUid":I
    .local v21, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v10, v37

    move-object/from16 v25, v11

    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v25, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    move-object/from16 v2, p0

    iput v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1611
    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_ae8

    .line 1612
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v4, v3, v19

    .line 1615
    :cond_ae8
    iget v3, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    return v3

    .line 1062
    .end local v0    # "callerPkgName":Ljava/lang/String;
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "callingPid":I
    .end local v16    # "verificationBundle":Landroid/os/Bundle;
    .end local v17    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "startFlags":I
    .end local v20    # "realCallingUid":I
    .end local v21    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "userId":I
    .end local v24    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "className":Ljava/lang/String;
    .end local v30    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v31    # "caller":Landroid/app/IApplicationThread;
    .end local v32    # "resultStack":Lcom/android/server/wm/ActivityStack;
    .end local v33    # "abort":Z
    .end local v34    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v35    # "callingPackage":Ljava/lang/String;
    .end local v36    # "err":I
    .end local v37    # "restrictedBgActivity":Z
    .end local v38    # "inTask":Lcom/android/server/wm/Task;
    .end local v39    # "callerUserId":I
    .end local v40    # "resolvedType":Ljava/lang/String;
    .end local v58    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v59    # "realCallingPid":I
    .end local v61    # "cmp":Landroid/content/ComponentName;
    .end local v62    # "launchFlags":I
    .end local v63    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v64    # "requestCode":I
    .end local v65    # "resultWho":Ljava/lang/String;
    .end local v66    # "callingFeatureId":Ljava/lang/String;
    .end local v67    # "resultTo":Landroid/os/IBinder;
    .end local v70    # "callingUid":I
    :cond_aeb
    move-object v1, v14

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Need to specify a reason."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    .registers 2

    .line 1833
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_e

    .line 1834
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 1836
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    return-object v0
.end method

.method static getExternalResult(I)I
    .registers 2
    .param p0, "result"    # I

    .line 1857
    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 23
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 3883
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v9, v10, v2, v11}, Lcom/android/server/wm/AppPairController;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3884
    .local v1, "target":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_15

    .line 3885
    return-object v1

    .line 3888
    .end local v1    # "target":Lcom/android/server/wm/ActivityStack;
    :cond_15
    nop

    .line 3889
    invoke-static {v11, v9, v10}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_56

    .line 3890
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v2, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3891
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3893
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_54

    .line 3894
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 3895
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    .line 3896
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 3898
    :cond_53
    return-object v1

    .line 3900
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_54
    goto/16 :goto_f9

    :cond_56
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f9

    .line 3901
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f9

    .line 3902
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 3903
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v7

    .line 3904
    .local v7, "bottomTaskId":I
    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z

    move-result v8

    .line 3906
    .local v8, "canMoveTask":Z
    if-eqz v10, :cond_83

    if-nez v8, :cond_83

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 3907
    :cond_83
    const/4 v1, 0x0

    .line 3908
    .local v1, "windowingMode":I
    const/4 v3, 0x0

    .line 3909
    .local v3, "bottomTask":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    if-eq v7, v2, :cond_92

    const/16 v2, -0x2710

    if-eq v7, v2, :cond_92

    .line 3910
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v7, v12, v4, v12}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3913
    :cond_92
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_9b

    .line 3914
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    goto :goto_9c

    :cond_9b
    nop

    :goto_9c
    move-object v13, v4

    .line 3915
    .local v13, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_ba

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 3916
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_b3

    iget v2, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityStarter;->isSavedFrontTask(I)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3918
    :cond_b3
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    move v14, v1

    move-object v15, v3

    goto :goto_cc

    .line 3919
    :cond_ba
    if-eqz v13, :cond_ca

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 3920
    move-object v3, v13

    .line 3921
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    move v14, v1

    move-object v15, v3

    goto :goto_cc

    .line 3924
    :cond_ca
    move v14, v1

    move-object v15, v3

    .end local v1    # "windowingMode":I
    .end local v3    # "bottomTask":Lcom/android/server/wm/Task;
    .local v14, "windowingMode":I
    .local v15, "bottomTask":Lcom/android/server/wm/Task;
    :goto_cc
    if-eqz v15, :cond_f9

    if-eqz v14, :cond_f9

    .line 3925
    if-nez v11, :cond_d9

    .line 3926
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 3927
    .end local p4    # "aOptions":Landroid/app/ActivityOptions;
    .local v1, "aOptions":Landroid/app/ActivityOptions;
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v11, v1

    .line 3929
    .end local v1    # "aOptions":Landroid/app/ActivityOptions;
    .local v11, "aOptions":Landroid/app/ActivityOptions;
    :cond_d9
    invoke-virtual {v11, v14}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 3930
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v9, v11, v10}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v16

    .line 3932
    .local v16, "activityType":I
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v17

    .line 3933
    .local v17, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v17, :cond_f9

    .line 3934
    const/4 v6, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, p3

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3936
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_f9

    .line 3937
    return-object v1

    .line 3946
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "bottomTaskId":I
    .end local v8    # "canMoveTask":Z
    .end local v13    # "focusStack":Lcom/android/server/wm/ActivityStack;
    .end local v14    # "windowingMode":I
    .end local v15    # "bottomTask":Lcom/android/server/wm/Task;
    .end local v16    # "activityType":I
    .end local v17    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_f9
    :goto_f9
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_12b

    .line 3948
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_124

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 3949
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_124

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne v1, v2, :cond_124

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 3950
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_124

    .line 3951
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3954
    :cond_124
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 3957
    :cond_12b
    if-eqz v11, :cond_133

    .line 3958
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_13a

    :cond_133
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_13a

    const/4 v1, 0x1

    move v5, v1

    goto :goto_13b

    :cond_13a
    move v5, v12

    .line 3959
    .local v5, "onTop":Z
    :goto_13b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method private getPasswordPolicy()Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    if-nez v0, :cond_e

    .line 1841
    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 1843
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    return-object v0
.end method

.method private getReusableTask()Lcom/android/server/wm/Task;
    .registers 11

    .line 3546
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    if-eq v0, v2, :cond_1c

    .line 3547
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3548
    .local v0, "launchTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1b

    .line 3549
    return-object v0

    .line 3551
    :cond_1b
    return-object v1

    .line 3559
    .end local v0    # "launchTask":Lcom/android/server/wm/Task;
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2c

    const/high16 v3, 0x8000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_3f

    .line 3561
    :cond_2c
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3564
    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v0

    if-eq v0, v2, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v6

    goto :goto_40

    :cond_3f
    :goto_3f
    move v0, v7

    .line 3570
    .local v0, "putIntoExistingTask":Z
    :goto_40
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_4c

    move v2, v7

    goto :goto_4d

    :cond_4c
    move v2, v6

    :goto_4d
    and-int/2addr v0, v2

    .line 3571
    const/4 v2, 0x0

    .line 3572
    .local v2, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9c

    .line 3573
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v5, v3, :cond_68

    .line 3576
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3577
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    .line 3576
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_9c

    .line 3578
    :cond_68
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_92

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_80

    .line 3581
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-nez v3, :cond_92

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3583
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v3

    if-nez v3, :cond_92

    .line 3587
    :cond_80
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v4, v9, :cond_8d

    move v6, v7

    :cond_8d
    invoke-virtual {v3, v5, v8, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_9c

    .line 3591
    :cond_92
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3592
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3596
    :cond_9c
    :goto_9c
    if-eqz v2, :cond_b5

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3597
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3598
    :cond_ac
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v3, v4, :cond_b5

    .line 3600
    const/4 v2, 0x0

    .line 3603
    :cond_b5
    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_bb
    return-object v1
.end method

.method private getSecurityPolicy()Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .registers 2

    .line 1847
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-nez v0, :cond_e

    .line 1848
    const-class v0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 1850
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    return-object v0
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1625
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1626
    .local v0, "abort":Z
    if-nez v0, :cond_c

    .line 1627
    const/4 v1, 0x0

    return v1

    .line 1629
    :cond_c
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1630
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1631
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1632
    .local v11, "requestCode":I
    if-eqz v9, :cond_1e

    .line 1633
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1638
    :cond_1e
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1639
    return v1
.end method

.method private handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .registers 10
    .param p1, "started"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 2224
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2225
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2227
    .local v1, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_a
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    .line 2228
    if-eqz v1, :cond_29

    .line 2232
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2233
    .local v2, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2234
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2235
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    const/4 v6, 0x0

    .line 2234
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 2239
    .end local v2    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_29
    return-object v1

    .line 2245
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2246
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_3a

    .line 2247
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v5, "startActivity"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2251
    :cond_3a
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2252
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v3

    if-nez v3, :cond_52

    .line 2253
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_52

    .line 2254
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2255
    const/4 v1, 0x0

    .line 2257
    :cond_52
    return-object v1
.end method

.method private isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .registers 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2835
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 2836
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1f

    .line 2837
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2841
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2842
    const/16 v0, -0x5c

    return v0

    .line 2848
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_7c

    .line 2849
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 2852
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const-string v1, "Cannot launch home on display area "

    if-eqz v0, :cond_65

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " displayContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2854
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2853
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 2857
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :goto_79
    const/16 v0, -0x60

    return v0

    .line 2863
    :cond_7c
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v0, :cond_ab

    if-nez p2, :cond_8a

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v0

    if-nez v0, :cond_ab

    :cond_8a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2864
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort background activity starts from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/16 v0, 0x66

    return v0

    .line 2872
    :cond_ab
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v0, v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_b5

    goto :goto_b6

    :cond_b5
    move v1, v4

    :goto_b6
    move v0, v1

    .line 2875
    .local v0, "isNewClearTask":Z
    if-nez p2, :cond_de

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const/16 v1, 0x65

    return v1

    .line 2881
    :cond_de
    return v4
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 3968
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 3964
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

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

.method private isPersona(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1821
    const/4 v0, 0x0

    .line 1823
    .local v0, "ret":Z
    if-eqz p1, :cond_a

    .line 1824
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1825
    const/4 v0, 0x1

    .line 1829
    :cond_a
    return v0
.end method

.method private isSavedFrontTask(I)Z
    .registers 4
    .param p1, "taskId"    # I

    .line 4182
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method private synthetic lambda$startActivityInner$0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2388
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "package_display_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2389
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v2, "task_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2390
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2391
    return-void
.end method

.method private moveTopTaskToRootSplitStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityRecord;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "windowingMode"    # I
    .param p3, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 4192
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 4193
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_ae

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eq v0, v1, :cond_e

    goto/16 :goto_ae

    .line 4196
    :cond_e
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4198
    .local v3, "fullscreenTop":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_1e

    .line 4199
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v1

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 4201
    .local v4, "fullscreenTopIsHomeOrRecent":Z
    :goto_1f
    const/4 v5, 0x4

    if-ne p2, v5, :cond_2c

    .line 4202
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-nez v5, :cond_2c

    if-nez v4, :cond_2c

    move v5, v1

    goto :goto_2d

    :cond_2c
    move v5, v2

    .line 4206
    .local v5, "moveTopTaskToSplitPrimary":Z
    :goto_2d
    const/4 v6, 0x0

    .line 4207
    .local v6, "folded":Z
    const/4 v7, 0x0

    .line 4211
    .local v7, "moveTopTaskToSplitCell":Z
    if-eqz p2, :cond_38

    .line 4212
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->removeFlags(I)V

    .line 4214
    :cond_38
    if-nez v5, :cond_3d

    if-nez v7, :cond_3d

    .line 4215
    return-void

    .line 4218
    :cond_3d
    if-eqz v5, :cond_44

    .line 4219
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .local v1, "candidate":Lcom/android/server/wm/Task;
    goto :goto_51

    .line 4221
    .end local v1    # "candidate":Lcom/android/server/wm/Task;
    :cond_44
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 4222
    .local v1, "rootSplitPrimaryTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4f

    .line 4223
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getTopMostLeafTask(Z)Lcom/android/server/wm/Task;

    move-result-object v8

    goto :goto_50

    :cond_4f
    const/4 v8, 0x0

    :goto_50
    move-object v1, v8

    .line 4225
    .local v1, "candidate":Lcom/android/server/wm/Task;
    :goto_51
    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_ad

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne v1, v8, :cond_5e

    goto :goto_ad

    .line 4229
    :cond_5e
    if-eqz v5, :cond_65

    .line 4230
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    goto :goto_69

    :cond_65
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 4231
    .local v8, "targetRootStack":Lcom/android/server/wm/ActivityStack;
    :goto_69
    if-nez v8, :cond_6c

    .line 4232
    return-void

    .line 4236
    :cond_6c
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->ensureFocusWithLaunchingWindowingMode(I)V

    .line 4238
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    const/16 v10, 0x1b

    .line 4239
    invoke-virtual {v9, v10, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 4242
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 4243
    const v9, 0x7fffffff

    invoke-virtual {v1, v8, v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 4244
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v9, v8, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 4245
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v2, :cond_95

    .line 4246
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 4248
    :cond_95
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string v9, "com.samsung.android.app.appsedge"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 4251
    const-string v2, "1000"

    const-string v9, "From application"

    invoke-static {v2, v9}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    :cond_ac
    return-void

    .line 4227
    .end local v8    # "targetRootStack":Lcom/android/server/wm/ActivityStack;
    :cond_ad
    :goto_ad
    return-void

    .line 4194
    .end local v1    # "candidate":Lcom/android/server/wm/Task;
    .end local v3    # "fullscreenTop":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "fullscreenTopIsHomeOrRecent":Z
    .end local v5    # "moveTopTaskToSplitPrimary":Z
    .end local v6    # "folded":Z
    .end local v7    # "moveTopTaskToSplitCell":Z
    :cond_ae
    :goto_ae
    return-void
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 1875
    return-void
.end method

.method private resolveToHeavyWeightSwitcherIfNeeded()I
    .registers 19

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_186

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v1, :cond_186

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1d

    goto/16 :goto_186

    .line 940
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 942
    return v2

    .line 945
    :cond_32
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 946
    .local v1, "heavy":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_185

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_56

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 947
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto/16 :goto_185

    .line 951
    :cond_56
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 952
    .local v3, "appCallingUid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_b1

    .line 953
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 954
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_71

    .line 955
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_b1

    .line 957
    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") when starting: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 958
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 960
    const/16 v2, -0x5e

    return v2

    .line 964
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_b1
    :goto_b1
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    new-array v14, v4, [Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v7, v14, v2

    new-array v15, v4, [Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    aput-object v7, v15, v2

    const/high16 v16, 0x50000000

    const/16 v17, 0x0

    const-string v7, "android"

    move v9, v3

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v5

    .line 972
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 973
    .local v6, "newIntent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v7, :cond_e9

    .line 975
    const-string/jumbo v7, "has_result"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    :cond_e9
    new-instance v7, Landroid/content/IntentSender;

    invoke-direct {v7, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v8, "intent"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 978
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 979
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "new_app"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    const-class v7, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 983
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 982
    const-string v8, "android"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v6, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 985
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 986
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 987
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 988
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 989
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 990
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v7, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v13, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 992
    invoke-static {v7, v14, v15}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    .line 990
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 994
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 995
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_168

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_168
    iput-object v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 996
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_184

    .line 997
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v7, v8, v9}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1001
    :cond_184
    return v2

    .line 948
    .end local v3    # "appCallingUid":I
    .end local v5    # "target":Landroid/content/IIntentSender;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :cond_185
    :goto_185
    return v2

    .line 937
    .end local v1    # "heavy":Lcom/android/server/wm/WindowProcessController;
    :cond_186
    :goto_186
    return v2
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    .line 3796
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 3797
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_14

    .line 3799
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3801
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 3802
    return-void
.end method

.method private saveFrontTaskId()V
    .registers 9

    .line 4170
    sget-object v0, Lcom/android/server/wm/ActivityStarter;->sTargetWindowingModes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_25

    aget v4, v0, v3

    .line 4171
    .local v4, "windowingMode":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 4173
    .local v5, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 4174
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4170
    .end local v4    # "windowingMode":I
    .end local v5    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4178
    :cond_25
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 9

    .line 3402
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 3407
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3411
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3413
    :cond_2c
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .registers 29
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/wm/Task;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "restrictedBgActivity"    # Z

    .line 3247
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 3250
    const/4 v15, 0x3

    const/4 v8, 0x1

    if-eqz v13, :cond_4e

    .line 3251
    if-nez p2, :cond_1b

    .line 3252
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .end local p2    # "options":Landroid/app/ActivityOptions;
    .local v1, "options":Landroid/app/ActivityOptions;
    goto :goto_1d

    .line 3251
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_1b
    move-object/from16 v1, p2

    .line 3254
    .end local p2    # "options":Landroid/app/ActivityOptions;
    .restart local v1    # "options":Landroid/app/ActivityOptions;
    :goto_1d
    const/4 v2, 0x0

    .line 3256
    .local v2, "ignoreLaunchAdjacent":Z
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-nez v3, :cond_4c

    .line 3257
    if-nez v2, :cond_4c

    iget-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v3, :cond_4c

    .line 3260
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-ne v3, v8, :cond_4c

    .line 3261
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3262
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, 0x10001000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4c

    .line 3265
    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3267
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingHelpController;->scheduleNotifySplitAdjacentCallback()V

    .line 3274
    .end local v2    # "ignoreLaunchAdjacent":Z
    :cond_4c
    move-object v7, v1

    goto :goto_50

    .line 3250
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .restart local p2    # "options":Landroid/app/ActivityOptions;
    :cond_4e
    move-object/from16 v7, p2

    .line 3274
    .end local p2    # "options":Landroid/app/ActivityOptions;
    .local v7, "options":Landroid/app/ActivityOptions;
    :goto_50
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3275
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3276
    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3277
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 3278
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3279
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3280
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3281
    move/from16 v4, p9

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 3283
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 3287
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v17, v2

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move-object v6, v7

    move-object/from16 v18, v7

    .end local v7    # "options":Landroid/app/ActivityOptions;
    .local v18, "options":Landroid/app/ActivityOptions;
    move/from16 v7, v16

    move v14, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 3289
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 3290
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_a3

    .line 3291
    :cond_9d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_a3
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3292
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 3294
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 3296
    if-ne v15, v1, :cond_b3

    move v8, v14

    goto :goto_b4

    :cond_b3
    const/4 v8, 0x0

    :goto_b4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_bb

    move v1, v14

    goto :goto_bc

    :cond_bb
    const/4 v1, 0x0

    :goto_bc
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3298
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 3296
    invoke-direct {v0, v9, v8, v1, v3}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3299
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v3, 0x80000

    if-eqz v1, :cond_db

    .line 3300
    invoke-direct {v0, v2, v15}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_db

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_db

    move v8, v14

    goto :goto_dc

    :cond_db
    const/4 v8, 0x0

    :goto_dc
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 3303
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 3305
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v3

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_f1

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_f1

    .line 3306
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3311
    :cond_f1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_107

    .line 3312
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_100

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v2, :cond_107

    .line 3314
    :cond_100
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3320
    :cond_107
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-nez v2, :cond_112

    move v8, v14

    goto :goto_113

    :cond_112
    const/4 v8, 0x0

    :goto_113
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3321
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_134

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_134
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3328
    if-eqz v11, :cond_142

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_142

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_147

    .line 3329
    :cond_142
    iput-boolean v14, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 3330
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3333
    :cond_147
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_197

    .line 3334
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v3, :cond_18a

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 3335
    invoke-virtual {v9, v14}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 3336
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_197

    .line 3337
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3338
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 3337
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3339
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_179

    .line 3340
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_17a

    :cond_179
    move-object v5, v4

    .line 3341
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_17a
    if-eqz v5, :cond_189

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_189

    .line 3345
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3346
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3348
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_189
    goto :goto_197

    .line 3349
    :cond_18a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_197

    .line 3350
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3351
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3355
    :cond_197
    :goto_197
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_1a0

    move-object v1, v13

    goto :goto_1a1

    :cond_1a0
    move-object v1, v4

    :goto_1a1
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 3357
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3362
    if-eqz v10, :cond_1c1

    iget-boolean v1, v10, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v1, :cond_1c1

    .line 3363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3367
    :cond_1c1
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3371
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_1eb

    .line 3372
    move-object/from16 v1, p6

    .line 3373
    .local v1, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_1d9

    .line 3374
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 3375
    .local v2, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_1d9

    .line 3376
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3379
    .end local v2    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_1d9
    if-eqz v1, :cond_1e5

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3380
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1eb

    .line 3382
    :cond_1e5
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3386
    .end local v1    # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_1eb
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f4

    move v8, v14

    goto :goto_1f5

    :cond_1f4
    const/4 v8, 0x0

    :goto_1f5
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 3388
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_208

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_208

    .line 3389
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3390
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3394
    :cond_208
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3395
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    if-eq v1, v3, :cond_213

    .line 3396
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->saveFrontTaskId()V

    .line 3399
    :cond_213
    return-void
.end method

.method private setNewTask(Lcom/android/server/wm/Task;)V
    .registers 12
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/Task;

    .line 3805
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v6, v0

    .line 3806
    .local v6, "toTop":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3807
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_17
    move-object v2, v0

    .line 3808
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_1f
    move-object v3, v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3806
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3810
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string/jumbo v1, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 3812
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_5e

    .line 3813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in new task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3814
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3813
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    :cond_5e
    if-eqz p1, :cond_65

    .line 3818
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3820
    :cond_65
    return-void
.end method

.method private setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 24
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3614
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_12

    .line 3615
    invoke-virtual {v2}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    .line 3617
    .local v2, "isPairWindowingMode":Z
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3618
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3625
    .local v5, "intentTask":Lcom/android/server/wm/Task;
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v7, v8, :cond_59

    .line 3626
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3627
    .local v7, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-nez v7, :cond_38

    .line 3628
    move-object v8, v6

    goto :goto_3e

    :cond_38
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 3629
    .local v8, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_3e
    if-eqz v8, :cond_45

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_46

    :cond_45
    move-object v9, v6

    .line 3630
    .local v9, "topTask":Lcom/android/server/wm/Task;
    :goto_46
    if-ne v9, v5, :cond_55

    if-eqz v7, :cond_50

    .line 3631
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-ne v9, v10, :cond_52

    :cond_50
    if-eqz v2, :cond_53

    :cond_52
    goto :goto_55

    :cond_53
    move v10, v3

    goto :goto_56

    :cond_55
    :goto_55
    move v10, v4

    :goto_56
    move v7, v10

    .line 3635
    .end local v8    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "topTask":Lcom/android/server/wm/Task;
    .local v7, "differentTopTask":Z
    move v14, v7

    goto :goto_5b

    .line 3637
    .end local v7    # "differentTopTask":Z
    :cond_59
    const/4 v7, 0x1

    move v14, v7

    .line 3640
    .local v14, "differentTopTask":Z
    :goto_5b
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3641
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_b5

    .line 3642
    const/4 v7, 0x0

    .line 3643
    .local v7, "candidate":Lcom/android/server/wm/ActivityStack;
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v9, :cond_83

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3644
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v9

    .line 3643
    invoke-static {v9}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 3645
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 3646
    .local v9, "tda":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v9, v4, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3649
    .end local v9    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_83
    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3650
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 3651
    .local v9, "launchStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string/jumbo v21, "reparentToForceLaunchWindowingMode"

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3654
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3655
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3656
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v10, :cond_104

    if-eqz v7, :cond_104

    .line 3657
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v10, v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V

    goto :goto_104

    .line 3659
    .end local v7    # "candidate":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_b5
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_104

    .line 3660
    invoke-virtual {v7}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v7

    if-eq v7, v8, :cond_105

    .line 3661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-eqz v7, :cond_105

    .line 3662
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v7

    if-eqz v7, :cond_105

    .line 3663
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 3664
    .local v7, "task":Lcom/android/server/wm/Task;
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v9

    invoke-direct {v0, v7, v9}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z

    move-result v9

    .line 3665
    .local v9, "canMoveTask":Z
    if-nez v9, :cond_e3

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v10

    if-eqz v10, :cond_105

    .line 3666
    :cond_e3
    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3667
    invoke-direct {v0, v1, v10, v7, v11}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 3668
    .local v10, "launchStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string/jumbo v21, "reparentToLaunchPolicy"

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3671
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3672
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_105

    .line 3659
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "canMoveTask":Z
    .end local v10    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_104
    :goto_104
    nop

    .line 3678
    :cond_105
    :goto_105
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v7, :cond_10e

    .line 3679
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v8

    goto :goto_10f

    :cond_10e
    nop

    :goto_10f
    move v15, v8

    .line 3682
    .local v15, "prevDisplayId":I
    if-eqz v14, :cond_21d

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v7, :cond_21d

    .line 3683
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3684
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_13f

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_13d

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 3685
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3686
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eq v7, v8, :cond_13f

    :cond_13d
    if-eqz v2, :cond_21d

    .line 3691
    :cond_13f
    iget-boolean v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_14e

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_14e

    .line 3692
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3695
    :cond_14e
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3696
    invoke-direct {v0, v7, v8, v5, v9}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    .line 3697
    .local v13, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v13, :cond_1dd

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v13, v7, :cond_162

    move-object/from16 v18, v13

    goto/16 :goto_1df

    .line 3722
    :cond_162
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_183

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3723
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_183

    .line 3724
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_179

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_17a

    :cond_179
    move-object v7, v6

    .line 3725
    .local v7, "bounds":Landroid/graphics/Rect;
    :goto_17a
    if-eqz v7, :cond_183

    .line 3727
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v5, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 3730
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_183
    if-eqz v2, :cond_1cb

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eq v7, v13, :cond_1cb

    .line 3732
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    .line 3733
    .local v7, "reparent":Z
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1b3

    .line 3734
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-nez v8, :cond_1b3

    .line 3735
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 3736
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_1b3

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v9

    if-nez v9, :cond_1b3

    .line 3738
    const/4 v7, 0x0

    move/from16 v16, v7

    goto :goto_1b5

    .line 3742
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1b3
    move/from16 v16, v7

    .end local v7    # "reparent":Z
    .local v16, "reparent":Z
    :goto_1b5
    if-eqz v16, :cond_1c8

    .line 3743
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string/jumbo v17, "startPairActivities"

    move-object v7, v5

    move-object v8, v13

    move-object/from16 v18, v13

    .end local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .local v18, "launchStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_1ca

    .line 3742
    .end local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_1c8
    move-object/from16 v18, v13

    .line 3746
    .end local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .end local v16    # "reparent":Z
    .restart local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :goto_1ca
    goto :goto_1da

    .line 3730
    .end local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_1cb
    move-object/from16 v18, v13

    .line 3748
    .end local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string/jumbo v13, "reparentToTargetStack"

    move-object v7, v5

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3751
    :goto_1da
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_21b

    .line 3697
    .end local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_1dd
    move-object/from16 v18, v13

    .line 3701
    .end local v13    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :goto_1df
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isTopSplitScreenStack()Z

    move-result v4

    .line 3705
    .local v4, "isSplitScreenTopStack":Z
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eq v7, v5, :cond_205

    .line 3706
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eq v7, v8, :cond_205

    .line 3707
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-virtual {v7, v8, v5, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3709
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3716
    :cond_205
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v12, 0x1

    const-string v13, "bringingFoundTaskToFront"

    move-object v8, v5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 3719
    xor-int/lit8 v7, v4, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3720
    .end local v4    # "isSplitScreenTopStack":Z
    nop

    .line 3753
    :goto_21b
    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3758
    .end local v18    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_21d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3767
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3768
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3767
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 3769
    return-void
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "restrictedBgActivity"    # Z
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2186
    const/16 v0, -0x60

    .line 2189
    .local v0, "result":I
    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2190
    const-string/jumbo v4, "startActivityInner"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2197
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v4
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3a

    move v0, v4

    .line 2200
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2201
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2202
    .local v2, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2204
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    if-eqz v3, :cond_36

    .line 2205
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    .line 2206
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2207
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2206
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2212
    :cond_36
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 2214
    return v0

    .line 2200
    .end local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2201
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2202
    .restart local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2204
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    if-eqz v3, :cond_5c

    .line 2205
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    .line 2206
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2207
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2206
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2210
    :cond_5c
    throw v4
.end method

.method private waitForResult(ILcom/android/server/wm/ActivityRecord;)I
    .registers 9
    .param p1, "res"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput p1, v0, Landroid/app/WaitResult;->result:I

    .line 1009
    const/4 v0, 0x2

    if-eqz p1, :cond_7d

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v0, :cond_29

    if-eq p1, v4, :cond_13

    goto/16 :goto_b2

    .line 1025
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 1026
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    .line 1028
    goto/16 :goto_b2

    .line 1031
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 1032
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_35

    :cond_34
    const/4 v4, 0x1

    :goto_35
    iput v4, v0, Landroid/app/WaitResult;->launchState:I

    .line 1035
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    goto :goto_b2

    .line 1040
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 1044
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_6a} :catch_6b

    .line 1046
    goto :goto_6c

    .line 1045
    :catch_6b
    move-exception v0

    .line 1047
    :goto_6c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-boolean v0, v0, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_63

    goto :goto_b2

    .line 1011
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8f} :catch_90

    .line 1016
    goto :goto_91

    .line 1015
    :catch_90
    move-exception v1

    .line 1017
    :goto_91
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget v1, v1, Landroid/app/WaitResult;->result:I

    if-eq v1, v0, :cond_a9

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-boolean v1, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v1, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v1, :cond_88

    .line 1019
    :cond_a9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget v1, v1, Landroid/app/WaitResult;->result:I

    if-ne v1, v0, :cond_b2

    .line 1020
    const/4 p1, 0x2

    .line 1052
    :cond_b2
    :goto_b2
    return p1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4269
    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4270
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4271
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4272
    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4273
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4276
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4278
    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4279
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4280
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    .line 4281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4282
    const-string/jumbo v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4285
    :cond_7a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9b

    .line 4286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4287
    const-string/jumbo v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4288
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4290
    :cond_9b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_ad

    .line 4291
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4292
    const-string/jumbo v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4293
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4295
    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_bf

    .line 4296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4297
    const-string/jumbo v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4298
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4300
    :cond_bf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4301
    const-string/jumbo v0, "mLaunchSingleTop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4302
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x0

    if-ne v2, v0, :cond_cf

    move v0, v2

    goto :goto_d0

    :cond_cf
    move v0, v1

    :goto_d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4303
    const-string v0, " mLaunchSingleInstance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4304
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_df

    move v0, v2

    goto :goto_e0

    :cond_df
    move v0, v1

    :goto_e0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4305
    const-string v0, " mLaunchSingleTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4306
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_ee

    goto :goto_ef

    :cond_ee
    move v2, v1

    :goto_ef
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4308
    const-string/jumbo v0, "mLaunchFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4309
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4310
    const-string v0, " mDoResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4311
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4312
    const-string v0, " mAddingToTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4313
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4314
    return-void
.end method

.method execute()I
    .registers 25

    move-object/from16 v1, p0

    .line 767
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v2, v0

    .line 768
    .local v2, "comp":Landroid/content/ComponentName;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_12
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    move-object v3, v0

    .line 769
    .local v3, "callee":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 772
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_40

    .line 773
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 777
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_40
    :goto_40
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_302

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 778
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 779
    .local v0, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v6

    .line 781
    .end local v0    # "caller":Lcom/android/server/wm/ActivityRecord;
    .local v6, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_2fc

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 787
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6f

    .line 788
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityStackSupervisor;)V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_302

    .line 793
    :cond_6f
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    const/4 v7, 0x0

    if-eqz v0, :cond_81

    .line 794
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_82

    :cond_81
    move-object v0, v7

    :goto_82
    move-object v8, v0

    .line 795
    .local v8, "mActiveApplaunchOptions":Landroid/app/ActivityOptions;
    if-eqz v8, :cond_104

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v9

    if-eqz v9, :cond_104

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_104

    .line 797
    invoke-virtual {v8, v5}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 798
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_99} :catch_2ea
    .catchall {:try_start_6f .. :try_end_99} :catchall_302

    :try_start_99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 799
    const/4 v9, 0x0

    .line 800
    .local v9, "intentFlags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 802
    .local v10, "token":J
    const/4 v12, 0x0

    .line 803
    .local v12, "isAppLockedPkg":Z
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v13, :cond_b3

    .line 804
    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v13

    move v12, v13

    .line 807
    :cond_b3
    const-string v13, "ActivityTaskManager"

    const-string v14, "TouchDown intent received, starting ActiveLaunch"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "activelaunch"

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_e4

    const/16 v22, 0x1

    goto :goto_e6

    :cond_e4
    const/16 v22, 0x0

    :goto_e6
    const/16 v23, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v21, v0

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsyncForActiveLaunch(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZZ)V

    .line 810
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    .end local v9    # "intentFlags":I
    .end local v10    # "token":J
    .end local v12    # "isAppLockedPkg":Z
    monitor-exit v7
    :try_end_f5
    .catchall {:try_start_99 .. :try_end_f5} :catchall_fe

    :try_start_f5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_2ea
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_302

    .line 812
    nop

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 812
    const/4 v0, 0x0

    return v0

    .line 811
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v7
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "callee":Ljava/lang/String;
    .end local v6    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_104} :catch_2ea
    .catchall {:try_start_100 .. :try_end_104} :catchall_302

    .line 818
    .end local v8    # "mActiveApplaunchOptions":Landroid/app/ActivityOptions;
    .restart local v2    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v6    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_104
    nop

    .line 822
    :try_start_105
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v0, :cond_116

    .line 823
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_117

    :cond_116
    move-object v0, v7

    :goto_117
    move-object v4, v0

    .line 824
    .local v4, "mMlLaunchOptions":Landroid/app/ActivityOptions;
    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->isMlLaunch()Z

    move-result v0

    if-eqz v0, :cond_17f

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_17f

    .line 826
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/ActivityOptions;->setMlLaunch(Z)V

    .line 827
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_12f} :catch_2d8
    .catchall {:try_start_105 .. :try_end_12f} :catchall_302

    :try_start_12f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "intentFlags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 830
    .local v7, "token":J
    const-string v9, "ActivityTaskManager"

    const-string v10, "MachinLearning intent received, starting MlLaunch"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v14, 0x0

    const-string/jumbo v16, "mllaunch"

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v10, 0x0

    move v15, v10

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsyncForActiveLaunch(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZZ)V

    .line 833
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    .end local v0    # "intentFlags":I
    .end local v7    # "token":J
    monitor-exit v5
    :try_end_170
    .catchall {:try_start_12f .. :try_end_170} :catchall_179

    :try_start_170
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_173} :catch_2d8
    .catchall {:try_start_170 .. :try_end_173} :catchall_302

    .line 835
    nop

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 835
    const/4 v0, 0x0

    return v0

    .line 834
    :catchall_179
    move-exception v0

    :try_start_17a
    monitor-exit v5
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    :try_start_17b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "callee":Ljava/lang/String;
    .end local v6    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17f} :catch_2d8
    .catchall {:try_start_17b .. :try_end_17f} :catchall_302

    .line 841
    .end local v4    # "mMlLaunchOptions":Landroid/app/ActivityOptions;
    .restart local v2    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v6    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_17f
    nop

    .line 846
    :try_start_180
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1e2

    .line 847
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 849
    .local v0, "tUserId":I
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 850
    .local v4, "callingUid":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a2

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .local v5, "callingUserId":I
    goto :goto_1a6

    .line 853
    .end local v5    # "callingUserId":I
    :cond_1a2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 855
    .restart local v5    # "callingUserId":I
    :goto_1a6
    if-eq v5, v0, :cond_1bf

    if-nez v5, :cond_1b0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-nez v8, :cond_1b8

    :cond_1b0
    if-nez v0, :cond_1bf

    .line 856
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_1bf

    .line 857
    :cond_1b8
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v8, v5}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(Landroid/content/Intent;I)V

    .line 860
    :cond_1bf
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_1e2

    .line 861
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-nez v8, :cond_1e2

    .line 862
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;)V

    .line 867
    .end local v0    # "tUserId":I
    .end local v4    # "callingUid":I
    .end local v5    # "callingUserId":I
    :cond_1e2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_224

    const-string v0, "android.intent.action.DELETE"

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_208

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 868
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 869
    :cond_208
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 876
    :cond_224
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_229
    .catchall {:try_start_180 .. :try_end_229} :catchall_302

    :try_start_229
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 877
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_244

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 878
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_244

    const/4 v0, 0x1

    goto :goto_245

    :cond_244
    const/4 v0, 0x0

    .line 879
    .local v0, "globalConfigWillChange":Z
    :goto_245
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 880
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_24f

    .line 881
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 883
    :cond_24f
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_269

    .line 884
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting activity when config will change = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 890
    .local v8, "origId":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v10

    .line 891
    .local v10, "res":I
    if-eqz v10, :cond_27b

    .line 892
    monitor-exit v4
    :try_end_274
    .catchall {:try_start_229 .. :try_end_274} :catchall_2d2

    .line 925
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 892
    return v10

    .line 894
    :cond_27b
    :try_start_27b
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1, v11}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v11

    move v10, v11

    .line 896
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    if-eqz v0, :cond_2ad

    .line 903
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v12, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v13, "updateConfiguration()"

    invoke-virtual {v11, v12, v13}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    if-eqz v5, :cond_298

    .line 907
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 909
    :cond_298
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v11, :cond_2a3

    .line 910
    const-string v11, "ActivityTaskManager"

    const-string v12, "Updating to new configuration after starting activity."

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_2a3
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v7, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 919
    :cond_2ad
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v7

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v6, v10, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 921
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-nez v7, :cond_2c0

    move v7, v10

    goto :goto_2c6

    .line 922
    :cond_2c0
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v1, v10, v7}, Lcom/android/server/wm/ActivityStarter;->waitForResult(ILcom/android/server/wm/ActivityRecord;)I

    move-result v7

    .line 921
    :goto_2c6
    invoke-static {v7}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v7

    monitor-exit v4
    :try_end_2cb
    .catchall {:try_start_27b .. :try_end_2cb} :catchall_2d2

    .line 925
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 921
    return v7

    .line 923
    .end local v0    # "globalConfigWillChange":Z
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "origId":J
    .end local v10    # "res":I
    :catchall_2d2
    move-exception v0

    :try_start_2d3
    monitor-exit v4
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d2

    :try_start_2d4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 837
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catch_2d8
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ActivityTaskManager"

    const-string v5, "MachinLearning Launching Fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e3
    .catchall {:try_start_2d4 .. :try_end_2e3} :catchall_302

    .line 840
    nop

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 840
    const/16 v4, -0x60

    return v4

    .line 814
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2ea
    move-exception v0

    .line 815
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2eb
    const-string v4, "ActivityTaskManager"

    const-string v5, "ActiveLaunching Fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f5
    .catchall {:try_start_2eb .. :try_end_2f5} :catchall_302

    .line 817
    nop

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 817
    const/16 v4, -0x60

    return v4

    .line 781
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :catchall_2fc
    move-exception v0

    :try_start_2fd
    monitor-exit v4
    :try_end_2fe
    .catchall {:try_start_2fd .. :try_end_2fe} :catchall_2fc

    :try_start_2fe
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0
    :try_end_302
    .catchall {:try_start_2fe .. :try_end_302} :catchall_302

    .line 925
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "callee":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_302
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 926
    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2

    .line 3978
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartInfo()Ljava/lang/String;
    .registers 4

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->mCallerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2092
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2093
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_11

    .line 2097
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 2100
    :cond_11
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->launchFailed2nd:Z

    if-eqz v0, :cond_1d

    goto/16 :goto_d4

    .line 2110
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 2112
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2113
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2f

    .line 2114
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_2f
    nop

    .line 2115
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    if-eqz p3, :cond_d3

    if-eqz v0, :cond_d3

    .line 2117
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_3c

    goto/16 :goto_d3

    .line 2122
    :cond_3c
    const v1, 0x10008000

    .line 2123
    .local v1, "clearTaskFlags":I
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_4f

    move v2, v4

    goto :goto_50

    :cond_4f
    move v2, v5

    .line 2125
    .local v2, "clearedTask":Z
    :goto_50
    const/4 v3, 0x2

    if-eq p2, v3, :cond_58

    const/4 v3, 0x3

    if-eq p2, v3, :cond_58

    if-eqz v2, :cond_88

    .line 2129
    :cond_58
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2130
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_6b

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_6b

    move v6, v4

    goto :goto_6c

    :cond_6b
    move v6, v5

    .line 2131
    .local v6, "homeTaskVisible":Z
    :goto_6c
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2132
    .local v7, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_7a

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7a

    move v8, v4

    goto :goto_7b

    :cond_7a
    move v8, v5

    .line 2133
    .local v8, "visible":Z
    :goto_7b
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    .line 2134
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 2133
    invoke-virtual {v9, v10, v6, v2, v8}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 2138
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "homeTaskVisible":Z
    .end local v7    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "visible":Z
    :cond_88
    nop

    .line 2139
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_d2

    :cond_95
    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    if-eqz v3, :cond_d2

    .line 2141
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 2142
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController;->isDeferredSplitTaskOrganizerLocked()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 2143
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_b6

    .line 2144
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_b6

    goto :goto_b7

    :cond_b6
    move v4, v5

    :goto_b7
    move v3, v4

    .line 2145
    .local v3, "isTransitionSet":Z
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    .line 2146
    invoke-virtual {v4}, Lcom/android/server/wm/SplitWindowController;->hasRemoteAnimationControllers()Z

    move-result v4

    .line 2147
    .local v4, "hasRemoteAnimForPairTask":Z
    if-nez v3, :cond_d0

    if-nez v4, :cond_d0

    .line 2148
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const-string/jumbo v7, "no_transit"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskOrganizerController;->continueSplitTaskOrganizerLocked(Ljava/lang/String;)V

    .line 2151
    .end local v3    # "isTransitionSet":Z
    .end local v4    # "hasRemoteAnimForPairTask":Z
    :cond_d0
    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 2158
    :cond_d2
    return-void

    .line 2119
    .end local v1    # "clearTaskFlags":I
    .end local v2    # "clearedTask":Z
    :cond_d3
    :goto_d3
    return-void

    .line 2102
    .end local v0    # "targetTask":Lcom/android/server/wm/Task;
    :cond_d4
    :goto_d4
    return-void
.end method

.method recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 13
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "targetTaskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p4, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2895
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    .line 2896
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2897
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2898
    return v2

    .line 2901
    :cond_13
    const/4 v0, 0x0

    .line 2902
    .local v0, "clearTaskForReuse":Z
    if-eqz p3, :cond_4b

    .line 2903
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_24

    .line 2904
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2905
    const/4 v0, 0x1

    .line 2908
    :cond_24
    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2e

    .line 2912
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4b

    .line 2914
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2915
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/16 v4, 0x4000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3d

    move v1, v3

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 2916
    .local v1, "taskOnHome":Z
    :goto_3e
    if-eqz v1, :cond_46

    .line 2917
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4b

    .line 2919
    :cond_46
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->removeFlags(I)V

    .line 2924
    .end local v1    # "taskOnHome":Z
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2927
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2931
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_63

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_63

    .line 2933
    :cond_61
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2936
    :cond_63
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    const-string/jumbo v4, "intentActivityFound"

    if-eqz v1, :cond_a0

    .line 2940
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v1, :cond_9c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_9c

    .line 2941
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_97

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bring to front target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    :cond_97
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2947
    :cond_9c
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 2948
    return v3

    .line 2951
    :cond_a0
    nop

    .line 2952
    const/4 v1, 0x0

    if-eqz p3, :cond_a9

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_aa

    :cond_a9
    move-object v5, v1

    .line 2951
    :goto_aa
    invoke-direct {p0, p1, v5, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2956
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2957
    if-nez p2, :cond_b6

    .line 2958
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2959
    return v2

    .line 2964
    :cond_b6
    if-eqz v0, :cond_bd

    .line 2968
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2971
    :cond_bd
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v5, :cond_c2

    .line 2972
    return v2

    .line 2977
    :cond_c2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v5

    if-eqz v5, :cond_ef

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 2980
    nop

    .line 2981
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    move-object v6, v5

    .local v6, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_e7

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2982
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerServiceExt;->isPreventWakingUpLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_e7

    goto :goto_ef

    .line 2986
    :cond_e7
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string/jumbo v7, "recycleTask#turnScreenOnFlag"

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 2990
    .end local v6    # "mainWindow":Lcom/android/server/wm/WindowState;
    :cond_ef
    :goto_ef
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v5, :cond_f7

    .line 2992
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_116

    .line 2994
    :cond_f7
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_116

    .line 2997
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2998
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_111

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2999
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 3000
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_116

    .line 3003
    :cond_111
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3008
    :cond_116
    :goto_116
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 3012
    nop

    .line 3013
    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_123

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_124

    :cond_123
    move-object v1, p2

    :goto_124
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3014
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v1, :cond_12c

    const/4 v1, 0x2

    goto :goto_12d

    :cond_12c
    const/4 v1, 0x3

    :goto_12d
    return v1
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 729
    :goto_1b
    return v0
.end method

.method reset(Z)V
    .registers 5
    .param p1, "clearRequest"    # Z

    .line 3192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3193
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3194
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 3195
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 3198
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 3199
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3200
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 3202
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 3204
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 3205
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3206
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3207
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3208
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3209
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 3211
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3212
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3213
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 3215
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 3216
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 3217
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 3219
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 3220
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 3221
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3222
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 3223
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 3224
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3225
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 3227
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3228
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3230
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 3232
    if-eqz p1, :cond_4b

    .line 3233
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 3238
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3241
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .registers 4
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 685
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 686
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 687
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 688
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 689
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 691
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 692
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 693
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 697
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 698
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 699
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 700
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 701
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 702
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 704
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 705
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 706
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 708
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 709
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 710
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 712
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 713
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 714
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 715
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 716
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 717
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 718
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 720
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 721
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 723
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 725
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 726
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 4002
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4003
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 4104
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 4099
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 4100
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowBackgroundActivityStart"    # Z

    .line 4163
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 4164
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowLookup"    # Z

    .line 4153
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 4154
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3992
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3993
    return-object p0
.end method

.method setCallerPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 4260
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->mCallerPid:I

    .line 4262
    return-object p0
.end method

.method setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 4065
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 4066
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 4060
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 4061
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 4046
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 4055
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 4056
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "componentSpecified"    # Z

    .line 4118
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 4119
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "filterCallingUid"    # I

    .line 4113
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 4114
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4143
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 4144
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "ignoreTargetSecurity"    # Z

    .line 4108
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 4109
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "inTask"    # Lcom/android/server/wm/Task;

    .line 4128
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 4129
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3973
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3974
    return-object p0
.end method

.method setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3982
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3983
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 4158
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 4159
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 4123
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 4124
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 4138
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 4139
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 4079
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 4080
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 4089
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 4090
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3988
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "requestCode"    # I

    .line 4032
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 4033
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 4007
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 4008
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 3997
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3998
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 4022
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 4023
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 4027
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 4028
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "startFlags"    # I

    .line 4094
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 4095
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "userId"    # I

    .line 4148
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 4149
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4017
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4018
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 4012
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 4013
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 4133
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 4134
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z
    .registers 41
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBackgroundActivityStart"    # Z
    .param p9, "intent"    # Landroid/content/Intent;

    .line 1882
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1883
    .local v9, "callingAppId":I
    const-string v1, "ActivityTaskManager"

    if-eqz v12, :cond_3cd

    const/16 v3, 0x3e8

    if-eq v9, v3, :cond_3cd

    const/16 v4, 0x403

    if-ne v9, v4, :cond_22

    move/from16 v18, v9

    goto/16 :goto_3cf

    .line 1892
    :cond_22
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v8

    .line 1893
    .local v8, "callingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1894
    invoke-virtual {v4, v12}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v7

    .line 1895
    .local v7, "callingUidHasAnyVisibleWindow":Z
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-nez v7, :cond_3e

    if-eq v8, v4, :cond_3e

    const/4 v5, 0x3

    if-ne v8, v5, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v5, v6

    .line 1898
    .local v5, "isCallingUidForeground":Z
    :goto_3f
    if-gt v8, v6, :cond_44

    move/from16 v16, v6

    goto :goto_46

    :cond_44
    const/16 v16, 0x0

    :goto_46
    move/from16 v17, v16

    .line 1900
    .local v17, "isCallingUidPersistentSystemProcess":Z
    if-nez v7, :cond_3a1

    move/from16 v2, v17

    .end local v17    # "isCallingUidPersistentSystemProcess":Z
    .local v2, "isCallingUidPersistentSystemProcess":Z
    if-eqz v2, :cond_59

    move v0, v2

    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v18, v9

    goto/16 :goto_3ab

    .line 1909
    :cond_59
    if-ne v12, v15, :cond_5d

    .line 1910
    move v6, v8

    goto :goto_63

    .line 1911
    :cond_5d
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v6

    :goto_63
    nop

    .line 1912
    .local v6, "realCallingUidProcState":I
    if-ne v12, v15, :cond_68

    .line 1913
    move v3, v7

    goto :goto_72

    .line 1914
    :cond_68
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v3

    :goto_72
    nop

    .line 1915
    .local v3, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_77

    .line 1916
    move v4, v5

    goto :goto_7f

    .line 1918
    :cond_77
    if-nez v3, :cond_7e

    if-ne v6, v4, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v4, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v4, 0x1

    :goto_7f
    nop

    .line 1919
    .local v4, "isRealCallingUidForeground":Z
    move/from16 v19, v9

    .end local v9    # "callingAppId":I
    .local v19, "callingAppId":I
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1920
    .local v9, "realCallingAppId":I
    if-ne v12, v15, :cond_8a

    .line 1921
    move v11, v2

    goto :goto_95

    .line 1923
    :cond_8a
    const/16 v11, 0x3e8

    if-eq v9, v11, :cond_94

    const/4 v11, 0x1

    if-gt v6, v11, :cond_92

    goto :goto_94

    :cond_92
    const/4 v11, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v11, 0x1

    :goto_95
    nop

    .line 1924
    .local v11, "isRealCallingUidPersistentSystemProcess":Z
    move/from16 v18, v9

    .end local v9    # "realCallingAppId":I
    .local v18, "realCallingAppId":I
    const-string v9, ") is companion app"

    if-eq v15, v12, :cond_109

    .line 1926
    move/from16 v20, v6

    .end local v6    # "realCallingUidProcState":I
    .local v20, "realCallingUidProcState":I
    const-string v6, "Activity start allowed: realCallingUid ("

    if-eqz v3, :cond_bf

    .line 1927
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_bd

    .line 1928
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") has visible (non-toast) window"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_bd
    const/4 v1, 0x0

    return v1

    .line 1935
    :cond_bf
    if-eqz v11, :cond_e0

    if-eqz v10, :cond_e0

    .line 1936
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_de

    .line 1937
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is persistent system process AND intent sender whitelisted (allowBackgroundActivityStart = true)"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_de
    const/4 v1, 0x0

    return v1

    .line 1944
    :cond_e0
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v21, v11

    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v21, "isRealCallingUidPersistentSystemProcess":Z
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v10, v11, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 1946
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v10, :cond_107

    .line 1947
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_107
    const/4 v1, 0x0

    return v1

    .line 1924
    .end local v20    # "realCallingUidProcState":I
    .end local v21    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v6    # "realCallingUidProcState":I
    .restart local v11    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_109
    move/from16 v20, v6

    move/from16 v21, v11

    .line 1954
    .end local v6    # "realCallingUidProcState":I
    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v20    # "realCallingUidProcState":I
    .restart local v21    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_10d
    const-string v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v6, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_12f

    .line 1956
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_12d

    .line 1957
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start allowed: START_ACTIVITIES_FROM_BACKGROUND permission granted for uid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_12d
    const/4 v1, 0x0

    return v1

    .line 1965
    :cond_12f
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    const-string v10, "Background activity start allowed: callingUid ("

    if-eqz v6, :cond_158

    .line 1966
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_156

    .line 1967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is recents"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_156
    const/4 v1, 0x0

    return v1

    .line 1973
    :cond_158
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 1974
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_17b

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is device owner"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_17b
    const/4 v1, 0x0

    return v1

    .line 1981
    :cond_17d
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1982
    .local v11, "callingUserId":I
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v6

    if-eqz v6, :cond_1a4

    .line 1983
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_1a2

    .line 1984
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_1a2
    const/4 v1, 0x0

    return v1

    .line 1993
    :cond_1a4
    move/from16 v6, p1

    .line 1994
    .local v6, "callerAppUid":I
    if-nez p6, :cond_1b3

    .line 1995
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v10, p5

    invoke-virtual {v9, v10, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    .line 1996
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v6, p4

    goto :goto_1b7

    .line 1994
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_1b3
    move/from16 v10, p5

    move-object/from16 v9, p6

    .line 1999
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_1b7
    if-eqz v9, :cond_268

    .line 2001
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v22

    if-eqz v22, :cond_1ef

    .line 2002
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_1eb

    .line 2003
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .local v22, "callingUserId":I
    const-string v11, "Background activity start allowed: callerApp process (pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") is whitelisted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2003
    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ed

    .line 2002
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1eb
    move/from16 v22, v11

    .line 2006
    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    :goto_1ed
    const/4 v1, 0x0

    return v1

    .line 2009
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1ef
    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 2010
    invoke-virtual {v10, v6}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 2011
    .local v10, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v10, :cond_25f

    .line 2012
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/16 v17, 0x1

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_203
    if-ltz v11, :cond_258

    .line 2013
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v10

    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v10, v23

    check-cast v10, Lcom/android/server/wm/WindowProcessController;

    .line 2014
    .local v10, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v10, v9, :cond_24b

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v23

    if-eqz v23, :cond_24b

    .line 2015
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_245

    .line 2016
    move-object/from16 v23, v9

    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .local v24, "realCallingUidHasAnyVisibleWindow":Z
    const-string v3, "Background activity start allowed: process "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is whitelisted"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2016
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_249

    .line 2015
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_245
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 2020
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    :goto_249
    const/4 v1, 0x0

    return v1

    .line 2014
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_24b
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 2012
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v10, p6

    move-object/from16 v9, v23

    move/from16 v3, v24

    goto :goto_203

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v10, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_258
    move/from16 v24, v3

    move-object/from16 v23, v9

    move-object/from16 p6, v10

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_270

    .line 2011
    .end local v11    # "i":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_25f
    move/from16 v24, v3

    move-object/from16 v23, v9

    move-object/from16 p6, v10

    const/16 v17, 0x1

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_270

    .line 1999
    .end local v22    # "callingUserId":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v11, "callingUserId":I
    :cond_268
    move/from16 v24, v3

    move-object/from16 v23, v9

    move/from16 v22, v11

    const/16 v17, 0x1

    .line 2026
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    :goto_270
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_293

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start for "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 v1, 0x0

    return v1

    .line 2032
    :cond_293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start [callingPackage: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; callingUid: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidForeground: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; callingUidHasAnyVisibleWindow: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; callingUidProcState: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Landroid/app/ActivityManager;

    .line 2036
    const-string v10, "PROCESS_STATE_"

    invoke-static {v9, v10, v8}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUid: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidForeground: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUidHasAnyVisibleWindow: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v24

    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .local v9, "realCallingUidHasAnyVisibleWindow":Z
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "; realCallingUidProcState: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v11, Landroid/app/ActivityManager;

    .line 2042
    move/from16 v24, v6

    move/from16 v6, v20

    .end local v20    # "realCallingUidProcState":I
    .local v6, "realCallingUidProcState":I
    .local v24, "callerAppUid":I
    invoke-static {v11, v10, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v21

    .end local v21    # "isRealCallingUidPersistentSystemProcess":Z
    .local v11, "isRealCallingUidPersistentSystemProcess":Z
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "; originatingPendingIntent: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v20, v2

    .end local v2    # "isCallingUidPersistentSystemProcess":Z
    .local v20, "isCallingUidPersistentSystemProcess":Z
    const-string v2, "; isBgStartWhitelisted: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; intent: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p9

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; callerApp: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2032
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_384

    .line 2053
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    if-eqz v10, :cond_34f

    move/from16 v16, v17

    goto :goto_351

    :cond_34f
    const/16 v16, 0x0

    :goto_351
    move/from16 v3, v20

    move-object/from16 v20, v23

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "isCallingUidPersistentSystemProcess":Z
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v2, p9

    move/from16 v21, v9

    move v9, v3

    .end local v3    # "isCallingUidPersistentSystemProcess":Z
    .local v9, "isCallingUidPersistentSystemProcess":Z
    .local v21, "realCallingUidHasAnyVisibleWindow":Z
    move-object/from16 v3, v20

    move/from16 v23, v4

    .end local v4    # "isRealCallingUidForeground":Z
    .local v23, "isRealCallingUidForeground":Z
    move/from16 v4, p1

    move/from16 v25, v5

    .end local v5    # "isCallingUidForeground":Z
    .local v25, "isCallingUidForeground":Z
    move-object/from16 v5, p3

    move/from16 v26, v17

    move/from16 v17, v6

    .end local v6    # "realCallingUidProcState":I
    .local v17, "realCallingUidProcState":I
    move v6, v8

    move/from16 v27, v7

    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .local v27, "callingUidHasAnyVisibleWindow":Z
    move/from16 v28, v8

    .end local v8    # "callingUidProcState":I
    .local v28, "callingUidProcState":I
    move/from16 v8, p4

    move v0, v9

    move/from16 v30, v19

    move/from16 v19, v18

    move/from16 v18, v30

    .end local v9    # "isCallingUidPersistentSystemProcess":Z
    .local v0, "isCallingUidPersistentSystemProcess":Z
    .local v18, "callingAppId":I
    .local v19, "realCallingAppId":I
    move/from16 v9, v17

    move/from16 v10, v21

    move/from16 v29, v22

    move/from16 v22, v11

    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v22, "isRealCallingUidPersistentSystemProcess":Z
    .local v29, "callingUserId":I
    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    goto :goto_3a0

    .line 2052
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v17    # "realCallingUidProcState":I
    .end local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUserId":I
    .restart local v4    # "isRealCallingUidForeground":Z
    .restart local v5    # "isCallingUidForeground":Z
    .restart local v6    # "realCallingUidProcState":I
    .restart local v7    # "callingUidHasAnyVisibleWindow":Z
    .restart local v8    # "callingUidProcState":I
    .local v9, "realCallingUidHasAnyVisibleWindow":Z
    .restart local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v18, "realCallingAppId":I
    .local v19, "callingAppId":I
    .local v20, "isCallingUidPersistentSystemProcess":Z
    .local v22, "callingUserId":I
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_384
    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v21, v9

    move/from16 v26, v17

    move/from16 v0, v20

    move/from16 v29, v22

    move-object/from16 v20, v23

    move/from16 v23, v4

    move/from16 v17, v6

    move/from16 v22, v11

    move/from16 v30, v19

    move/from16 v19, v18

    move/from16 v18, v30

    .line 2058
    .end local v4    # "isRealCallingUidForeground":Z
    .end local v5    # "isCallingUidForeground":Z
    .end local v6    # "realCallingUidProcState":I
    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .end local v8    # "callingUidProcState":I
    .end local v9    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v0    # "isCallingUidPersistentSystemProcess":Z
    .restart local v17    # "realCallingUidProcState":I
    .local v18, "callingAppId":I
    .local v19, "realCallingAppId":I
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .local v22, "isRealCallingUidPersistentSystemProcess":Z
    .local v23, "isRealCallingUidForeground":Z
    .restart local v25    # "isCallingUidForeground":Z
    .restart local v27    # "callingUidHasAnyVisibleWindow":Z
    .restart local v28    # "callingUidProcState":I
    .restart local v29    # "callingUserId":I
    :goto_3a0
    return v26

    .line 1900
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v18    # "callingAppId":I
    .end local v19    # "realCallingAppId":I
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v22    # "isRealCallingUidPersistentSystemProcess":Z
    .end local v23    # "isRealCallingUidForeground":Z
    .end local v24    # "callerAppUid":I
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUserId":I
    .restart local v5    # "isCallingUidForeground":Z
    .restart local v7    # "callingUidHasAnyVisibleWindow":Z
    .restart local v8    # "callingUidProcState":I
    .local v9, "callingAppId":I
    .local v17, "isCallingUidPersistentSystemProcess":Z
    .local p6, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_3a1
    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v18, v9

    move/from16 v0, v17

    .line 1901
    .end local v5    # "isCallingUidForeground":Z
    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .end local v8    # "callingUidProcState":I
    .end local v9    # "callingAppId":I
    .end local v17    # "isCallingUidPersistentSystemProcess":Z
    .restart local v0    # "isCallingUidPersistentSystemProcess":Z
    .restart local v18    # "callingAppId":I
    .restart local v25    # "isCallingUidForeground":Z
    .restart local v27    # "callingUidHasAnyVisibleWindow":Z
    .restart local v28    # "callingUidProcState":I
    :goto_3ab
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_3cb

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity start allowed: callingUidHasAnyVisibleWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCallingUidPersistentSystemProcess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_3cb
    const/4 v1, 0x0

    return v1

    .line 1883
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v18    # "callingAppId":I
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .restart local v9    # "callingAppId":I
    :cond_3cd
    move/from16 v18, v9

    .line 1885
    .end local v9    # "callingAppId":I
    .restart local v18    # "callingAppId":I
    :goto_3cf
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_3ec

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity start allowed for important callingUid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_3ec
    const/4 v0, 0x0

    return v0
.end method

.method startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 38
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "restrictedBgActivity"    # Z
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2274
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    move-object/from16 v14, p10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 2277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 2279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 2281
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2283
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 2286
    .local v9, "reusedTask":Lcom/android/server/wm/Task;
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v15, 0x1

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2287
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2288
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2289
    iput-boolean v15, v10, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2290
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 2294
    :cond_5c
    if-eqz v9, :cond_60

    move-object v0, v9

    goto :goto_64

    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_64
    move-object v8, v0

    .line 2295
    .local v8, "targetTask":Lcom/android/server/wm/Task;
    const/4 v7, 0x0

    if-nez v8, :cond_6a

    move v0, v15

    goto :goto_6b

    :cond_6a
    move v0, v7

    :goto_6b
    move v6, v0

    .line 2296
    .local v6, "newTask":Z
    iput-object v8, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2298
    invoke-direct {v10, v11, v12, v8}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2302
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9c

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2303
    invoke-virtual {v0}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2306
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-eqz v0, :cond_8f

    .line 2307
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v7}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2309
    :cond_8f
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    if-eqz v0, :cond_9c

    .line 2310
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v7}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2316
    :cond_9c
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_ae

    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x10001000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_ae

    move v0, v15

    goto :goto_af

    :cond_ae
    move v0, v7

    .line 2319
    .local v0, "isLaunchAdjacent":Z
    :goto_af
    const/4 v1, 0x0

    .line 2330
    .local v1, "ignoreLaunchAdjacent":Z
    if-eqz v0, :cond_d1

    if-nez v1, :cond_d1

    .line 2331
    const/4 v2, 0x0

    .line 2332
    .local v2, "windowingMode":I
    if-eqz v13, :cond_ce

    .line 2333
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    .line 2334
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2342
    .local v3, "tda":Lcom/android/server/wm/TaskDisplayArea;
    nop

    .line 2343
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 2344
    invoke-virtual {v13, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2345
    invoke-virtual {v13, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2348
    .end local v3    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_ce
    invoke-direct {v10, v11, v2, v12}, Lcom/android/server/wm/ActivityStarter;->moveTopTaskToRootSplitStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityRecord;)V

    .line 2396
    .end local v0    # "isLaunchAdjacent":Z
    .end local v1    # "ignoreLaunchAdjacent":Z
    .end local v2    # "windowingMode":I
    :cond_d1
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v4, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2398
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v16

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2396
    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p5

    move/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "newTask":Z
    .local v20, "newTask":Z
    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object v15, v8

    .end local v8    # "targetTask":Lcom/android/server/wm/Task;
    .local v15, "targetTask":Lcom/android/server/wm/Task;
    move-object/from16 v8, p10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_fe

    .line 2399
    return v1

    .line 2402
    :cond_fe
    if-eqz v15, :cond_144

    .line 2403
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 2404
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_119

    goto :goto_11b

    :cond_119
    const/4 v7, 0x0

    goto :goto_11c

    :cond_11b
    :goto_11b
    const/4 v7, 0x1

    :goto_11c
    move v0, v7

    .line 2405
    .local v0, "isHomeOrRecents":Z
    if-eqz v0, :cond_144

    .line 2406
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2407
    .local v2, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-ne v2, v3, :cond_144

    .line 2408
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_144

    .line 2409
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 2413
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const-string/jumbo v4, "start_home"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskOrganizerController;->deferSplitTaskOrganizerLocked(Ljava/lang/String;)V

    .line 2415
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiSplitWindowController:Lcom/android/server/wm/MultiSplitWindowController;

    .line 2429
    .end local v0    # "isHomeOrRecents":Z
    .end local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_144
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v7

    goto :goto_14e

    .line 2430
    :cond_14d
    const/4 v7, 0x0

    :goto_14e
    move v0, v7

    .line 2431
    .local v0, "focusedWindowingMode":I
    if-nez v0, :cond_15e

    .line 2432
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_15c

    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v7

    goto :goto_15d

    .line 2433
    :cond_15c
    const/4 v7, 0x0

    :goto_15d
    move v0, v7

    .line 2435
    :cond_15e
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 2436
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2437
    .restart local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->ensureFocusWithLaunchingWindowingMode(I)V

    .line 2441
    .end local v0    # "focusedWindowingMode":I
    .end local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_16d
    if-eqz v13, :cond_1bb

    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->isDismissSplitBeforeLaunch()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 2443
    invoke-static {v13, v11}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldDismissSplitBeforeLaunch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 2444
    :cond_17b
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2445
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2446
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 2447
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mFreezeForSplit:Z

    .line 2448
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const v3, 0x10a0001

    const v4, 0x10a00c8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 2450
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    .line 2452
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2454
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2455
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_1bb

    .line 2456
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2457
    .local v3, "t":Lcom/android/server/wm/AppTransition;
    nop

    .line 2458
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v4

    .line 2457
    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    .line 2459
    .local v4, "keyguardGoingAway":Z
    if-nez v4, :cond_1bb

    .line 2460
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 2502
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "t":Lcom/android/server/wm/AppTransition;
    .end local v4    # "keyguardGoingAway":Z
    :cond_1bb
    move/from16 v0, v20

    .end local v20    # "newTask":Z
    .local v0, "newTask":Z
    invoke-direct {v10, v11, v0, v15}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v2

    .line 2503
    .local v2, "startResult":I
    if-eqz v2, :cond_1c4

    .line 2504
    return v2

    .line 2507
    :cond_1c4
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v3, :cond_209

    .line 2508
    if-eqz v13, :cond_1cf

    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    goto :goto_1d0

    :cond_1cf
    const/4 v5, -0x1

    :goto_1d0
    move v3, v5

    .line 2511
    .local v3, "displayId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_20a

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2512
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    if-eq v3, v5, :cond_20a

    .line 2513
    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 2514
    .local v5, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v5, :cond_20a

    .line 2515
    invoke-virtual {v5, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 2516
    .local v6, "display":Landroid/view/Display;
    if-eqz v6, :cond_20a

    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SpegVirtualDisplay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20a

    .line 2518
    const-string v1, "SPEG"

    const-string v4, "Abort feature because app launch display is changed forcibly"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2521
    const/16 v1, 0x66

    return v1

    .line 2507
    .end local v3    # "displayId":I
    .end local v5    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "display":Landroid/view/Display;
    :cond_209
    const/4 v4, -0x1

    .line 2529
    :cond_20a
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v3, :cond_217

    .line 2530
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2535
    :cond_217
    if-eqz v0, :cond_21b

    .line 2536
    const/4 v3, 0x0

    goto :goto_21f

    :cond_21b
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_21f
    move-object v8, v3

    .line 2537
    .local v8, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_229

    .line 2539
    invoke-virtual {v10, v15, v8, v9, v14}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v2

    .line 2540
    if-eqz v2, :cond_22c

    .line 2541
    return v2

    .line 2544
    :cond_229
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2549
    :cond_22c
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2550
    .local v6, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v6, :cond_259

    .line 2551
    invoke-direct {v10, v6, v14}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v2

    .line 2552
    if-eqz v2, :cond_256

    .line 2554
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_255

    const/4 v1, 0x3

    if-ne v2, v1, :cond_255

    .line 2556
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2557
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v3, v4, :cond_255

    .line 2558
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iput-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2562
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_255
    return v2

    .line 2552
    :cond_256
    move/from16 v17, v2

    goto :goto_25b

    .line 2550
    :cond_259
    move/from16 v17, v2

    .line 2567
    .end local v2    # "startResult":I
    .local v17, "startResult":I
    :goto_25b
    if-eqz v0, :cond_276

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_276

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2569
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v7

    .line 2568
    invoke-virtual {v2, v3, v5, v7}, Lcom/android/server/wm/MultiTaskingController;->interceptNewTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 2570
    return v1

    .line 2574
    :cond_276
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v1, :cond_286

    .line 2575
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v10, v1, v2, v15, v3}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2577
    :cond_286
    if-eqz v0, :cond_326

    .line 2578
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_295

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_295

    .line 2579
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_296

    :cond_295
    const/4 v1, 0x0

    .line 2580
    .local v1, "taskToAffiliate":Lcom/android/server/wm/Task;
    :goto_296
    invoke-direct {v10, v1}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .line 2581
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2582
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2581
    invoke-virtual {v2, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 2583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    const/16 v2, 0x65

    return v2

    .line 2587
    :cond_2c6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v2, :cond_2fc

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2588
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_2fc

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2fc

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_2fc

    .line 2590
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    .line 2589
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_2fc

    .line 2591
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2592
    .local v2, "tda":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2594
    .local v5, "candidate":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_2fc

    .line 2595
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2599
    .end local v2    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "candidate":Lcom/android/server/wm/ActivityStack;
    :cond_2fc
    if-eqz v12, :cond_302

    iget-boolean v2, v12, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v2, :cond_31c

    :cond_302
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_330

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2601
    const-string v3, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_330

    .line 2603
    :cond_31c
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setAliasManagedTask()V

    goto :goto_330

    .line 2607
    .end local v1    # "taskToAffiliate":Lcom/android/server/wm/Task;
    :cond_326
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_330

    .line 2608
    const-string v1, "adding to task"

    invoke-direct {v10, v15, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    goto :goto_331

    .line 2607
    :cond_330
    :goto_330
    nop

    .line 2611
    :goto_331
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v1, :cond_36c

    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_36c

    .line 2612
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const-string/jumbo v2, "reuseOrNewTask"

    invoke-virtual {v1, v2, v15}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2613
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_355

    .line 2614
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_355

    .line 2615
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    .line 2618
    :cond_355
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_36c

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_36c

    .line 2621
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2622
    iput-boolean v1, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2626
    :cond_36c
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2627
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    .line 2626
    invoke-interface {v1, v14, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2628
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3bd

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3bd

    .line 2630
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2631
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 2632
    .local v1, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v2

    .line 2634
    .local v2, "resultToUid":I
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2635
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v24

    const/16 v26, 0x1

    .line 2634
    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v25, v2

    invoke-virtual/range {v21 .. v26}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2638
    .end local v1    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "resultToUid":I
    :cond_3bd
    if-eqz v0, :cond_3d8

    .line 2639
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2640
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    .line 2639
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(III)V

    .line 2642
    :cond_3d8
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v2, 0x7535

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v5

    .line 2642
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2663
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    if-eq v1, v4, :cond_3fa

    .line 2664
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    goto :goto_3fb

    .line 2663
    :cond_3fa
    const/4 v2, 0x0

    .line 2669
    :goto_3fb
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2671
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2674
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-boolean v5, v10, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move v4, v0

    move-object/from16 v19, v6

    .end local v6    # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v19, "topStack":Lcom/android/server/wm/ActivityStack;
    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 2676
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_476

    .line 2677
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2678
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2679
    .local v1, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v2

    if-eqz v2, :cond_463

    if-eqz v1, :cond_43d

    .line 2680
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v2

    if-eqz v2, :cond_43d

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v1, :cond_43d

    goto :goto_463

    .line 2701
    :cond_43d
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v2

    if-eqz v2, :cond_457

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2702
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_457

    .line 2703
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string/jumbo v3, "startActivityInner"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2705
    :cond_457
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_475

    .line 2690
    :cond_463
    :goto_463
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2694
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2708
    .end local v1    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_475
    goto :goto_49c

    .line 2709
    :cond_476
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_49c

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2710
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_49c

    .line 2711
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2712
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_49c

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_49c

    .line 2713
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2715
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2719
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_49c
    :goto_49c
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2722
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2723
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2730
    if-eqz v12, :cond_4cf

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4cf

    const/4 v7, 0x1

    goto :goto_4d0

    :cond_4cf
    const/4 v7, 0x0

    :goto_4d0
    move v1, v7

    .line 2731
    .local v1, "fromFreeform":Z
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4dc

    const/4 v7, 0x1

    goto :goto_4dd

    :cond_4dc
    const/4 v7, 0x0

    :goto_4dd
    move v2, v7

    .line 2732
    .local v2, "isFullscreen":Z
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 2733
    .local v3, "isNonResizeable":Z
    if-eqz v1, :cond_4f7

    if-eqz v0, :cond_4f7

    if-eqz v2, :cond_4f7

    if-eqz v3, :cond_4f7

    .line 2735
    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/FreeformController;->showNotSupportMultiWindowToast(Lcom/android/server/wm/ActivityRecord;)V

    .line 2739
    .end local v1    # "fromFreeform":Z
    .end local v2    # "isFullscreen":Z
    .end local v3    # "isNonResizeable":Z
    :cond_4f7
    const/4 v1, 0x0

    return v1
.end method

.method startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 24
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    move-object v12, p0

    move-object v13, p1

    .line 743
    :try_start_2
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 744
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    .line 745
    .local v0, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    const-string/jumbo v1, "startResolvedActivity"

    iput-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 747
    iput-object v13, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 748
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    iput v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 751
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_48

    .line 754
    .end local v0    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 755
    nop

    .line 756
    return-void

    .line 754
    :catchall_48
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 755
    throw v0
.end method
